%keys.project_version='Linus_blocked';
keys.cal.process_spikes                  =1;      % you can choose not to run spikes at all           
keys.cal.process_sites                   =0;      % you can choose not to run lfp sites at all (saving processing time)             
keys.cal.process_by_block                =0;      % you can choose not to run by block (body signals f.e.) at all (saving processing time)                   


%% to check carefully
keys.position_and_plotting_arrangements         ={'hands'};

%% computation settings
keys.cal.units_from_sorting_table       =1; 
keys.cal.stablity       =[0,1,2,3]; %??
keys.cal.automatic_stablity             =1; 
keys.cal.single_rating  =[1,2,3,4,5,6]; % 1-3
keys.cal.SNR_rating     =[1,2,3,4,5,6]; % 
keys.cal.effectors      =[3,4,6];
keys.cal.reach_hand     =[1,2];
keys.cal.types          =[4];
keys.cal.datasets       =[3.6];

%% batching
keys.batching.combine_monkeys       =0;
keys.batching.targets               ={'dPulv'};
keys.batching.monkeys               ={'Linus'};%,'Flaffus'};%'Flaffus',
keys.Flaffus.date                   ='[20160203 20161206]';
keys.Linus.date                     ='[20170119 20170430]';
%keys.Linus.date                     ='[20160203 20160606]';

%% plotting
keys.plot.single_cells                  =1;         % perform single cell plotting

%% cell count settings
% keys.cc.factors                     ={'epoch','space','hand'};
% keys.cc.conditions_to_plot          ={'Dcfr','Ddre','Ddsa'};
keys.tt.epoch_criterion             ='none';
keys.tt.position_criterion          ='none';
keys.tt.space_criterion             ='none';
keys.tt.type_effectors              ={'Dcfr','Ddre','Ddsa'};

keys.cal.min_trials_per_condition       =10;
keys.tt.trial_criterion_in          ='per_hemifield';
keys.tt.trial_criterion_ch          ='per_congruent_hand_hemifield';

%% Delay type
keys.EPOCHS_PER_TYPE{4}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.04,   0.24,   'INI';...
    'EDel',     4, 	-0.6,   -0.3,   'INI';...
    'Del',      4, 	-0.3,   0,      'INI';...
    'PreS',     60,	-0.1, 	-0.01,  'INI';...
    'PeriS',	60,	-0.01, 	0.05,   'INI';...
    'PostS',	61,	0.05,   0.2,    'INI';...
    'PreR',     62,	-0.3, 	-0.01,  'INI';...
    'PeriR',	62,	-0.05, 	0.15,   'INI';...
    'PostR',	63,	0.05,   0.2,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };
% keys.WINDOWS_PER_TYPE{4}={...
%     'Initiation',   2,	-0.5,	0.4;...
%     'Fixation',     3,	-1.2,   0.17;...
%     'Delay Period', 6,	-0.33,  1.35;...
%     'Saccade',      60,	-0.1,   0.6;...
%     'Reach',        62,	-0.35,  0.7;...
%     };
keys.WINDOWS_PER_TYPE{4}={...
    'Delay Period', 6,	-0.33,  1.35;...
    'Saccade',      60,	-0.1,   0.5;...
    'Reach',        62,	-0.35,  0.7;...
    };
keys.ANOVAS_PER_TYPE(4).epoch={'INI' 'Facq';...
    'INI' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'EDel';...
    'EDel' 'Del';...
    'EDel' 'PreS';...
    'EDel' 'PeriS';...
    'EDel' 'PostS';...
    'EDel' 'PreR';...
    'EDel' 'PeriR';...
    'EDel' 'PostR';...
    'Fhol' 'Thol';...
    };
keys.ANOVAS_PER_TYPE(4).spaceLR            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).positions          ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).hands              ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).SxH                ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).main               ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';

%% hand space tuning settings
cc=0;

cc=cc+1;
keys.hst(cc).tt.choices             =0;
keys.hst(cc).tt.hands             =[1 2];
keys.hst(cc).tt.perturbation        =[0];
keys.hst(cc).conditions_to_plot     ={'Ddre','Ddsa','Dcfr'};
%% check that this works also for nonexistent table entries
keys.hst(cc).epochs.Ddre            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.hst(cc).epochs.Ddsa            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.hst(cc).epochs.Dcfr            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';


%% cell count settings
cc=0;
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices             =0;
% keys.ccs(cc).tt.hands               =0;
% keys.ccs(cc).factor                 ='space_x_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre','Ddsa','Dcfr'};
% keys.ccs(cc).plot_type              ='space_x_hand';
% keys.ccs(cc).epochs.Ddre            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
% keys.ccs(cc).epochs.Ddsa            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
% keys.ccs(cc).epochs.Dcfr            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';



cc=cc+1;
keys.ccs(cc).tt.choices             =0;
keys.ccs(cc).tt.hands               =[1 2];
keys.ccs(cc).factor                 ='CH_CS';
keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Dcfr'};
keys.ccs(cc).plot_type              ='effector';
keys.ccs(cc).epochs.Ddre            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ccs(cc).epochs.Ddsa            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ccs(cc).epochs.Dcfr            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';


cc=cc+1;
keys.ccs(cc).tt.choices             =0;
keys.ccs(cc).tt.hands               =[1 2];
keys.ccs(cc).factor                 ='space_and_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre','Ddsa','Dcfr'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Ddre            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ccs(cc).epochs.Ddsa            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ccs(cc).epochs.Dcfr            ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';


%% tuning onset settings
cc= 0;


cc=cc+1;% 'Msac epoch tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Saccades vs Combined';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Dcfr'};
keys.ons(cc).choices=0; %for cell exclusion
keys.ons(cc).hands=[1,2]; %for cell exclusion
keys.ons(cc).tt.choices=0; %for cell exclusion
keys.ons(cc).tt.hands=[1,2]; %for cell exclusion
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', -0.3, 1.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.1, 0.5};
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Del';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';


%% population PSTH settings
cc=0;

%% Divided by Fhol
cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.8 2];

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.8 2];

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.8 2];

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.5 3];

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreS_spaceLR_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.5 3];

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Dcfr_han';
keys.pop(cc).conditions_to_plot         = {'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).y_lim                  	= [0.5 3];

%% INI subtracted 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = [0];
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = [0];
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = [0];
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = [0];
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreS_spaceLR_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).FR_subtract_baseline       = 1;
