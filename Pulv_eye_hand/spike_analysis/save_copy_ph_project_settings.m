
keys.cal.process_spikes                  =1;      % you can choose not to run spikes at all           
keys.cal.process_sites                   =0;      % you can choose not to run lfp sites at all (saving processing time)             
keys.cal.process_by_block                =0;      % you can choose not to run by block (body signals f.e.) at all (saving processing time)        

%% to check carefully
keys.position_and_plotting_arrangements         ={'hands'};
% keys.cal.divide_baseline_for_ANOVA      =1;
keys.batching.combine_monkeys           =1;
keys.plot.single_cells                  =0;         % perform single cell plotting

%% computation settings

keys.PSTH_binwidth                      =0.01;                      % resolution of PSTH's (in seconds)
keys.gaussian_kernel                    =0.02;                      % std for the convolution to derive spie density (in seconds)

keys.cal.stablity       =[1,2]; %??
keys.cal.automatic_stablity             =1; 
keys.cal.single_rating  =[1,2,3]; % 1-3
keys.cal.SNR_rating     =[1,2,3]; % 
keys.cal.units_from_sorting_table       =1; 
keys.cal.effectors      =[3,4,6];
keys.cal.reach_hand     =[1,2];
keys.cal.types          =[4];
keys.plot.events                        =1:100; %% remove some sht

keys.plot.trials_max_for_ylim           =20;
keys.plot.excentricity_max_for_ylim     =24;

keys.Flaffus.marker    ='o';
keys.Linus.marker      ='o';


%% Delay type
keys.EPOCHS_PER_TYPE{4}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.06,   0.12,   'INI';...
    'Cue2',     6,	0.12,   0.30,   'INI';...
    'EDel',     4, 	-1,   -0.7,   'INI';...
    'Del',      4, 	-0.3,   0,      'INI';...
    'PreS',     60,	-0.22, 	-0.02,  'INI';...
    'PeriS',	60,	-0.02, 	0.08,   'INI';...
    'PostS',	61,	0.05,   0.2,    'INI';...
    'PreR',     62,	-0.4, 	-0.1,  'INI';...
    'PeriR',	62,	-0.05, 	0.25,   'INI';...
    'PostR',	63,	0.1,   0.4,    'INI';...
    'PreM',     66,	-0.4, 	-0.1,  'INI';...
    'PeriM',	66,	-0.05, 	0.25,   'INI';...
    'PostM',	67,	0.1,   0.4,    'INI';...
    'PreM2',    68,	-0.4, 	-0.1,  'INI';...
    'PeriM2',	68,	-0.05, 	0.25,   'INI';...
    'PostM2',	69,	0.1,   0.4,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };
keys.WINDOWS_PER_TYPE{4}={...
    'Fixation',     3,	-1,   0;...
    'Delay Period', 6,	-0.5,  1.7;...
    'Saccade',      60,	-0.70,   0.45;...
    'Reach',        62,	-0.90,  0.65;...
    'Movement',     66,	-0.90,  0.45;...
    'Movement2',    68,	-0.90,  0.45;...
    };

% keys.EPOCHS_PER_TYPE{4}={...
%     'INI',      2,	-0.4,	-0.1,   'INI';...
%     'Facq',     3,	-0.4,	-0.1,   'INI';...
%     'Fhol',     6,	-0.3,	0,      'INI';...
%     'Cue',      6,	0.06,   0.12,   'INI';...
%     'Cue2',     6,	0.12,   0.30,   'INI';...
%     'EDel',     4, 	-1,   -0.7,   'INI';...
%     'Del',      4, 	-0.3,   0,      'INI';...
%     'PreS',     60,	-0.22, 	-0.02,  'INI';...
%     'PeriS',	60,	-0.02, 	0.08,   'INI';...
%     'PostS',	61,	0.05,   0.2,    'INI';...
%     'PreR',     62,	-0.4, 	-0.1,  'INI';...
%     'PeriR',	62,	-0.05, 	0.25,   'INI';...
%     'PostR',	63,	0.1,   0.4,    'INI';...
%     'PreM',     68,	-0.4, 	-0.1,  'INI';...
%     'PeriM',	68,	-0.05, 	0.25,   'INI';...
%     'PostM',	69,	0.1,   0.4,    'INI';...
%     'Thol',     20,	-0.3,   0,      'INI';...
%     };
% keys.WINDOWS_PER_TYPE{4}={...
%     'Fixation',     3,	-1,   0;...
%     'Delay Period', 6,	-0.5,  0.85;...
%     'Saccade',      60,	-0.70,   0.45;...
%     'Reach',        62,	-0.90,  0.65;...
%     'Movement',     68,	-0.90,  0.65;...
%     };

