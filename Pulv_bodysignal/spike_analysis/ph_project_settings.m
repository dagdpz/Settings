%% computation settings
%keys.cal.reach_hand                 =[0]; % defined by the behavior file
keys.cal.effectors                  =[0];
keys.cal.types                      =[1,2];
keys.cal.choice                     =[0,1];

keys.condition_parameters   ={'type'};
keys.labels.type            ={'Rest','Task'};
keys.tt.type                =[1,2];
keys.cal.type               =[1,2]; %% no 's' !!

keys.batching.combine_monkeys       =0;                        % for population analysis
keys.batching.targets               = {'dPul','VPL', 'MD', 'AIP', 'PCC', 'PPC'}; % for splitting hemispheres: 'VPL_R', 'VPL_L', 'dPul_R', 'dPul_L', 'MD_R', 'MD_L'

%% exclusion criterias

%% are those used even?
keys.cal.remove_trials_with_outlying_FR =0;             % trials with very high and very low FR are excluded
keys.cal.remove_trials_without_spikes   =0;             % compute outliar FR ignoring trials with FR=0

%% unit selection
keys.cal.automatic_stablity             =1;             % using automatic stability assessment - Fano factor
keys.cal.automatic_SNR                  =1;             % using automatic SNR assessment - (mean waveform amplitude)/(mean of standard deviations in each timepoint)
keys.cal.automatic_singleunitness       =1;             % 
keys.cal.FR                             =[2,inf];       % min and max value accepted   
keys.cal.block_stability                =[2.5,Inf];

%% are only those ones used? -->
keys.tt.avg_stability                   =[2.5, Inf];       % min and max value accepted
keys.tt.avg_single_rating               =[0, Inf];         % min and max value accepted          
keys.tt.avg_SNR                         =[4, 26];     % min and max value accepted   
keys.tt.choice                          =NaN; 

keys.cal.n_spikes                       =[0,inf];       % min and max value accepted
keys.cal.min_trials_in                  =5;             % minimum number of trials instructed per condition - replace cal with tt ?
keys.cal.min_trials_ch                  =5;             % minimum number of trials choice

keys.cal.min_trials_per_condition       =5;             % this one is only relevant for valid preference in population plots (?)

keys.tt.trial_criterion_in              ='total';%'per_position'; %'trials_total'
keys.tt.trial_criterion_ch              ='per_hemifield';

% default for population analysis

%% tuning table readout options (excluding particular subsets)
keys.tt.combine_tuning_properties   ={'place_name_here'}; %% additional table entry from combining columns
keys.tt.replace_tuning              ={}; %% additional table entry from combining columns
keys.tt.IC_for_criterion            = 'in';
keys.tt.selection                   ={};
keys.tt.unselect                    ={};
keys.tt.selected_list               ={};
keys.tt.unselected_list             ={};


%% computation settings
keys.cal.process_spikes                  =1;      % you can choose not to run spikes at all
keys.cal.process_sites                   =1;      % you can choose not to run lfp sites at all (saving processing time)
keys.cal.process_by_block                =1;      % you can choose not to run by block (body signals f.e.) at all (saving processing time)
keys.cal.MA_selection                   ={'display',0,'keep_raw_data',1,'saccade_definition',4, 'correlation_conditions',{}};

%% conditions
keys.condition_parameters  ={'choice'}; %% does this work with reach_hand

%% trial selection (for statistics as well as for plotting)
keys.position_and_plotting_arrangements ={'options'};   % defines what is left and right (check ph_arrange_positions_and_plots


%% epochs
%% Fixation only type (aka REST)
keys.EPOCHS_PER_TYPE{1}={...
    'INI',      2,  -0.4,	-0.1,   'INI';...
    'Facq',     2,	0.05,	0.15,   'INI';...
    'Fhol',     3,	0.2,	0.7,    'INI';...
    };
keys.WINDOWS_PER_TYPE{1}={...
    'Aquisition',   3,	-0.5,	12;...
    };
keys.ANOVAS_PER_TYPE(1).epoch={...
    'INI' 'Facq';...
    'Facq' 'Fhol'};

keys.ANOVAS_PER_TYPE(1).hemifield          ={'Facq','Fhol'}';
keys.ANOVAS_PER_TYPE(1).positions          ={'Facq','Fhol'}';
keys.ANOVAS_PER_TYPE(1).hands              ={'Facq','Fhol'}';
keys.ANOVAS_PER_TYPE(1).SxH                ={'Facq','Fhol'}';
keys.ANOVAS_PER_TYPE(1).main               ={'Facq','Fhol'}';


%% Visual guided type /aka TASK)
keys.EPOCHS_PER_TYPE{2}={...
    'Fhol',     4,	-0.8,	0,     'INI';...
    'Tacq',     4,	0.05,   0.15,  'INI';...
    'PreS',     60,	-0.1,	0.00,  'INI';...
    'PeriS',    60,	-0.01,	0.1,   'INI';...
    'PostS',    5,	0.00,	0.1,   'INI';...
    };
