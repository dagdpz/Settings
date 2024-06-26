%% Initialization

% initialize configuration structure
ecg_bna_cfg = [];
ecg_bna_cfg.outNameCap = 0; %it's out for CAP data
ecg_bna_cfg.LFP_version='Bacchus_dataset2';
ecg_bna_cfg.spikes_version='Bacchus_dataset2';
ecg_bna_cfg.process_LFP=1;
ecg_bna_cfg.process_ECG=1;
ecg_bna_cfg.process_spikes=1;
ecg_bna_cfg.plot_significant=1;
ecg_bna_cfg.save_fig_format={'pdf'};
   
%% Settings for data folders
% versioning, a unique version for the settings file and analysis results
% the results produced using this settings file would be saved under 
% the folder [lfp_tfa_cfg.results_folder, '\', date, '\ver_' lfp_tfa_cfg.version]
% eg: 'C:\Data\MIP_timefreq_analysis\LFP_timefrequency_analysis\Data\LFP_TFA_Results\20190506\ver_SN_0.2'
ecg_bna_cfg.version = version; %'Magnus_Reach_InakdPul_ECG';

%% this should not be used at this level any more
% % sorted neurons excel file, from which information about sessions and
% % individual sites can be obtained
% ecg_bna_cfg.info_filepath = 'Y:\Projects\Pulv_distractor_spatial_choice\ephys\ECG_taskRest\Bac_sorted_neurons.xls';

% dataset to be used for analysis, see entry 'Set' in the sorted neurons excel file
% only those sessions belonging to 'Set' = lfp_tfa_cfg.use_datasets will be
% used for analysis
ecg_bna_cfg.use_datasets = [5,6,7];

% absolute path to the folder where the results of analysis should be stored
ecg_bna_cfg.results_folder = ['Y:\Projects\' project];

ecg_bna_cfg.monkey='Bacchus';
% info about sessions to be analysed
% should be a 1 x N struct, N = number of sessions to analyse
% the struct should contain the following fields:
%       Monkey:         name of monkey (string)
%       Date:           recording date (string of format YYYYMMDD)
%       Input_file:     Absolute path to the file containing LFP data for the session
%       Preinj_blocks:  Blocks to be considered for pre-injection,
%       typically 0
%       Postinj_blocks: Blocks to be considered for post-injection, can be
%       integer, array of integers, 'all' or 'allbutone' (if 'all' is
%       specified, all post-injection blocks will be combined; if
%       'allbutfirst', all blocks from the second post-injection block will
%       be combined)
%   'Input_ECG_combined', 'Y:\Data\Magnus_phys_combined_monkeypsych_TDT\20191213', ...


ephys_folder=['Y:\Projects\' project '\ephys\' ecg_bna_cfg.spikes_version filesep];
ecg_preprocess_folder='Y:\Data\BodySignals\ECG';
monkeys={'Bacchus'};

sessions{1}=sort([20210720]); 
%

cumulative_sessions=0;
for m=1:numel(monkeys)
    monkey=monkeys{m};
    for s=1:numel(sessions{m})
        cumulative_sessions=cumulative_sessions+1;
        date=num2str(sessions{m}(s));
        ecg_bna_cfg.session_info(cumulative_sessions) = ...
            struct('Monkey',        monkey, ...
            'Date',           date, ...
            'Input_ECG',         [ecg_preprocess_folder filesep monkey filesep date filesep date '_ecg.mat'], ...
            'Input_ECG_preproc', {{[ephys_folder 'by_block_' monkey '_' date '.mat']}},...
            'Input_spikes', [ephys_folder 'population_' monkey '_' date '.mat'],...
            'Input_LFP', {{[ephys_folder 'sites_' monkey '_' date '*.mat']}},...
            'Input_trials', {[ephys_folder 'trials_' monkey '_' date '.mat']}, ...
            'Preinj_blocks',  0, ...
            'Postinj_blocks', 1);  %% not sure why we need two here........
    end
end

% what kind of analyses should be done on LFP
% should be a cell array of strings which indicate which kind of analyses
% should be performed on LFP
% Currently supported analyses are 'tfs', 'evoked', 'pow', and 'sync'
%       'tfs'       - LFP time frequency spectrogram average for given conditions and time windows
%       'evoked'    - LFP evoked response average for given conditions and time windows
%       'pow'       - LFP power spectrum average for given conditions and epochs
%       'sync'      - LFP-LFP phase synchronization measure for given conditions and
%           time windows
%ecg_bna_cfg.analyses = {'Rpeak_evoked_ECG', 'Rpeak_evoked_onset', 'Event_trig_R2Rt'}; % , 'Rpeak_evoked_LFP', 'Rpeak_evoked_TFS'
ecg_bna_cfg.analyses = {'Rpeak_evoked_LFP', 'Rpeak_evoked_ECG', 'Rpeak_evoked_TFS', 'Rpeak_evoked_spike_histogram'}; % , 

% targets to be included in the analysis
% should be a cell array of strings which indicate the target names
% the target names should be same as the target field in the LFP data
% structure
% Those targets which are not in the analysed sessions will be ignored
% Example:
% 1. lfp_tfa_cfg.compare.targets = {'MIPa_R', 'MIPa_L', 'dPul_R', 'dPul_L'}; 
ecg_bna_cfg.compare.targets = {'dPul_R', 'dPul_L','VPL_R', 'VPL_L','mdT_L','mdT_R','AIP_R','AIP_L','PCC_L','PCC_R'};
% reference hemisphere for hand-space labelling
% can be 'R' (for right hemisphere) or 'L' (for left hemisphere)
% ref_hemisphere is used for labelling contra and ipsi hand and space
% set ref_hemisphere to lesioned hemishere for ipsi lesional and contra
% lesional labeling
% set ref_hemisphere to recorded hemishere for ipsi lateral and contra
% lateral labeling
ecg_bna_cfg.ref_hemisphere = 'R';   %%% NEEDS TO BE FIXED

% maximum no:of sites to analyse from each session
% If maxsites < total number of sites in a session, only maxsite number of
% sites will be analysed
% Examples:
% 1. lfp_tfa_cfg.maxsites = 2; only first two sites will be analysed from 
% each session
% 1. lfp_tfa_cfg.maxsites = inf; all the sites will be analysed from 
% each session
ecg_bna_cfg.maxsites = inf; % inf = analyse all sites

% random seed for random number generator for reproducibility
% set to a non negative integer below 2^32
ecg_bna_cfg.random_seed = rng;

% whether to plot ECG data for individual trials
% Set to 1 for plotting individual trials, zero otherwise
ecg_bna_cfg.plottrials = 0;

%% Settings for averaging TFR and evoked LFP based on conditions

% trial types to be included in the analysis
% should be a vector of integers specifying the types
% entries should be same as one of the type specified in the 'type' field
% in the input LFP data
% Example: 
% 1. lfp_tfa_cfg.compare.types = [4, 2]; % analyse trials with type = 4
% and type = 2 separately
% 2. lfp_tfa_cfg.compare.types = nan; Ignore trial type (trials with any
% type value are combined)
% [task rest]
ecg_bna_cfg.compare.types = [2, 1];

% effectors to be included in the analysis
% should be a vector of integers specifying the effectors
% entries should be same as one of the type specified in the 'effector' field
% in the input LFP data
% Example: 
% 1. lfp_tfa_cfg.compare.types = [4, 6]; % analyse trials with effector = 4
% and effector = 6 separately
% 2. lfp_tfa_cfg.compare.types = nan; Ignore effector (trials with any
% effector value are combined)
ecg_bna_cfg.compare.effectors = [0];

% which trials are to be included in the analysis based on success
% Examples:
% 1. lfp_tfa_cfg.compare.success = 0; % analyse only successful trials
% 2. lfp_tfa_cfg.compare.success = 1; % analyse only unsuccessful trials
% 3. lfp_tfa_cfg.compare.success = [0, 1]; % analyse successful and 
% unsuccessful trials separately
% 3. lfp_tfa_cfg.compare.success = nan; % ignore success (both successful
% and unsuccessful trials are combined)
ecg_bna_cfg.compare.success = 1;

% which type of choice trials are to be included in the analysis
% Examples:
% 1. lfp_tfa_cfg.compare.choice_trials = 0; % analyse only instructed trials
% 2. lfp_tfa_cfg.compare.choice_trials = 1; % analyse only choice trials
% 3. lfp_tfa_cfg.compare.choice_trials = [0, 1]; % analyse choice and 
% instructed trials separately
% 3. lfp_tfa_cfg.compare.choice_trials = nan; % ignore choice (both choice
% and instructed trials are combined)
ecg_bna_cfg.compare.choice_trials = [0, 1]; 

% reach hands to be included for analysis
% should be 'any' or a cell array that contain only values 'R', 'L'
% Examples:
% 1. lfp_tfa_cfg.compare.reach_hands = {'L'}; include only those trials in
% which reach hand is left
% 2. lfp_tfa_cfg.compare.reach_hands = {'R'}; include only those trials in
% which reach hand is right
% 3. lfp_tfa_cfg.compare.reach_hands = {'L', 'R'}; analyse the trials in
% which reach hand is left and right separately
% 4. lfp_tfa_cfg.compare.reach_hands = 'any'; ignore hand label (trial with
% any hand label is combined)
ecg_bna_cfg.compare.reach_hands = {'any'};

% reach space to be included for analysis
% should be 'any' or a cell array that contain only values 'R', 'L'
% Examples:
% 1. lfp_tfa_cfg.compare.reach_spaces = {'L'}; include only those trials in
% which acquired target is on left
% 2. lfp_tfa_cfg.compare.reach_hands = {'R'}; include only those trials in
% which acquired target is on right
% 3. lfp_tfa_cfg.compare.reach_hands = {'L', 'R'}; analyse the trials in
% which acquired target is on left and on right separately
% 4. lfp_tfa_cfg.compare.reach_hands = 'any'; ignore space label (trial with
% any acquired target position is combined)
ecg_bna_cfg.compare.reach_spaces = {'any'}; 

% hand space combinations to be excluded from analysis
% should be a cell array with each element containing the hand and space
% label to be excluded
% if no hand-space conditions are to be excluded, leave empty
% Example:
% 1. lfp_tfa_cfg.compare.exclude_handspace = {'LR', 'RL'};
% exclude left hand right space and right hand left space trials
% 2. lfp_tfa_cfg.compare.exclude_handspace = {'LL', 'RR'};
% exclude left hand left space and right hand right space trials
% 3. lfp_tfa_cfg.compare.exclude_handspace = {'RL', 'RR'};
% exclude right hand left space and right hand right space trials
ecg_bna_cfg.compare.exclude_handspace = {};

% perturbations to be included in the analysis
%  1) priotrity for manual definition in the; 2) based on ECG ses structure
% setting file and finally it will take the pertu.variable from Luka's
% preprocessing files
% should be inf, 0, 1 or [0, 1]
% Examples:
% lfp_tfa_cfg.compare.perturbations = 0; consider only those trials with
% perturbation value = lfp_tfa_cfg.compare.perturbation_groups(0)
% lfp_tfa_cfg.compare.perturbations = 1; consider only those trials with
% perturbation value = lfp_tfa_cfg.compare.perturbation_groups(1)
% lfp_tfa_cfg.compare.perturbations = [0, 1]; consider the trials with
% perturbation value = lfp_tfa_cfg.compare.perturbation_groups(0) or 
% lfp_tfa_cfg.compare.perturbation_groups(1) separately
% lfp_tfa_cfg.compare.perturbations = nan; combine the trials with
% any perturbation value 
ecg_bna_cfg.compare.perturbations = NaN; 

% differences in conditions to be analysed
% add new entries for further difference calculations
% each entry should be a cell array of type 1xN cell where N should be even. 
% The entries should be made as a string representing the condition 
% (eg: 'perturbation', 'choice') followed by a cell array containing 
% the two values of the given condition to be compared. 
% Examples:
% lfp_tfa_cfg.diff_condition(1) = {{'perturbation', {0, 1}}};
% This computes the difference between trials with perturbation = 1 (post-injection) and perturbation = 0 (pre-injection) when other conditions (eg. task type, choice) remains the same. 
% lfp_tfa_cfg.diff_condition(2) = {{'choice', {0, 1}}};
% This computes the difference between choice = 1 and choice = 0 (instructed) trials when other conditions (eg. task type, perturbation) remains the same. 
% lfp_tfa_cfg.diff_condition(3) = {{'type_eff', {[4 4], [4 6]}}};
% This computes the difference between given task types trials when other conditions (eg. task type, perturbation) remains the same. 
% lfp_tfa_cfg.diff_condition(4) = {{'perturbation', {0, 1}, ...
%    'choice', {0, 1}}};
% Compute difference between difference between post and pre-injection trials of choice trials and that of instructed trials     

ecg_bna_cfg.diff_condition = {};
ecg_bna_cfg.diff_condition(1) = {{'type_eff', {[1 0],[2 0]}}};

% colors to be used for plotting the comparison plots
ecg_bna_cfg.diff_color = {};
ecg_bna_cfg.diff_color{1} = [0, 0.5, 0.5; 0, 1, 1];

% legends to be used for plotting the comparison plots
ecg_bna_cfg.diff_legend = {};
ecg_bna_cfg.diff_legend{1} = {'Task', 'Rest'};

%% Time information

% Specify events which mark trial start and end
ecg_bna_cfg.trialinfo = struct();

% ID of the reference state which indicates start of a trial
% Example:
% lfp_tfa_cfg.trialinfo.start_state = lfp_tfa_states.FIX_ACQ; reference for 
% trial start is the onset of fixation acquisition
ecg_bna_cfg.trialinfo.start_state = lfp_tfa_states.INI_TRI; %% what dies this do again?

% offset to be considered from the onset of
% trial start reference state for calculating the trial start time
% i.e., trial start time = onset of trial start state + start offset
% Example:
% 1. lfp_tfa_cfg.trialinfo.ref_tstart = -0.5;
% trial start time = onset time of lfp_tfa_cfg.trialinfo.start_state - 0.5;
% 1. lfp_tfa_cfg.trialinfo.ref_tstart = 0.5;
% trial start time = onset time of lfp_tfa_cfg.trialinfo.start_state + 0.5;
ecg_bna_cfg.trialinfo.ref_tstart = -0;

% ID of the reference state which indicates end of a trial
% Example:
% lfp_tfa_cfg.trialinfo.end_state = lfp_tfa_states.TAR_HOL; reference for 
% trial start is the onset of target hold
ecg_bna_cfg.trialinfo.end_state = lfp_tfa_states.TRI_END;

% offset to be considered from the onset of
% trial end reference state for calculating the trial end time
% i.e., trial end time = onset of trial end state + end offset
% Example:
% 1. lfp_tfa_cfg.trialinfo.ref_tend = 0.5;
% trial start time = onset time of lfp_tfa_cfg.trialinfo.end_state + 0.5;
% 1. lfp_tfa_cfg.trialinfo.ref_tend = -0.5;
% trial start time = onset time of lfp_tfa_cfg.trialinfo.end_state - 0.5;
ecg_bna_cfg.trialinfo.ref_tend = 0;


%% Settings for ft_freqanalysis in FieldTrip
% Configuration for calculating LFP time frequency spectrogram using
% ft_freqanalysis function of the fieldtrip toolbox

% method for calculating the LFP power spectra
% can be 'mtmfft', 'mtmconvol', 'wavelet'
% Example:
% 1. lfp_tfa_cfg.tfr.method = 'wavelet'; % implements wavelet time frequency
%                        transformation (using Morlet wavelets) based on
%                        multiplication in the frequency domain.
% 2. lfp_tfa_cfg.tfr.method = 'mtmfft', analyses an entire spectrum for the entire data
%                        length, implements multitaper frequency transformation.
% see http://www.fieldtriptoolbox.org/reference/ft_freqanalysis/ for more
% details
ecg_bna_cfg.tfr.method          = 'wavelet';  


ecg_bna_cfg.tfr.frequency_bands=[2 4; 4 8; 8 14; 14 30; 30 50; 70 150];
ecg_bna_cfg.tfr.n_cycles=5;

% frequencies of interest (in Hz)
% Example: 
% 1. lfp_tfa_cfg.tfr.foi = logspace(log10(2), log10(120), 60); 60 logspaced
% frequencies from 2Hz to 120 Hz
ecg_bna_cfg.tfr.foi             = logspace(log10(2), log10(120), 60);

% number of lfp samples to step for the sliding time window
% Example:
% lfp_tfa_cfg.tfr.timestep  = 25; 
% the sliding time window steps by an amount equal to 25 lfp samples. 
ecg_bna_cfg.tfr.timestep        = 25;

% depending on the method chosen, other configurations vary

% For method = 'wavelet', Ignored for other methods
% width of the wavelets in number of cycles
% Making the value smaller will increase the temporal resolution at the expense of frequency resolution and vice versa
% Wavelet duration = width / F / pi (F = frequency), wavelet duration
% decreases with frequency
% for width = 6, frequency F = 30 Hz, wavelet duration = 6/30/pi = 0.0637 s
% Example: 
% 1. lfp_tfa_cfg.tfr.width = 6; % wavelet of width 6 cycles 
ecg_bna_cfg.tfr.width           = 6; 

% For method = 'mtmfft' or 'mtmconvol', Ignored for method = 'wavelet'

% taper (single or multiple) to be used 
% can be 'dpss', 'hanning' or many others
% 'hanning' - conventional single taper
% 'dpss' - multiple tapers based on discrete prolate spheroidal sequences 
% (DPSS), also known as the Slepian sequence
ecg_bna_cfg.tfr.taper           = [];

% the width of frequency smoothing in Hz (fw)
% Note that 4 Hz smoothing means plus-minus 4 Hz, i.e. a 8 Hz smoothing box.
% should be a vector of size 1 x numfoi, Leave empty for method = 'wavelet'
% Example: 
% 1. lfp_tfa_cfg.tfr.tapsmofrq  = 0.4 *cfg.foi; 
%the smoothing will increase with frequency.
ecg_bna_cfg.tfr.tapsmofrq       = [];

% length of the sliding time-window in seconds (= tw)
% should be vector of length 1 x numfoi
% Following relation must hold: 
% K = 2twfw-1, where K is required to be larger than 0
% K is the number of tapers applied
% Example:
% lfp_tfa_cfg.tfr.t_ftimwin  = 5./cfg.foi; % 5 cycles per window
% window length decreases with frequency
ecg_bna_cfg.tfr.t_ftimwin       = [];

%% Settings to detect noisy trials
% configuration for lfp noise rejection
ecg_bna_cfg.noise = [];
% whether or not to apply noise rejection 
% Set to 0 to accept all trials
% Set to 1 to run the noise trial detection methods
ecg_bna_cfg.noise.detect = 1;
% combination of methods to be used - future use
% currently all methods are used together 
ecg_bna_cfg.noise.methods = {'amp', 'std', 'diff', 'pow'};
% threshold for lfp raw amplitude (number of std deviations from mean)
ecg_bna_cfg.noise.amp_thr = 6;
% number of consecutive samples beyond threshold to be considered for marking 
% a noisy trial
ecg_bna_cfg.noise.amp_N = 10;
% no of standard deviations of trial LFP w.r.t LFP std of all trials
ecg_bna_cfg.noise.std_thr = 4;
% threshold for lfp derivative (number of std deviations from mean)
ecg_bna_cfg.noise.diff_thr = 6;
% number of consecutive samples beyond threshold to be considered for marking 
% a noisy trial
ecg_bna_cfg.noise.diff_N = 10;
% threshold for lfp power in number of standard deviations from mean
ecg_bna_cfg.noise.pow_thr = 4;
% whether single trials should be plotted
ecg_bna_cfg.noise.plottrials = 0;

%% Settings to compute baseline power

% ID of the reference state around which baseline should be considered, see
% lfp_tfa_global_define_states
% Examples
% 1. lfp_tfa_cfg.baseline_ref_state = lfp_tfa_states.CUE_ON; considers cue
% onset as the reference state for baseline period
% 2. lfp_tfa_cfg.baseline_ref_state = ''; consider the whole trial period
% for baseline
ecg_bna_cfg.baseline_ref_state = ''; 

% period of interest relative to onset of baseline_ref_state for baseline power calculation, 
% Examples: 
% 1. lfp_tfa_cfg.baseline_ref_period = [-0.5 -0.1]; considers the time 
% period -0.5 s to -0.1 s from the onset of baseline_ref_state (i.e., if 
% lfp_tfa_cfg.baseline_ref_state = lfp_tfa_states.CUE_ON, time period from 
% -0.5 s to -0.1s from the cue onset is considered as baseline period)
% 2. lfp_tfa_cfg.baseline_ref_period = 'trial'; to consider the complete trial period
% for baseline power calculation

if isempty(ecg_bna_cfg.baseline_ref_state)
	ecg_bna_cfg.baseline_ref_period = 'trial';
else
	ecg_bna_cfg.baseline_ref_period = []; % SET LIMITS OF baseline_ref_period here
end

% which perturbation to be considered for baseline power calculation
% set to 0 for considering only pre-injection blocks
% in case trials from a single perturbation block is analysed, the same
% block will be used for baseline calculation
% Examples: 
% 1. lfp_tfa_cfg.baseline_perturbation = 0; only blocks of
% (pre-injection) is used for baseline power calculation
% 2. lfp_tfa_cfg.baseline_perturbation = inf; combines all perturbation
% blocks, but is not recommended
% 3. lfp_tfa_cfg.baseline_perturbation = 1; only post-injection blocks are
% used for baseline calculation
if length(ecg_bna_cfg.compare.perturbations) == 1
    ecg_bna_cfg.baseline_perturbation = ecg_bna_cfg.compare.perturbations;
else
    ecg_bna_cfg.baseline_perturbation = 0; % set the perturbation block(s) to be used for computing baseline
end

% whether to consider choice (1) or instructed trials (0) in baseline power
% calculation 
% in case, only either choice/instructed is being analysed, the trials from
% the analysed choice is used for baseline
% Examples:
% 1. lfp_tfa_cfg.baseline_use_choice_trial = 0; % consider only instructed trials
% 2. lfp_tfa_cfg.baseline_use_choice_trial = 1; % consider only choice trials
% 3. lfp_tfa_cfg.baseline_use_choice_trial = inf; % consider both choice and instructed trials
% 3. lfp_tfa_cfg.baseline_use_choice_trial = [0, 1]; % consider both
% instructed and choice trials (not implemented - for future use)
if length(ecg_bna_cfg.compare.choice_trials) == 1
    ecg_bna_cfg.baseline_use_choice_trial = ecg_bna_cfg.compare.choice_trials;
else
    % set choice(1) and/or instructed(0) to be used for computing baseline
    ecg_bna_cfg.baseline_use_choice_trial = 0; 
end
    ecg_bna_cfg.baseline_use_choice_trial = ecg_bna_cfg.compare.choice_trials;

% which task type to be used in baseline power calculation 
% in case, only one task type is being analysed, the trials from
% the analysed task type is used for baseline
% Examples:
% 1. lfp_tfa_cfg.baseline_use_type = 4; % consider only trials of type=4
% 2. lfp_tfa_cfg.baseline_use_type = [4, 1]; % consider trials of
% both type=4 and type=1(not implemented - for future use)
% 3. lfp_tfa_cfg.baseline_use_type = inf; % consider trials of
% any type 
if length(ecg_bna_cfg.compare.types) == 1
    ecg_bna_cfg.baseline_use_type = ecg_bna_cfg.compare.types;
else
    % set task type(s) to be used for computing baseline
    ecg_bna_cfg.baseline_use_type = 1; 
end
    ecg_bna_cfg.baseline_use_type = ecg_bna_cfg.compare.types;

% which effector to be used in baseline power calculation 
% in case, only one efffector is being analysed, the trials from
% the analysed effector is used for baseline
% Examples:
% 1. lfp_tfa_cfg.baseline_use_effector = 0; % consider only trials with
% effector = 0
% 2. lfp_tfa_cfg.baseline_use_effector = inf; % consider trials with any
% effector value
% 3. lfp_tfa_cfg.baseline_use_effector = [0, 6]; % consider only trials with
% effector = 0 and effector = 6 (not implemented - for future use)
if length(ecg_bna_cfg.compare.effectors) == 1
    ecg_bna_cfg.baseline_use_effector = ecg_bna_cfg.compare.effectors;
else
    % set effector(s) to be used for computing baseline
    ecg_bna_cfg.baseline_use_effector = 0; 
end

% define the time windows to analyse for LFP TFR and evoked LFP response
% Must be a Nx4 cell array, N = number of windows to analyse
% Each row corresponds to one state and contain following elements
% 1. Identifier of state around which the window is referenced, 
% see lfp_tfa_global_states, Example:  lfp_tfa_states.CUE_ON
% 2. Name of the reference state (window) - string (used for labeling 
% purposes in plots) eg: 'Cue'
% 3. Start time offset - offset in seconds from reference state onset for 
% the start of time window
% start time = Reference state onset time + Start time offset
% 4. End time offset - offset in seconds from ref. state onset for end of
% time window
% end time = Ref. state onset time + end time offset
% 
% Example row: 
%   lfp_tfa_states.CUE_ON,     'Cue',    -1.0 ,    0.5
%   lfp_tfa_cfg.analyse_states = {'combined', [lfp_tfa_states.INI_TRI, ...
%         lfp_tfa_states.TRI_END], 0.8, 100, 'random'};
% lfp_tfa_cfg.analyse_states = {lfp_tfa_states.CUE_ON,    'Cue',      -0.5,   0.9;...
%                              lfp_tfa_states.REA_INI,    'Reach',    -0.3,   0.5};
ecg_bna_cfg.analyse_states = {'ecg', 'R peak', -0.5, 0.5}; %{'CAP', 'CAP peak', -2.0, 2.0};

                ecg_bna_cfg.contra_ipsi_relative_to='target';
% whether to perform a permutation test for evoked LFP and evoked ECG with
% randomly shuffled triggers
ecg_bna_cfg.random_permute_triggers = true;

% number of shuffles required
ecg_bna_cfg.n_shuffles = [];
if ecg_bna_cfg.random_permute_triggers
    %ecg_bna_cfg.n_shuffles = 100;
    ecg_bna_cfg.n_permutations=300; %300;
end

%define the time windows to analyse event triggered R2Rt
% Must be a Nx4 cell array, N = number of windows to analyse
% Each row corresponds to one epoch and contain following elements
% 1. Identifier of state to which the epoch is referred, see lfp_tfa_global_states, Example:  lfp_tfa_states.CUE_ON
% 2. Name of the window - string (used for labeling purposes in plots) eg: 'FHol'
% 3. Start time offset - offset in seconds from reference state onset for 
% the window start
% Window start time = Reference state onset time + Start time offset
% 4. End time offset - offset in seconds from ref. state onset for window
% end
% Window end time = Ref. state onset time + end time offset
% Example row: 
%   lfp_tfa_states.REA_INI,   'Reach ini',    -0.5,   0.5                          
ecg_bna_cfg.event_triggers = {lfp_tfa_states.TAR_ACQ,   'Cue on',    -0.5,   0.5;...
                              lfp_tfa_states.SAC_INI,   'Sac ini',   -0.5,   0.5; ...
                              lfp_tfa_states.REWARD,    'Reward',    -0.5,   0.5};
                          
% options for normalizing evoked ECG R2R interval 
% Whether or not to normalize the R2R interval for plotting
% Set to true for normalizing, otherwise set to false
% If set to true, the R2R interval for each trial is normalized by the mean
% R2R interval for that trial period, see lfp_tfa_cfg.trialinfo for the
% definition of trial period
ecg_bna_cfg.normalize_R2Rt = true;
                          
ecg_bna_cfg.analyse_Rpeak_states = {lfp_tfa_states.TAR_ACQ,   'Cue on', -0.25, 0.25, 'afterRpeak'; ...
                                    lfp_tfa_states.SAC_INI,   'Sac ini', -0.25, 0.25, 'afterRpeak'; ...
                                    lfp_tfa_states.REWARD,    'Reward', -0.25, 0.25, 'afterRpeak'};
                                
%                                 
% lfp_tfa_states.INI_TRI       = 1; % initialize trial
% lfp_tfa_states.FIX_ACQ       = 2; % fixation acquisition
% lfp_tfa_states.FIX_HOL       = 3; % fixation hold
% lfp_tfa_states.TAR_ACQ       = 4; % target acquisition
% lfp_tfa_states.TAR_HOL       = 5; % target hold
% lfp_tfa_states.CUE_ON        = 6; % cue on
% lfp_tfa_states.MEM_PER       = 7; % memory period
% lfp_tfa_states.DEL_PER       = 8; % delay period
% lfp_tfa_states.TAR_ACQ_INV   = 9; % target acquisition invisible
% lfp_tfa_states.TAR_HOL_INV   = 10; % target hold invisible
% lfp_tfa_states.MAT_ACQ       = 11; % target acquisition in sample to match
% lfp_tfa_states.MAT_HOL       = 12; % target acquisition in sample to match
% lfp_tfa_states.MAT_ACQ_MSK   = 13; % target acquisition in sample to match
% lfp_tfa_states.MAT_HOL_MSK   = 14; % target acquisition in sample to match
% lfp_tfa_states.SEN_RET       = 15; % return to sensors for poffenberger
% lfp_tfa_states.ABORT         = 19;
% lfp_tfa_states.SUCCESS       = 20;
% lfp_tfa_states.REWARD        = 21;
% lfp_tfa_states.ITI           = 50;
% lfp_tfa_states.SAC_INI       = 60; % saccade start
% lfp_tfa_states.SAC_END       = 61;
% lfp_tfa_states.REA_INI       = 62; %reach start
% lfp_tfa_states.REA_END       = 63;
% lfp_tfa_states.TRI_END       = 90;
% lfp_tfa_states.ITI_END       = 98;
% lfp_tfa_states.CLOSE         = 99;

% minimum number of trials per condition to be satisfied to consider a site
% for averaging, if for a site, for any condition, the  number of valid 
% (non-noisy) trials is less than mintrials_percondition, the site is not considered for averaging
% Set lfp_tfa_cfg.mintrials_percondition = 1 to consider a site if atleast
% one valid trial is obtained (keep minimum value of 1)
% Example:
% consider those sites with atleast 5 trials for each condition
% lfp_tfa_cfg.mintrials_percondition = 5; 
% By condition, we mean a combination of choice/instr, pre/post-injection, type and effector, hand-space
 ecg_bna_cfg.mintrials_percondition = 0;

% method to be used for baseline normalization
% can be 'zscore', 'relchange', 'subtraction', 'division'
% 'zscore' - computes Z-score for each time freq bin
% Z(t,f) = (P(t, f) - mu_P(f)) / (sigma_P(f))
% 'relchange' - relative power change w.r.t. the baseline power
% P_norm(t,f) = (P(t, f) - mu_P(f)) / (mu_P(f))
% 'subtraction' - absolute increase in power w.r.t. the baseline
% P_norm(t,f) = (P(t, f) - mu_P(f))
% 'division' - relative increase in power w.r.t. the baseline
% P_norm(t,f) = (P(t, f)) / (mu_P(f))
% Example:
% lfp_tfa_cfg.baseline_method = 'relchange';
ecg_bna_cfg.baseline_method = 'none';

% method to be used for shuffle predictor normalization
% can be 'zscore', 'not normalized', 'subtraction', 'division'
% 'subtraction'- difference between real and shuffled variable
% P_norm(t,f) = mean(real) - mean(shuffled)
% 'division' - P_norm(t,f) = mean(real)/mean(shuffled)
% 'zscore' - P_norm(t,f) = ( mean(real) - mean(shuffled) ) / std(shuffled)
ecg_bna_cfg.shuffle_normalization_method = 'subtraction';

% method to be used for measuring the Statistical Significance of the real
% data based on the results of shuffled data.
ecg_bna_cfg.significance_method = '95Conf_intrvl';


% flag to indicate if LFP TFR average should be computed - for future use
% Set to 0 if LFP TFR average should not be computed, else set to 1
% lfp_tfa_cfg.compute_tfr = 1;

% flag to indicate if LFP evoked response average should be computed - for future use
% Set to 0 if LFP evoked response average should not be computed, else set to 1
% lfp_tfa_cfg.compute_evoked = 1;

% flag to indicate if LFP power spectrum average should be computed - for future use
% Set to 0 if LFP power spectrum average should not be computed, else set to 1
% lfp_tfa_cfg.compute_pow = 1;

    
%% Settings for averaging across sessions or sites

% how to average data across multiple sessions/sites
% 'sessions' - average the session averages (a session average is the
% average of site averages within a session)
% 'sites' - average across sites, regardless of which session they come from
% Example: lfp_tfa_cfg.compute_avg_across = 'sites'
% Example: lfp_tfa_cfg.compute_avg_across = {'sessions', 'sites'};  compute
% both averages across session averages and across site averages
ecg_bna_cfg.compute_avg_across = {'sites'}; 