keys.ANOVAS_PER_TYPE(4).epoch={'INI' 'Facq';...
    'INI' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'Cue2';...
    'Fhol' 'EDel';...
    'Fhol' 'Del';...
    'Fhol' 'PreS';...
    'Fhol' 'PeriS';...
    'Fhol' 'PostS';...
    'Fhol' 'PreR';...
    'Fhol' 'PeriR';...
    'Fhol' 'PostR';...
    'Fhol' 'Thol';...
    };
keys.ANOVAS_PER_TYPE(4).spaceLR            ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).positions          ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).hands              ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).SxH                ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).main               ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';

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
keys.tt.choices             =0;
keys.tt.hands               =[1 2];
keys.tt.perturbation        =[0];

%% hand space tuning settings
cc=0;

cc=cc+1;
keys.hst(cc).conditions_to_plot     ={'Ddre','Ddsa','Dcfr'};
%% check that this works also for nonexistent table entries
keys.hst(cc).epochs.Ddre            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.hst(cc).epochs.Ddsa            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.hst(cc).epochs.Dcfr            ={'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';


%% copy single units settings
cc=0;


cc=cc+1;
keys.cpy(cc).foldername                 ='fhold_handtuned';
keys.cpy(cc).tt.unselect                        = {'handinbpothtasks','--';'handinbpothtasks','IH-';'handinbpothtasks','CH-';'handinbpothtasks','-IH';'handinbpothtasks','-CH';'handinbpothtasks','IHCH';'handinbpothtasks','CHIH'};
keys.cpy(cc).tt.combine_tuning_properties       = {'handinbpothtasks','in_Fhol_hands_perspace_Ddre_han','in_Fhol_hands_perspace_Ddsa_han'};
keys.cpy(cc).tt.selection                 ={};
% 
% cc=cc+1;
% keys.cpy(cc).foldername                 ='contra_hand';
% keys.cpy(cc).tt.unselect                        = {};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_PreR_hands_perspace_Ddre_han','CH'};

% cc=cc+1;
% keys.cpy(cc).foldername                 ='CUE_CS_in_Ddre_not_Dcfr';
% keys.cpy(cc).tt.unselect                        = {'in_Cue_spaceLR_Dcfr_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_Cue_spaceLR_Ddre_han','CS'};
% 
% cc=cc+1;
% keys.cpy(cc).foldername                 ='CUE_CS_in_Dcfr_not_Dddrte';
% keys.cpy(cc).tt.unselect                        = {'in_Cue_spaceLR_Ddre_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_Cue_spaceLR_Dcfr_han','CS'};
% 
% cc=cc+1;
% keys.cpy(cc).foldername                 ='SxH_CUE_CS_in_Ddre_not_Dcfr';
% keys.cpy(cc).tt.unselect                        = {'in_Cue_SxH_spaceLR_Dcfr_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_Cue_SxH_spaceLR_Ddre_han','CS'};
% 
% cc=cc+1;
% keys.cpy(cc).foldername                 ='SxH_CUE_CS_in_Dcfr_not_Ddre';
% keys.cpy(cc).tt.unselect                        = {'in_Cue_SxH_spaceLR_Ddre_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_Cue_SxH_spaceLR_Dcfr_han','CS'};

% cc=cc+1;
% keys.cpy(cc).foldername                 ='perhandCUE_CS_in_Ddre_not_Dcfr';
% keys.cpy(cc).tt.unselect                        = {'in_CH_Cue_spaceLR_Dcfr_han','CS';'in_IH_Cue_spaceLR_Dcfr_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_CH_Cue_spaceLR_Ddre_han','CS'};
% cc=cc+1;
% keys.cpy(cc).foldername                 ='perhandCUE_CS_in_Ddre_not_Dcfr';
% keys.cpy(cc).tt.unselect                        = {'in_CH_Cue_spaceLR_Dcfr_han','CS';'in_IH_Cue_spaceLR_Dcfr_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_IH_Cue_spaceLR_Ddre_han','CS'};
% cc=cc+1;
% keys.cpy(cc).foldername                 ='perhandCUE_CS_in_Dcfr_not_Ddre';
% keys.cpy(cc).tt.unselect                        = {'in_CH_Cue_spaceLR_Ddre_han','CS';'in_IH_Cue_spaceLR_Ddre_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_CH_Cue_spaceLR_Dcfr_han','CS'};
% cc=cc+1;
% keys.cpy(cc).foldername                 ='perhandCUE_CS_in_Dcfr_not_Ddre';
% keys.cpy(cc).tt.unselect                        = {'in_CH_Cue_spaceLR_Ddre_han','CS';'in_IH_Cue_spaceLR_Ddre_han','CS'};
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_IH_Cue_spaceLR_Dcfr_han','CS'};
% 
% cc=cc+1;
% keys.cpy(cc).foldername                 ='perhandPreR_CS_in_Ddre';
% keys.cpy(cc).tt.combine_tuning_properties       = {};
% keys.cpy(cc).tt.selection                 ={'in_PreR_space_perhand_Ddre_han','CS'};

%% cell count settings
cc=0;
epochs_all={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
epochs.Ddre            =epochs_all;
epochs.Ddsa            =epochs_all;
epochs.Dcfr            =epochs_all;


cc=cc+1;
keys.ccs(cc).factor                 ='space_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre'};
keys.ccs(cc).plot_type              ='per_epoch_2levels';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).first_level_factor     ='space_hand';
keys.ccs(cc).first_level_epochs      ={'PeriR'};
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre'};
keys.ccs(cc).plot_type              ='per_epoch_2levels';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).first_level_factor     ='space_hand';
keys.ccs(cc).first_level_epochs      ={'Cue'};
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};


% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'PreR'};
% keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='hand'; %% color problem!
keys.ccs(cc).conditions_to_plot     ={'Ddre'};
keys.ccs(cc).plot_type              ='per_epoch_2levels';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).first_level_factor     ='space_hand';
keys.ccs(cc).first_level_epochs      ={'Fhol'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddsa'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_hand';
keys.ccs(cc).conditions_to_plot     ={'Dcfr'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};
% 
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre';'Dcfr'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};


%% end
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;

% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre';'Dcfr'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre';'Dcfr'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'Fhol'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'Cue'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'EDel'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'PreR'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% 
% 
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'Cue'};
% 
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_and_hand';
% keys.ccs(cc).first_level_epochs      ={'Cue'};
% 
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_and_hand';
% keys.ccs(cc).first_level_epochs      ={'Fhol'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).tt.selection           ={'in_Cue_spaceLR_Ddre_han','-'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_and_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).tt.selection           ={'in_Cue_spaceLR_Ddre_han','CS'};
% 

%% these dont really owrk any more?
% cc=cc+1;
% keys.ccs(cc).factor                 ='CH_CS';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre'};
% keys.ccs(cc).plot_type              ='effector';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='CH_IS';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre'};
% keys.ccs(cc).plot_type              ='effector';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='IH_CS';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre'};
% keys.ccs(cc).plot_type              ='effector';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='IH_IS';
% keys.ccs(cc).conditions_to_plot     ={'Ddsa';'Ddre'};
% keys.ccs(cc).plot_type              ='effector';
% keys.ccs(cc).epochs                 =epochs;
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre';'Ddsa';'Dcfr'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs                 =epochs;


%% tuning onset settings
cc= 0;

%% Effector comparisons

%% at some point, check if these paramteres are taken crrectly

% keys.ons(cc).choices=0; %for cell exclusion
% keys.ons(cc).hands=[1,2]; %for cell exclusion
% keys.ons(cc).tt.choices=0; %for cell exclusion
% keys.ons(cc).tt.hands=[1,2]; %for cell exclusion

%% Separated by Ipsi and Contra space only

cc=cc+1;% 'Reaches vs Saccades'; 
keys.ons(cc).comparisons_title       = 'Reaches vs Saccades';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
TI={'CS','IS'};
for ce=1:2
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
end