keys.ANOVAS_PER_TYPE(2).epoch={   'INI' 'Fhol';...
    'Fhol' 'PreS';...
    'Fhol' 'PeriS';...
    'Fhol' 'PostS';...
    'Fhol' 'Tacq'};
keys.WINDOWS_PER_TYPE{2}={...
    'Visual onset', 4,	-1.5,   0.15;...
    'T hold',       5,	-0.1,   0.15;...
    };
keys.ANOVAS_PER_TYPE(2).spaceLR            ={'Fhol','PreS','PeriS','PostS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).positions          ={'Fhol','PreS','PeriS','PostS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).hands              ={'Fhol','PreS','PeriS','PostS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).SxH                ={'Fhol','PreS','PeriS','PostS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).main               ={'Fhol','PreS','PeriS','PostS','Tacq','Thol'}';

%% create tuning table

% first, make sure we do the type of statistics we want

% ANOVA settings
keys.AN.test_types                     ='parametric'; %% as opposed to 'nonparametric' and 'permutations'
keys.AN.n_permutations                 = 10000; % in case of permutations test_type
keys.AN.n_permutations_randanova2      = 1000; % this should really only be relevant if we decide on test_types = 'permutations'
keys.AN.n_permutations_randanova1      = 1000;
keys.AN.check_normality                = 0; %% very time consuming

% normalization for statistics (?)
keys.AN.normalization       ='none';
keys.AN.epoch_DN            ='none';
keys.AN.epoch_BL            ='none';
keys.AN.baseline_per_trial  =0;

% multicomparison - correct p-values on the fly to update significance table entries
keys.AN.multicomparison='none'; % 'bonferoni' % 'FDR'
keys.AN.factors={'epoch','hemifield','hands','SxH','SglTar_Suc'};
keys.AN.factors_per_hand={'epoch','position','fixation','PxF','distance','angle','DxA','prefH', 'prefP','positionx','positiony','_positionxy','gaze_modulation_x','gaze_modulation_y','gaze_pref_x','gaze_pref_y'};
keys.AN.factors_per_hemifield={'Difficulty_Easy', 'Difficulty_Diff', 'SpatialComp_2HFTar', 'SpatialComp_1HFTar'};
keys.AN.factors_per_handhemifield={'epoch','prefH', 'prefP', 'SpatialComp_2HFTar', 'SpatialComp_1HFTar'}; %% basically perturbation and effector comparison

% different versions of excel tables (?)
cc=0;  
cc=cc+1;
keys.tun(cc).redo_statistics=1;
keys.tun(cc).conditions_to_plot = {'Fsac';'Vsac'};
keys.tun(cc).unique_title='Multicomp_standard';
keys.tun(cc).tt.tasktypes = {'Fsac','Vsac'}; %% why is this needed ??

%% single unit plotting stuff
keys.population_defaults.line_labelling                ='contra/ipsi';

