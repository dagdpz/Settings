%% Initialization

% initialize configuration structure
ecg_bna_cfg = [];
ecg_bna_cfg.outNameCap = 0;
ecg_bna_cfg.LFP_version='ECG_TaskRest_Magnus_merged_LFP';%% this is for saving (everything?)
ecg_bna_cfg.spikes_version='ECG_TaskRest_Magnus_merged'; %% this is for loading tuning table (?)
ecg_bna_cfg.process_LFP=1;
ecg_bna_cfg.process_ECG=0;
ecg_bna_cfg.process_spikes=0;
ecg_bna_cfg.process_Rpeaks_inhalation_exhalation = 0;
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
ecg_bna_cfg.use_datasets = [6 7 8];

% absolute path to the folder where the results of analysis should be stored
ecg_bna_cfg.results_folder = ['Y:\Projects\' project];

ecg_bna_cfg.monkey='Magnus';
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

ephys_version='ECG_TaskRest_Magnus_merged';
ephys_folder=['Y:\Projects\' project '\ephys\' ephys_version filesep];
%ecg_preprocess_folder='Y:\Data\BodySignals\ECG_CAP\';
ecg_preprocess_folder='Y:\Data\BodySignals\ECG\';
monkeys={'Magnus'};
sessions{1}=sort([20230525]);% finished for , , 20221118, 20230623, 20221122, 20221125, 20221206, ...
%     20221222, 20221229, 20230104, 20230106, 20230112, 20230126, ...
%     20230511, 20230518, 20230519, 20230524, 20230525, 20230526, ...
%     20230531, 20230601, 20230602, 20230607, 20230608, 20230609, ...
%     20230614, 20230615, 20230616, 20230621, 20230622, 20230623

     %       'Input_ECG',         [ecg_preprocess_folder filesep monkey filesep date '_ecg_cap.mat'], ...
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
            'Input_trials', [ephys_folder 'trials_' monkey '_' date '.mat'],...
            'Input_LFP', {{[ephys_folder 'sites_' monkey '_' date '*.mat']}},...
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

% %%%%%% 
ecg_bna_cfg.contra_ipsi_relative_to='target';
% % % whether to perform a permutation test for evoked LFP and evoked ECG with
% % % randomly shuffled triggers
ecg_bna_cfg.random_permute_triggers = true;

% PSTH and plotting parameters

% % reference hemisphere for hand-space labelling
% % can be 'R' (for right hemisphere) or 'L' (for left hemisphere)
% % ref_hemisphere is used for labelling contra and ipsi hand and space
% % set ref_hemisphere to lesioned hemishere for ipsi lesional and contra
% % lesional labeling
% % set ref_hemisphere to recorded hemishere for ipsi lateral and contra
% % lateral labeling
% ecg_bna_cfg.ref_hemisphere = 'R';   %%% NEEDS TO BE FIXED
% 
% % maximum no:of sites to analyse from each session
% % If maxsites < total number of sites in a session, only maxsite number of
% % sites will be analysed
% % Examples:
% % 1. lfp_tfa_cfg.maxsites = 2; only first two sites will be analysed from 
% % each session
% % 1. lfp_tfa_cfg.maxsites = inf; all the sites will be analysed from 
% % each session
% ecg_bna_cfg.maxsites = inf; % inf = analyse all sites
% 
% % random seed for random number generator for reproducibility
% % set to a non negative integer below 2^32
% ecg_bna_cfg.random_seed = rng;
% 
% % whether to plot ECG data for individual trials
% % Set to 1 for plotting individual trials, zero otherwise
% ecg_bna_cfg.plottrials = 0;

%% Settings for averaging TFR and evoked LFP based on conditions
ecg_bna_cfg.conditionname{1}='Rest';
ecg_bna_cfg.condition(1).type=1;
%ecg_bna_cfg.condition(1).success=1;
ecg_bna_cfg.condition(1).completed=1;

ecg_bna_cfg.conditionname{2}='Task';
ecg_bna_cfg.condition(2).type=2;
%ecg_bna_cfg.condition(2).success=1;
ecg_bna_cfg.condition(2).completed=1;


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

ecg_bna_cfg.tfr.method          = 'wavelet';  

% frequencies of interest (in Hz)
% Example: 
% 1. lfp_tfa_cfg.tfr.foi = logspace(log10(2), log10(120), 60); 60 logspaced
% frequencies from 2Hz to 120 Hz
ecg_bna_cfg.tfr.foi             = logspace(log10(2), log10(120), 60);

% number of lfp samples to step for the sliding time window
% Example:
% lfp_tfa_cfg.tfr.timestep  = 25; 
% the sliding time window steps by an amount equal to 25 lfp samples. 
ecg_bna_cfg.tfr.timestep        = 0.01; 


ecg_bna_cfg.tfr.frequency_bands=[2 4; 4 8; 8 14; 14 30; 30 50; 70 150];
ecg_bna_cfg.tfr.n_cycles=5;
ecg_bna_cfg.smoothWin=3;

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
% ecg_bna_cfg.baseline_ref_state = ''; 

% period of interest relative to onset of baseline_ref_state for baseline power calculation, 
% Examples: 
% 1. lfp_tfa_cfg.baseline_ref_period = [-0.5 -0.1]; considers the time 
% period -0.5 s to -0.1 s from the onset of baseline_ref_state (i.e., if 
% lfp_tfa_cfg.baseline_ref_state = lfp_tfa_states.CUE_ON, time period from 
% -0.5 s to -0.1s from the cue onset is considered as baseline period)
% 2. lfp_tfa_cfg.baseline_ref_period = 'trial'; to consider the complete trial period
% for baseline power calculation
% 
% if isempty(ecg_bna_cfg.baseline_ref_state)
% 	ecg_bna_cfg.baseline_ref_period = 'trial';
% else
% 	ecg_bna_cfg.baseline_ref_period = []; % SET LIMITS OF baseline_ref_period here
% end

% Example row: 
%   lfp_tfa_states.CUE_ON,     'Cue',    -1.0 ,    0.5
%   lfp_tfa_cfg.analyse_states = {'combined', [lfp_tfa_states.INI_TRI, ...
%         lfp_tfa_states.TRI_END], 0.8, 100, 'random'};
% lfp_tfa_cfg.analyse_states = {lfp_tfa_states.CUE_ON,    'Cue',      -0.5,   0.9;...
%                              lfp_tfa_states.REA_INI,    'Reach',    -0.3,   0.5};
%ecg_bna_cfg.analyse_states = {'ecg', 'ECG peak', -0.25, 0.25};
ecg_bna_cfg.analyse_states = {'ecg', 'ECG peak', -0.5, 0.5};


ecg_bna_cfg.n_permutations=100; % number of shuffles required
ecg_bna_cfg.significance_window=[-0.25 0.25];
ecg_bna_cfg.PSTH_binwidth=0.01;
ecg_bna_cfg.kernel_type='gaussian';
ecg_bna_cfg.gaussian_kernel=0.02;

% unit exclusion criteria
ecg_bna_cfg.unit_exclusion.FR_thresholds              = [2 Inf]; % from 2 on
ecg_bna_cfg.unit_exclusion.nCardiacCycles             = 600;
ecg_bna_cfg.unit_exclusion.SNR_thresholds             = [4 26];
ecg_bna_cfg.unit_exclusion.FR_stability_thresholds    = [0.1 70];

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
                              lfp_tfa_states.SAC_INI,   'Sac ini',      -0.5,   0.5; ...
                              lfp_tfa_states.REWARD,    'Reward',      -0.5,   0.5};
                          
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
% ecg_bna_cfg.mintrials_percondition = 0;

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
%ecg_bna_cfg.baseline_method = 'none';


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
ecg_bna_cfg.compute_avg_across = {'sessions', 'sites'}; 