% cc=cc+1; % Reaches vs Saccades NORM
% keys.ons(cc).comparisons_title       = 'Reaches vs Saccades NORM ';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.ons(cc).normalization              = 'by_effector';
% keys.ons(cc).epoch_for_normalization    = 'Fhol';
% CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
% TI={'CS','IS'};
% for ce=1:2
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
% end

cc=cc+1; % Reaches vs Combined
keys.ons(cc).comparisons_title       = 'Reaches vs Combined ';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
TI={'CS','IS'};
for ce=1:2
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[0 0 1; 0 1 0]; 
end

% cc=cc+1; % Reaches vs Combined NORM
% keys.ons(cc).comparisons_title       = 'Reaches vs Combined NORM';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.ons(cc).normalization              = 'by_effector';
% keys.ons(cc).epoch_for_normalization    = 'Fhol';
% CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
% TI={'CS','IS'};
% for ce=1:2
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[0 0 1; 0 1 0]; 
% end

cc=cc+1;% 'Saccades vs Combined';
keys.ons(cc).comparisons_title       = 'Saccades vs Combined';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Dcfr';'Ddre'};
CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
TI={'CS','IS'};
for ce=1:2
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 0 1]; 
end

% cc=cc+1;% 'Saccades vs Combined NORM';
% keys.ons(cc).comparisons_title       = 'Saccades vs Combined NORM';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Dcfr';'Ddre'};
% keys.ons(cc).normalization              = 'by_effector';
% keys.ons(cc).epoch_for_normalization    = 'Fhol';
% CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
% TI={'CS','IS'};
% for ce=1:2
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 0 1]; 
% end




% 
% cc=cc+1;% 'Reaches vs Saccades';
% keys.ons(cc).comparisons_title       = 'Reaches vs Saccades';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'CHCS','IHCS','CHIS','IHIS'};
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
% end


%% THESE 3 here 
% 
% cc=cc+1; % Reaches vs Combined
% keys.ons(cc).comparisons_title       = 'Reaches vs Combined';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddre';'Dcfr';'Ddsa'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'CHCS','IHCS','CHIS','IHIS'};
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[0 1 0; 0 0 1]; 
% end
% 
% 
% cc=cc+1;% Reaches vs Saccades; 
% keys.ons(cc).comparisons_title       = 'Reaches vs Saccades';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'CHCS','IHCS','CHIS','IHIS'};
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
% end
% 
% cc=cc+1;% 'Saccades vs Combined';
% keys.ons(cc).comparisons_title       = 'Saccades vs Combined';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Dcfr';'Ddre'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'CHCS','IHCS','CHIS','IHIS'};
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 0 1]; 
% end

%% Space tuned subset

% cc=cc+1;% 'Reaches vs Saccades for space tuned units
% keys.ons(cc).comparisons_title       = 'Reaches vs Saccades';
% keys.ons(cc).group_parameter         = 'in_Cue_space_perhand_Ddre_or_Ddsa';
% keys.ons(cc).group_excluded          = {''};
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre'};
% CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
% TI={'CS','IS'};
% for ce=1:2
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
% end

cc=cc+1;% 'Reaches vs Saccades for space tuned units
keys.ons(cc).comparisons_title       = 'Reaches vs Saccades spacetuned';
keys.ons(cc).group_parameter         = 'in_Pre_space_perhand_Ddre_or_Ddsa';
keys.ons(cc).group_excluded          = {''};
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre'};
CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
TI={'CS','IS'};
for ce=1:2
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
end


cc=cc+1;% 'Reaches vs Saccades for hand tuned units
keys.ons(cc).comparisons_title       = 'Reaches vs Saccades handtuned';
keys.ons(cc).group_parameter         = 'in_Pre_hands_perspace_Ddre_or_Ddsa';
keys.ons(cc).group_excluded          = {''};
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre'};
CM={[1 2],[1 2],1,1;[1 2],[1 2],-1,-1};
TI={'CS','IS'};
for ce=1:2
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[1 0 0; 0 1 0]; 
end

%% ENSU