% ANOVA labels for single unit plots
keys.population_defaults.anova_main    ={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.population_defaults.anova_effector={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.population_defaults.anova_epoch1  ={'E','in_AH','epoch','S','in','hemifield','C','ch','hemifield','H','in','hands','SxH','in','SxH'};
keys.population_defaults.anova_epoch2  ={'LL','in_LH_LS','PT','RL','in_LH_RS','PT','LR','in_RH_LS','PT','RR','in_RH_RS','PT'};

%% cell counts
cc=0;   

cc=cc+1;
keys.ccs(cc).tt.choice              =[0,1];
keys.ccs(cc).tt.hands               =[0];
keys.ccs(cc).tt.tasktypes           ={'Fsac_opt','Vsac_opt'};
keys.ccs(cc).factor                 ={'epoch_all'};
keys.ccs(cc).conditions_to_plot     ={'Fsac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Fsac            ={'INI','Facq','Fhol'}';
keys.ccs(cc).epochs.Vsac            ={'Fhol','Tacq','PreS','PeriS','PostS'}';
keys.ccs(cc).plot_as_pie            =0;

    
cc=cc+1;
keys.ccs(cc).tt.choice              =[0,1];
keys.ccs(cc).tt.hands               =[0];
keys.ccs(cc).factor                 ={'space_position'};
keys.ccs(cc).tt.tasktypes           ={'Fsac_opt','Vsac_opt'};
keys.ccs(cc).conditions_to_plot     ={'Vsac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Fsac            ={'INI','Facq','Fhol'}';
keys.ccs(cc).epochs.Vsac            ={'Fhol','Tacq','PreS','PeriS','PostS'}';
keys.ccs(cc).plot_as_pie            =0;

cc=0;

% %% tuning table readout options (excluding particular subsets)
% cc=cc+1;
% keys.pop(cc).tt.choices                	= [0,1];
% keys.pop(cc).tt.selection             	= {};
% keys.pop(cc).tt.unselect                = {};
% keys.pop(cc).tt.tasktypes               = {'Fsac_opt','Vsac_opt'};% 
% keys.pop(cc).tt.combine_tuning_properties   ={'place_name_here'}; %% additional table entry from combining columns
% keys.pop(cc).tt.replace_tuning              ={}; %% additional table entry from combining columns
% keys.pop(cc).tt.IC_for_criterion            = 'in';
% keys.pop(cc).tt.selection                   ={};
% keys.pop(cc).tt.unselect                    ={};
% keys.pop(cc).tt.selected_list               ={};
% keys.pop(cc).tt.unselected_list             ={};
% %keys.pop(cc).tt.type_effectors              ={'Msac'};% 
% keys.pop(cc).group_parameter            = 'ungrouped'; % grouping units - hand_tuning from the Tuning-table
% keys.pop(cc).group_excluded             = {''};
% keys.pop(cc).conditions_to_plot         = {'Fsac','Vsac'};
% keys.pop(cc).epoch_PF                   = 'Tacq';               % epoch in which preference defines target location for "pref" plots
% keys.pop(cc).epoch_RF                   = 'Tacq';               % epoch for which gaussian response fields will be plotted (if plot_RF ~ 0)
% keys.pop(cc).epoch_BL                   = 'Fhol';               % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
% keys.pop(cc).epoch_DN                   = 'Fhol';               % epoch used for (divisive) normalization
% keys.pop(cc).normalization              = 'by_effector';        % none, by_pertubation, effector, separate (divisive) normalization factor for trials grouped by effector; other options:

%% both tasks present
cc=cc+1;
keys.pop(cc).tt.choice                	= [0,1];
keys.pop(cc).tt.tasktypes               = {'Fsac_opt','Vsac_opt'};
keys.pop(cc).tt.IC_for_criterion        = 'in';
keys.pop(cc).group_parameter            = 'ungrouped'; % grouping units - hand_tuning from the Tuning-table
keys.pop(cc).conditions_to_plot         = {'Fsac','Vsac'};
keys.pop(cc).epoch_PF                   = 'Tacq';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_BL                   = 'none';               % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).epoch_DN                   = 'Fhol';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'by_effector';        % none, by_pertubation, effector, separate (divisive) normalization factor for trials grouped by effector; other options:
%% REST
cc=cc+1;
keys.pop(cc).tt.choice                	= 0;
keys.pop(cc).tt.tasktypes               = {'Fsac_opt'};
keys.pop(cc).tt.IC_for_criterion        = 'in';
keys.pop(cc).group_parameter            = 'ungrouped'; % grouping units - hand_tuning from the Tuning-table
keys.pop(cc).conditions_to_plot         = {'Fsac'};
keys.pop(cc).epoch_PF                   = 'Fhol';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_BL                   = 'none';               % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).epoch_DN                   = 'none';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'by_effector';        % none, by_pertubation, effector, separate (divisive) normalization factor for trials grouped by effector; other options:
%% TASK
cc=cc+1;
keys.pop(cc).tt.choice                	= 1;
keys.pop(cc).tt.tasktypes               = {'Vsac_opt'};
keys.pop(cc).tt.IC_for_criterion        = 'in';
keys.pop(cc).group_parameter            = 'ungrouped'; % grouping units - hand_tuning from the Tuning-table
keys.pop(cc).conditions_to_plot         = {'Vsac'};
keys.pop(cc).epoch_PF                   = 'Tacq';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_BL                   = 'none';               % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).epoch_DN                   = 'Fhol';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'by_effector';        % none, by_pertubation, effector, separate (divisive) normalization factor for trials grouped by effector; other options:



%% tuning onset settings
cc=0;

cc=cc+1;% 'Msac epoch tuning';
ce=0;
keys.ons(cc).unique_title            = 'Vsac space and epoch tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Vsac'};
keys.ons(cc).tt.tasktypes            = {'Vsac_opt'};
keys.pop(cc).epoch_BL                = 'none';               % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.ons(cc).tt.choice               = 1;                    % for cell exclusion
keys.ons(cc).epoch_DN                = 'Fhol';               % epoch used for (divisive) normalization
keys.ons(cc).normalization           = 'by_effector';        % none, by_pertubation, effector, separate (divisive) normalization factor for trials grouped by effector; other options:
keys.ons(cc).permutation_tests       = 1; 
keys.ons(cc).PSTH_binwidth           = 0.01; 
keys.ons(cc).gaussian_kernel         = 0.01;
keys.ons(cc).kernel_type             = 'gaussian';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Space tuning';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Epoch tuning';

%% Single cell plotting keys!
cc=0;

cc=cc+1;
keys.uni(cc).line_labelling='contra/ipsi';
keys.uni(cc).anova_main    ={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_effector={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_epoch1  ={'E','in_AH','epoch','S','in','hemifield','C','ch','hemifield','H','in','hands','SxH','in','SxH'};
keys.uni(cc).anova_epoch2  ={'II','in_IH_IS','PT','CI','in_IH_CS','PT','IC','in_CH_IS','PT','CC','in_CH_CS','PT'};