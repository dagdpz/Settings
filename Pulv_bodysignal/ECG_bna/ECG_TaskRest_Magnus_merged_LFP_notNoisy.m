%% Initialization

% initialize configuration structure
cfg.outNameCap = 0;
cfg.spikes_version='ECG_TaskRest_Magnus_merged'; %% this is for loading tuning table (?)
cfg.process_per_session=1;
cfg.process_population=1;
cfg.process_LFP=1;
cfg.process_spikes=0;
cfg.process_Rpeaks_inhalation_exhalation = 0;
cfg.process_ECG=0;
cfg.plot_significant=1;
cfg.save_fig_format={'pdf'};
   
%% Settings for data folders

% absolute path to the folder where the results of analysis should be stored

% cfg.monkey='Bacchus';
% info about sessions to be analysed
% should be a 1 x N struct, N = number of sessions to analyse
% the struct should contain the following fields:
%       Monkey:         name of monkey (string)
%       Date:           recording date (string of format YYYYMMDD)
%       Input_file:     Absolute path to the file containing LFP data for the session
%       'Input_ECG_combined', 'Y:\Data\Bacchus_phys_combined_monkeypsych_TDT\20191213', ...

ephys_folder=['Y:\Projects\' project '\ephys\' cfg.spikes_version filesep];
ecg_preprocess_folder='Y:\Data\BodySignals\ECG_CAP\';
monkeys={'Magnus'};

% % %% these are all the sessions
% sessions{1}=sort([20220921, 20221115, 20221118, 20221122, 20221125, 20221206, ...
%     20221222, 20221229, 20230104, 20230106, 20230112, 20230126, ...
%     20230511, 20230518, 20230519, 20230524, 20230525, 20230526, ...
%     20230531, 20230601, 20230602, 20230607, 20230608, 20230609, ...
%     20230614, 20230615, 20230616, 20230621, 20230622, 20230623]);
%% % % %% these are the sessions I want to run
% sessions{1}=sort([20230511]);
sessions{1}=sort([20221115, 20221122, 20221206, 20221222, 20221229,...
    20230104, 20230106, 20230112, 20230511, 20230518, 20230519,...
    20230524, 20230525, 20230526, 20230602, 20230607, 20230609,...
    20230614, 20230616, 20230621, 20230623]); 
% on Sep 2024 some sesssions are excluded by luba and are no longer in analysis 20220921,20221118,20221125,20230126,20230601,20230615,20230622 
cumulative_sessions=0;
for m=1:numel(monkeys)
    monkey=monkeys{m};
    for s=1:numel(sessions{m})
        cumulative_sessions=cumulative_sessions+1;
        date=num2str(sessions{m}(s));
        cfg.session_info(cumulative_sessions) = ...
            struct('Monkey',        monkey, ...
            'Date',                 date, ...
            'Input_ECG',            [ecg_preprocess_folder filesep monkey filesep date '_ecg_cap.mat'], ... %% folders have different structures... filesep date 
            'Input_ECG_preproc',    {{[ephys_folder 'by_block_' monkey '_' date '.mat']}},...
            'Input_spikes',         [ephys_folder 'population_' monkey '_' date '.mat'],...
            'Input_trials',         [ephys_folder 'trials_' monkey '_' date '.mat'],...
            'Input_LFP',            {{[ephys_folder 'sites_' monkey '_' date '*.mat']}},...
            'Input_WC',             ['Y:\Data\Sortcodes\' monkey '_phys' filesep date filesep 'WC' filesep]);
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
%cfg.analyses = {'Rpeak_evoked_ECG', 'Rpeak_evoked_onset', 'Event_trig_R2Rt'}; % , 'Rpeak_evoked_LFP', 'Rpeak_evoked_TFS'
%cfg.analyses = {'Rpeak_evoked_LFP', 'Rpeak_evoked_ECG', 'Rpeak_evoked_TFS', 'Rpeak_evoked_spike_histogram'}; % , 

% targets to be included in the analysis
% should be a cell array of strings which indicate the target names
% the target names should be same as the target field in the LFP data
% structure
% Those targets which are not in the analysed sessions will be ignored
% Example:
% 1. lfp_tfa_cfg.compare.targets = {'MIPa_R', 'MIPa_L', 'dPul_R', 'dPul_L'}; 
cfg.targets = {'dPul_R', 'dPul_L','VPL_R', 'VPL_L','MD_L','MD_R','AIP_R','AIP_L','PCC_L','PCC_R', 'PPC_L', 'PPC_R'};
cfg.combine_hemispheres = 1;
cfg.contra_ipsi_relative_to='target';

%% Settings for averaging TFR and evoked LFP based on conditions
cfg.condition(1).name='Rest';
cfg.condition(1).color=[0 0 1];
cfg.condition(1).type=1;
cfg.condition(1).completed=1;
cfg.condition(1).accepted=1;  %% works only for spikes 
cfg.condition(1).Rpeak_field = '';

cfg.condition(2).name='Task';
cfg.condition(2).color=[1 0 0];
cfg.condition(2).type=2;
cfg.condition(2).completed=1;
cfg.condition(2).accepted=1; %% works only for spikes 
cfg.condition(2).Rpeak_field = '';

%% define events - only shared 
cfg.analyse_states = {'ecg', 'R peak', -0.25, 0.25};

%% LFP settings
cfg.lfp.n_permutations  = 100; % number of shuffles required
cfg.lfp.foi             = logspace(log10(2), log10(120), 60);
cfg.lfp.timestep        = 0.01; %% in ms
cfg.lfp.frequency_bands = [2 4; 4 8; 8 14; 14 30; 30 50; 70 120];
cfg.lfp.n_cycles        = 5;
cfg.lfp.smoothWin       = 5;
cfg.lfp.IBI             = 0; % logical setting for re-writting the Rpeaks 
% based on the R2R_valid_consec
cfg.lfp.IBI_thrsh       = 0.4; % threshold of IBI for Magnus
cfg.lfp.IBI_low         = 1;
cfg.lfp.IBI_high        = 0;

% method to be used for shuffle predictor normalization
% can be 'zscore', 'not normalized', 'subtraction', 'division'
% 'subtraction'- difference between real and shuffled variable
% P_norm(t,f) = mean(real) - mean(shuffled)
% 'division' - P_norm(t,f) = mean(real)/mean(shuffled)
% 'zscore' - P_norm(t,f) = ( mean(real) - mean(shuffled) ) / std(shuffled)
cfg.lfp.normalization = 'zscore';

% method to be used for measuring the Statistical Significance of the real
% data based on the results of shuffled data.
cfg.lfp.significance_method = '95Conf_intrvl';


%% spike settings
cfg.spk.analyses={'spike_histogram','spike_phase_ECG_cycle'};

cfg.spk.compute_unit_subsets      = 0;
cfg.spk.move_files                = 0;
                
cfg.spk.compute_spike_histograms  = 0;
cfg.spk.plot_spike_histograms     = 1;
cfg.spk.compute_spike_phase       = 0;
cfg.spk.plot_spike_phase          = 0;

cfg.spk.n_permutations=1000; % number of shuffles required
cfg.spk.significance_window=[-0.25 0.25];
cfg.spk.PSTH_binwidth=0.01;
cfg.spk.kernel_type='gaussian';
cfg.spk.gaussian_kernel=0.02;
cfg.spk.N_phase_bins=64;

% unit exclusion criteria
cfg.spk.unit_exclusion.nCardiacCycles             = 600;

%% put corresponding settings in these subfields:
cfg.ecg.field=0;
cfg.cap.field=0;

%% settings for spike analysis
% for R-peak-triggered histograms
cfg.spk.histbins=0.2:0.02:0.8; % bins for RR duration histogram

cfg.spk.Fs = 2.44140625e+04; % sampling frequency of BB signal, Hz
cfg.spk.wf_times_ms = 1000 * (1/cfg.spk.Fs:1/cfg.spk.Fs:32/cfg.spk.Fs); % in ms
cfg.spk.wf_times_interp_ms = 1000 * (1/4/cfg.spk.Fs:1/4/cfg.spk.Fs:32/cfg.spk.Fs); % in ms
cfg.spk.peak_id = 10; % sample number of the trough in the spike waveform
cfg.spk.phase_bins          = linspace(0, 2*pi, cfg.spk.N_phase_bins+1);
cfg.spk.phase_bin_centers   = 2*pi/cfg.spk.N_phase_bins:2*pi/cfg.spk.N_phase_bins:2*pi;
cfg.spk.lag_list            = [-11 -7 -3 0 3 7 11];

% %% Settings to detect noisy trials - irrelevant for now
% % configuration for lfp noise rejection
% cfg.noise = [];
% % whether or not to apply noise rejection 
% % Set to 0 to accept all trials
% % Set to 1 to run the noise trial detection methods
% cfg.noise.detect = 1;
% % combination of methods to be used - future use
% % currently all methods are used together 
% cfg.noise.methods = {'amp', 'std', 'diff', 'pow'};
% % threshold for lfp raw amplitude (number of std deviations from mean)
% cfg.noise.amp_thr = 6;
% % number of consecutive samples beyond threshold to be considered for marking 
% % a noisy trial
% cfg.noise.amp_N = 10;
% % no of standard deviations of trial LFP w.r.t LFP std of all trials
% cfg.noise.std_thr = 4;
% % threshold for lfp derivative (number of std deviations from mean)
% cfg.noise.diff_thr = 6;
% % number of consecutive samples beyond threshold to be considered for marking 
% % a noisy trial
% cfg.noise.diff_N = 10;
% % threshold for lfp power in number of standard deviations from mean
% cfg.noise.pow_thr = 4;
% % whether single trials should be plotted
% cfg.noise.plottrials = 0;