% cc=cc+1;% 'Saccades ensu Fhol';
% keys.ons(cc).comparisons_title       = 'Saccades ensu Fhol';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
% TC=[keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.IH_IS_IN;
%     keys.colors.CH_CS_CH; keys.colors.IH_CS_CH; keys.colors.CH_IS_CH; keys.colors.IH_IS_CH]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[3];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% 
% cc=cc+1;% 'Reaches ensu Fhol';
% keys.ons(cc).comparisons_title       = 'Reaches ensu Fhol';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
% TC=[keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.IH_IS_IN;
%     keys.colors.CH_CS_CH; keys.colors.IH_CS_CH; keys.colors.CH_IS_CH; keys.colors.IH_IS_CH]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% 
% cc=cc+1;% 'Freegaze ensu Fhol';
% keys.ons(cc).comparisons_title       = 'Freegaze ensu Fhol';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
% TC=[keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.IH_IS_IN;
%     keys.colors.CH_CS_CH; keys.colors.IH_CS_CH; keys.colors.CH_IS_CH; keys.colors.IH_IS_CH]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end

%% Space per hand and hand per space

cc=cc+1;% 'Saccades hand space';
keys.ons(cc).comparisons_title       = 'Saccades handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
    keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
for ce=1:4
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[3];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
cc=cc+1;% 'Reaches hand space';
keys.ons(cc).comparisons_title       = 'Reaches handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
    keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
for ce=1:4
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};

cc=cc+1;% 'Freegaze hand space';
keys.ons(cc).comparisons_title       = 'Freegaze handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
    keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
for ce=1:4
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
%% hands only

cc=cc+1;% 'Saccades hands';
keys.ons(cc).comparisons_title       = 'Saccades hands';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
%CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
% TI={'Space CH','Space IH','Hands IS','Hands CS'};
CM={2, 1, [-1 1],[-1 1]};
TI={'Hands'};
% TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
%     keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
TC=[keys.colors.CH_IN; keys.colors.IH_IN]/255;
ce=1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[3];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+1,:)]; 
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', -1, 1.3};
% 
cc=cc+1;% 'Reaches hands';
keys.ons(cc).comparisons_title       = 'Reaches hands';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
%CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
% TI={'Space CH','Space IH','Hands IS','Hands CS'};
CM={2, 1, [-1 1],[-1 1]};
TI={'Hands'};
% TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
%     keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
TC=[keys.colors.CH_IN; keys.colors.IH_IN]/255;
ce=1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+1,:)]; 
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', -1, 1.3};

cc=cc+1;% 'Freegaze hands';
keys.ons(cc).comparisons_title       = 'Freegaze hands';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM={2, 1, [-1 1],[-1 1]};
TI={'Hands'};
% TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
%     keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
TC=[keys.colors.CH_IN; keys.colors.IH_IN]/255;
ce=1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+1,:)]; 
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', -1, 1.3};

%% Summaries

