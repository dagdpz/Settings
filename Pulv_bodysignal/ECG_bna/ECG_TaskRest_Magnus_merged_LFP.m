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
%% Shamim's sessions
sessions{1}=sort([20230525, 20221118, 20230623, 20221122, 20221125, 20221206, ...
     20221222, 20221229, 20230104, 20230106, 20230112, 20230126, ...
     20230511, 20230518, 20230519, 20230524, 20230525, 20230526]);
% %% Lukas' sessions
% sessions{1}=sort([20230531, 20230601, 20230602, 20230607, 20230608, 20230609, ...
%      20230614, 20230615, 20230616, 20230621, 20230622, 20230623]);

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

%% Settings for averaging TFR and evoked LFP based on conditions
ecg_bna_cfg.conditionname{1}='Rest';
ecg_bna_cfg.condition(1).type=1;
ecg_bna_cfg.condition(1).completed=1;

ecg_bna_cfg.conditionname{2}='Task';
ecg_bna_cfg.condition(2).type=2;
ecg_bna_cfg.condition(2).completed=1;


% method to be used for shuffle predictor normalization
% can be 'zscore', 'not normalized', 'subtraction', 'division'
% 'subtraction'- difference between real and shuffled variable
% P_norm(t,f) = mean(real) - mean(shuffled)
% 'division' - P_norm(t,f) = mean(real)/mean(shuffled)
% 'zscore' - P_norm(t,f) = ( mean(real) - mean(shuffled) ) / std(shuffled)
ecg_bna_cfg.shuffle_normalization_method = 'zscore';

% method to be used for measuring the Statistical Significance of the real
% data based on the results of shuffled data.
ecg_bna_cfg.significance_method = '95Conf_intrvl';


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


ecg_bna_cfg.tfr.frequency_bands=[2 4; 4 8; 8 14; 14 30; 30 50; 70 120];
ecg_bna_cfg.tfr.n_cycles=5;
ecg_bna_cfg.smoothWin=5;


ecg_bna_cfg.tfr.method          = 'wavelet';  %% i dont think this is used


%% define events

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
    
%% Settings for averaging across sessions or sites

% how to average data across multiple sessions/sites
% 'sessions' - average the session averages (a session average is the
% average of site averages within a session)
% 'sites' - average across sites, regardless of which session they come from
% Example: lfp_tfa_cfg.compute_avg_across = 'sites'
% Example: lfp_tfa_cfg.compute_avg_across = {'sessions', 'sites'};  compute
% both averages across session averages and across site averages
ecg_bna_cfg.compute_avg_across = {'sessions', 'sites'}; 



%% Settings to detect noisy trials - irrelevant for now
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

%% for condition differenes- we are not doing those yet
ecg_bna_cfg.diff_condition = {};
ecg_bna_cfg.diff_condition(1) = {{'type_eff', {[1 0],[2 0]}}};

% colors to be used for plotting the comparison plots
ecg_bna_cfg.diff_color = {};
ecg_bna_cfg.diff_color{1} = [0, 0.5, 0.5; 0, 1, 1];

% legends to be used for plotting the comparison plots
ecg_bna_cfg.diff_legend = {};
ecg_bna_cfg.diff_legend{1} = {'Task', 'Rest'};