% cc=cc+1;% 'Saccades summary';
% keys.ons(cc).comparisons_title       = 'Saccades summary';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddsa'};
% keys.ons(cc).link_y_lim=1; 
% CM={[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1],[1];[1],[2],[-1 1],[-1 1]};
% TI={'EnSu','EnSu','Space','Hands'};
% TC=[keys.colors.EP_EN; keys.colors.EP_EN; keys.colors.NH_IS_IN; keys.colors.IH_IN;
%     keys.colors.EP_SU; keys.colors.EP_SU; keys.colors.NH_CS_IN; keys.colors.CH_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[3];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[3];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(2).baseline_epoch='Del';
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
% cc=cc+1;% 'Reaches summary';
% keys.ons(cc).comparisons_title       = 'Reaches summary';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% keys.ons(cc).link_y_lim=1; 
% CM={[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1],[1];[1],[2],[-1 1],[-1 1]};
% TI={'EnSu','EnSu','Space','Hands'};
% TC=[keys.colors.EP_EN; keys.colors.EP_EN; keys.colors.NH_IS_IN; keys.colors.IH_IN;
%     keys.colors.EP_SU; keys.colors.EP_SU; keys.colors.NH_CS_IN; keys.colors.CH_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(2).baseline_epoch='Del';
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
% cc=cc+1;% 'Freegaze summary';
% keys.ons(cc).comparisons_title       = 'Freegaze summary';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Dcfr'};
% keys.ons(cc).link_y_lim=1; 
% CM={[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1],[1];[1],[2],[-1 1],[-1 1]};
% TI={'EnSu','EnSu','Space','Hands'};
% TC=[keys.colors.EP_EN; keys.colors.EP_EN; keys.colors.NH_IS_IN; keys.colors.IH_IN;
%     keys.colors.EP_SU; keys.colors.EP_SU; keys.colors.NH_CS_IN; keys.colors.CH_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[6];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(2).baseline_epoch='Del';
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};

% %% CUE
% 
% cc=cc+1;% 'Reaches hand space';
% keys.ons(cc).group_parameter         = 'in_Cue_space_perhand_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).comparisons_title       = 'Reaches handspace';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% keys.ons(cc).link_y_lim=1; 
% CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
% TI={'Space CH','Space IH','Hands IS','Hands CS'};
% TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
%     keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
% 
% cc=cc+1;% 'Reaches ensu Fhol';
% keys.ons(cc).group_parameter         = 'in_Cue_space_perhand_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).comparisons_title       = 'Reaches ensu Fhol';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
% TC=[keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.IH_IS_IN;
%     keys.colors.CH_CS_CH; keys.colors.IH_CS_CH; keys.colors.CH_IS_CH; keys.colors.IH_IS_CH]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% 
% 
% cc=cc+1;% 'Reaches summary';
% keys.ons(cc).comparisons_title       = 'Reaches summary';
% keys.ons(cc).group_parameter         = 'in_Cue_space_perhand_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% keys.ons(cc).link_y_lim=1; 
% CM={[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1],[1];[1],[2],[-1 1],[-1 1]};
% TI={'EnSu','EnSu','Space','Hands'};
% TC=[keys.colors.EP_EN; keys.colors.EP_EN; keys.colors.NH_IS_IN; keys.colors.IH_IN;
%     keys.colors.EP_SU; keys.colors.EP_SU; keys.colors.NH_CS_IN; keys.colors.CH_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(2).baseline_epoch='Del';
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
% 
% cc=cc+1;% 'Reaches hand space';
% keys.ons(cc).group_parameter         = 'in_Cue_spaceLR_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).comparisons_title       = 'Reaches handspace';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% keys.ons(cc).link_y_lim=1; 
% CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
% TI={'Space CH','Space IH','Hands IS','Hands CS'};
% TC=[keys.colors.CH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_IS_IN; keys.colors.IH_CS_IN;
%     keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.CH_CS_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
% 
% 
% cc=cc+1;% 'Reaches ensu Fhol';
% keys.ons(cc).group_parameter         = 'in_Cue_spaceLR_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).comparisons_title       = 'Reaches ensu Fhol';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
% TC=[keys.colors.CH_CS_IN; keys.colors.IH_CS_IN; keys.colors.CH_IS_IN; keys.colors.IH_IS_IN;
%     keys.colors.CH_CS_CH; keys.colors.IH_CS_CH; keys.colors.CH_IS_CH; keys.colors.IH_IS_CH]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% 
% cc=cc+1;% 'Reaches summary';
% keys.ons(cc).comparisons_title       = 'Reaches summary';
% keys.ons(cc).group_parameter         = 'in_Cue_spaceLR_Ddre_han';
% keys.ons(cc).group_excluded          = 'IS';
% keys.ons(cc).conditions_to_plot      = {'Ddre'};
% keys.ons(cc).link_y_lim=1; 
% CM={[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1 1],[-1 1];[1 2],[1 2],[-1],[1];[1],[2],[-1 1],[-1 1]};
% TI={'EnSu','EnSu','Space','Hands'};
% TC=[keys.colors.EP_EN; keys.colors.EP_EN; keys.colors.NH_IS_IN; keys.colors.IH_IN;
%     keys.colors.EP_SU; keys.colors.EP_SU; keys.colors.NH_CS_IN; keys.colors.CH_IN]/255;
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM{ce,1};
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM{ce,2};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM{ce,3};
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM{ce,4};
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[4];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
% end
% keys.ons(cc).comparisons_per_effector(2).baseline_epoch='Del';
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};

% 
%% PSTH binwidht!
for cc=1:numel(keys.ons)    
        keys.ons(cc).PSTH_binwidth=0.05;
        keys.ons(cc).gaussian_kernel=0.025;
end


%% Scatter keys
cs=0;  
% to test

%% Saccades vs reaches contra hand
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).X='in_Cue_spaceLR_DF_Ddsa_han';
% keys.sct(cs).Y='in_Cue_spaceLR_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Cue_space_perhand_Ddsa_han';
% keys.sct(cs).Y_sig='in_Cue_space_perhand_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).X='in_Cue2_spaceLR_DF_Ddsa_han';
% keys.sct(cs).Y='in_Cue2_spaceLR_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Cue2_space_perhand_Ddsa_han';
% keys.sct(cs).Y_sig='in_Cue2_space_perhand_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).X='in_EDel_spaceLR_DF_Ddsa_han';
% keys.sct(cs).Y='in_EDel_spaceLR_DF_Ddre_han';
% keys.sct(cs).X_sig='in_EDel_space_perhand_Ddsa_han';
% keys.sct(cs).Y_sig='in_EDel_space_perhand_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).X='in_Del_spaceLR_DF_Ddsa_han';
% keys.sct(cs).Y='in_Del_spaceLR_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Del_space_perhand_Ddsa_han';
% keys.sct(cs).Y_sig='in_Del_space_perhand_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).X='in_PreS_spaceLR_DF_Ddsa_han';
% keys.sct(cs).Y='in_PreR_spaceLR_DF_Ddre_han';
% keys.sct(cs).X_sig='in_PreS_space_perhand_Ddsa_han';
% keys.sct(cs).Y_sig='in_PreR_space_perhand_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';


%% CH
cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_CH_Cue_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_CH_Cue_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_CH_Cue_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_CH_Cue_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_CH_Cue2_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_CH_Cue2_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_CH_Cue2_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_CH_Cue2_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_CH_EDel_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_CH_EDel_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_CH_EDel_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_CH_EDel_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_CH_Del_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_CH_Del_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_CH_Del_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_CH_Del_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_CH_PreS_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_CH_PreR_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_CH_PreS_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_CH_PreR_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

%% IH
cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Cue_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_IH_Cue_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Cue_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_IH_Cue_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Cue2_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_IH_Cue2_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Cue2_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_IH_Cue2_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_EDel_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_IH_EDel_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_EDel_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_IH_EDel_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Del_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_IH_Del_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Del_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_IH_Del_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_PreS_spaceLR_DF_Ddsa_han';
keys.sct(cs).Y='in_IH_PreR_spaceLR_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_PreS_spaceLR_Ddsa_han';
keys.sct(cs).Y_sig='in_IH_PreR_spaceLR_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

% %% Saccades vs reaches ipsi hand
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).tt.hands=[1,2];
% keys.sct(cs).X='in_IH_CS_Cue_epoch_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_CS_Cue_epoch_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_CS_Cue_epoch_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_CS_Cue_epoch_Ddre_han';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).tt.choices=[0];
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).tt.hands=[1,2];
% keys.sct(cs).X='in_IH_Cue_epoch_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_Cue_epoch_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_Cue_epoch_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_Cue_epoch_Ddre_han';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).tt.choices=[0];
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).tt.hands=[1,2];
% keys.sct(cs).X='in_IH_EDel_epoch_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_EDel_epoch_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_EDel_epoch_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_EDel_epoch_Ddre_han';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).tt.choices=[0];
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Ddsa','Ddre'};
% keys.sct(cs).tt.hands=[1,2];
% keys.sct(cs).X='in_IH_Del_epoch_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_Del_epoch_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_Del_epoch_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_Del_epoch_Ddre_han';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).tt.choices=[0];

%% population PSTH settings
cc=0;


%% Divided by Fhol (PER effector!)
cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).plot_per_position          = 1;

%% Divided by Fhol (PER HAND!)
cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).plot_per_position          = 1;

%% these 4 are HAND tuned units!

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

%% reach tuned subpopulation

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).tt.selection               = {'in_PreR_space_perhand_Ddre_han','CS'};
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;


cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).tt.selection               = {'in_PreR_space_perhand_Ddre_han','IS'};
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;


%% Saccade tuned subpopulation

cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).tt.selection               = {'in_PreS_space_perhand_Ddsa_han','CS'};
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;


cc=cc+1;
keys.pop(cc).tt.choices                 = 0;
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).tt.selection               = {'in_PreS_space_perhand_Ddsa_han','IS'};
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'INI';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

%% these 4 are SPACE tuned units!
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_PreS_space_perhand_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_PreR_space_perhand_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;


% %% reaches cue space tuning
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
%  keys.pop(cc).group_excluded             = {'IS','incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% %% saccades space tuning
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
%  keys.pop(cc).group_excluded             = {'IS','incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;

% %% enhanced cue
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_Cue_epoch_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
%  keys.pop(cc).group_excluded             = {''}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_Cue_epoch_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {''}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_Cue_epoch_Dcfr_han';
% keys.pop(cc).conditions_to_plot         = {'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {''}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% %% enhanced pre-movement
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreR_epoch_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreS_epoch_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% %keys.pop(cc).plot_RF                  	= 1;
% %keys.pop(cc).RF_frame_parameter                  	= 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreS_epoch_Dcfr_han';
% keys.pop(cc).conditions_to_plot         = {'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 0;

% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Dcfr_han';
% keys.pop(cc).conditions_to_plot         = {'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'-'}; 
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_EDel_space_perhand_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'-','incongruent'}; 
% 
% 
% cc=cc+1;
% keys.pop(cc).tt.choices                 = 0;
% keys.pop(cc).tt.hands                   = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_EDel_space_perhand_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'-','incongruent'}; 


%% reaction time correlation
cc=0;

cc=cc+1; % Reaches vs Combined NORM
%keys.reg(cc).comparisons_title       = 'Reaches vs Combined NORM';
keys.rtc(cc).group_parameter         = 'ungrouped';
keys.rtc(cc).conditions_to_plot      = {'Ddre';'Dcfr';'Ddsa'};
keys.rtc(cc).normalization              = 'none';
keys.rtc(cc).epoch_for_normalization    = 'Fhol';
keys.rtc(cc).epoch_RT                  	= 'Del';

%% linear regression
cc=0;

cc=cc+1; % Reaches vs Combined NORM
%keys.reg(cc).comparisons_title       = 'Reaches vs Combined NORM';
keys.reg(cc).group_parameter         = 'ungrouped';
keys.reg(cc).conditions_to_plot      = {'Ddre';'Dcfr';'Ddsa'};
keys.reg(cc).normalization              = 'none';
keys.reg(cc).epoch_for_normalization    = 'Fhol';
keys.reg(cc).WINDOWS_PER_TYPE{4}={...
    'Delay Period', 6,	0,  1.5;...
    'PreGo',  4,	-0.3,   0;...
    'Go',  4,	0,   0.7;...
    'Saccade',      60,	-0.1,  0.83;...
    'Reach',        62,	-0.3,  0.63;...
    'Movement',     68,	-0.3,  0.63;...      %% this leads to issues!!
    }; %% additional 330 milliseconds in the end of movement!
    %% think about what to do with (Pre-)saccade onset alignment ?

    
    
   % 'Movement',     68,	-0.3,  0.63;...

keys.reg(cc).regressors(1).reach_hand=[1,2];
keys.reg(cc).regressors(1).hemifield=[-1,1];
keys.reg(cc).regressors(1).choice=[0];
keys.reg(cc).regressors(1).perturbation=[0];
keys.reg(cc).regressors(1).effector=[3];
keys.reg(cc).regressors(1).color=[1 0 0];

keys.reg(cc).regressors(2).reach_hand=[1,2];
keys.reg(cc).regressors(2).hemifield=[-1,1];
keys.reg(cc).regressors(2).choice=[0];
keys.reg(cc).regressors(2).perturbation=[0];
keys.reg(cc).regressors(2).effector=[4];
keys.reg(cc).regressors(2).color=[0 1 0];

keys.reg(cc).solution.reach_hand=[1,2];
keys.reg(cc).solution.hemifield=[-1,1];
keys.reg(cc).solution.choice=0;
keys.reg(cc).solution.perturbation=[0];
keys.reg(cc).solution.effector=6;
keys.reg(cc).solution.color=[0 0 1];

% CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
% TI={'CHCS','IHCS','CHIS','IHIS'};
% for ce=1:4
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=CM(ce,1);
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=CM(ce,2);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=CM(ce,3);
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=CM(ce,4);
% keys.ons(cc).comparisons_per_effector(ce).title=TI{ce};
% keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
% keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', 0, 1.3};
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).colors=[0 1 0; 0 0 1]; 
% end

