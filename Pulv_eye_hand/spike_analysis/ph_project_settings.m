
keys.cal.process_spikes                  =1;      % you can choose not to run spikes at all           
keys.cal.process_sites                   =0;      % you can choose not to run lfp sites at all (saving processing time)             
keys.cal.process_by_block                =0;      % you can choose not to run by block (body signals f.e.) at all (saving processing time)        

%% to check carefully
keys.position_and_plotting_arrangements         ={'hands'};
keys.batching.combine_monkeys           =1;
keys.plot.single_cells                  =1;         % perform single cell plotting

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
keys.cal.choice          =[0,1];
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
    'EDel',     4, 	-1,     -0.7,   'INI';...
    'Del',      4, 	-0.3,   0,      'INI';...
    'PreS',     60,	-0.22, 	-0.02,  'INI';...
    'PeriS',	60,	-0.02, 	0.08,   'INI';...
    'PostS',	61,	0.05,   0.2,    'INI';...
    'PreR',     62,	-0.4, 	-0.1,   'INI';...
    'PeriR',	62,	-0.05, 	0.25,   'INI';...
    'PostR',	63,	0.1,    0.4,    'INI';...
    'PreM',     66,	-0.4, 	-0.1,   'INI';...
    'PeriM',	66,	-0.05, 	0.25,   'INI';...
    'PostM',	67,	0.1,    0.4,    'INI';...
    'PreM2',    68,	-0.4, 	-0.1,   'INI';...
    'PeriM2',	68,	-0.05, 	0.25,   'INI';...
    'PostM2',	69,	0.1,    0.4,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };
keys.WINDOWS_PER_TYPE{4}={...
    'Fixation',     2,	-0.3,   0.8;...
    'Delay Period', 6,	-0.5,   0.8;...
    'Saccade',      60,	-0.70,  0.45;...
    'Reach',        62,	-0.90,  0.65;...
    'Movement',     68,	-0.90,  0.45;...
    };

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
keys.ANOVAS_PER_TYPE(4).hemifield          ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).positions          ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).hands              ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).SxH                ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
keys.ANOVAS_PER_TYPE(4).main               ={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';

%% cell count settings
% keys.cc.factors                     ={'epoch','space','hand'};
% keys.cc.conditions_to_plot          ={'Dcfr','Ddre','Ddsa'};
% keys.tt.epoch_criterion             ='none';
% keys.tt.position_criterion          ='none';
% keys.tt.space_criterion             ='none';
keys.tt.type_effectors              ={'Dcfr','Ddre','Ddsa'};

keys.cal.min_trials_per_condition       =10;
keys.tt.trial_criterion_in          ='per_hemifield';
keys.tt.trial_criterion_ch          ='per_congruent_hand_hemifield';
keys.tt.choice              =0;
keys.tt.reach_hand          =[1 2];
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


%% cell count settings
cc=0;

epochs_all={'INI','Facq','Fhol','Cue','Cue2','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';
epochs.Ddre            =epochs_all;
epochs.Ddsa            =epochs_all;
epochs.Dcfr            =epochs_all;

% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'PeriR'};
% keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};
% 
% cc=cc+1;
% keys.ccs(cc).factor                 ='space_hand';
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'Cue'};
% keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};


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


cc=cc+1;
keys.ccs(cc).factor                 ='space_and_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_and_hand';
keys.ccs(cc).conditions_to_plot     ={'Ddsa'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

cc=cc+1;
keys.ccs(cc).factor                 ='space_and_hand';
keys.ccs(cc).conditions_to_plot     ={'Dcfr'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs                 =epochs;
keys.ccs(cc).tt.tasktypes           = {'Ddre_han','Ddsa_han','Dcfr_han'};

% cc=cc+1;
% keys.ccs(cc).factor                 ='hand'; %% color problem!
% keys.ccs(cc).conditions_to_plot     ={'Ddre'};
% keys.ccs(cc).plot_type              ='per_epoch_2levels';
% keys.ccs(cc).epochs                 =epochs;
% keys.ccs(cc).first_level_factor     ='space_hand';
% keys.ccs(cc).first_level_epochs      ={'Fhol'};

%% end

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

%% Space tuned subset

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


%% Space per hand and hand per space

cc=cc+1;% 'Saccades hand space';
keys.ons(cc).comparisons_title       = 'Saccades handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
    keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
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
% keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', 0, 0.8};

cc=cc+1;% 'Reaches hand space';
keys.ons(cc).comparisons_title       = 'Reaches handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
    keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
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
% keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', 0, 0.8};


cc=cc+1;% 'Freegaze hand space';
keys.ons(cc).comparisons_title       = 'Freegaze handspace';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
TI={'Space CH','Space IH','Hands IS','Hands CS'};
TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
    keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
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
% keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', -1, 1.3};
% keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', -1, 1.3};
keys.ons(cc).comparisons_per_effector(3).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(4).order_onset={'Fixation', 0, 0.8};

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
% TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
%     keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
TC=[keys.colors.in_CH; keys.colors.in_IH]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};
% 
cc=cc+1;% 'Reaches hands';
keys.ons(cc).comparisons_title       = 'Reaches hands';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
% CM=[2 2 -1 1; 1 1 -1 1; 1 2 -1 -1; 1 2 1 1];
% TI={'Space CH','Space IH','Hands IS','Hands CS'};
CM={2, 1, [-1 1],[-1 1]};
TI={'Hands'};
% TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
%     keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
TC=[keys.colors.in_CH; keys.colors.in_IH]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};

cc=cc+1;% 'Freegaze hands';
keys.ons(cc).comparisons_title       = 'Freegaze hands';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.ons(cc).link_y_lim=1; 
CM={2, 1, [-1 1],[-1 1]};
TI={'Hands'};
% TC=[keys.colors.in_CH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_IS; keys.colors.in_IH_CS;
%     keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_CH_CS]/255;
TC=[keys.colors.in_CH; keys.colors.in_IH]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};


%% ENSU

cc=cc+1;% 'Saccades ensu Fhol';
keys.ons(cc).comparisons_title       = 'Saccades ensu Fhol';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
TC=[keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_IH_IS;
    keys.colors.ch_CH_CS; keys.colors.ch_IH_CS; keys.colors.ch_CH_IS; keys.colors.ch_IH_IS]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end

cc=cc+1;% 'Reaches ensu Fhol';
keys.ons(cc).comparisons_title       = 'Reaches ensu INI';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
TC=[keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_IH_IS;
    keys.colors.ch_CH_CS; keys.colors.ch_IH_CS; keys.colors.ch_CH_IS; keys.colors.ch_IH_IS]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end

cc=cc+1;% 'Freegaze ensu Fhol';
keys.ons(cc).comparisons_title       = 'Freegaze ensu Fhol';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
CM=[2 2 1 1; 1 1 1 1; 2 2 -1 -1; 1 1 -1 -1];
TI={'EnSu CHCS','EnSu IHCS','EnSu CHIS','EnSu IHIS'};
TC=[keys.colors.in_CH_CS; keys.colors.in_IH_CS; keys.colors.in_CH_IS; keys.colors.in_IH_IS;
    keys.colors.ch_CH_CS; keys.colors.ch_IH_CS; keys.colors.ch_CH_IS; keys.colors.ch_IH_IS]/255;
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
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Fixation', 0, 0.8};
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).colors=[TC(ce,:); TC(ce+4,:)]; 
end


%% PSTH binwidht!
for cc=1:numel(keys.ons)    
        keys.ons(cc).PSTH_binwidth=0.01;
        keys.ons(cc).gaussian_kernel=0.10;
end


%% Scatter keys
cs=0;  
%% Saccades vs reaches tuning strength

% %% CH
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_CH_Cue_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_CH_Cue_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_CH_Cue_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_CH_Cue_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_CH_Cue2_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_CH_Cue2_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_CH_Cue2_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_CH_Cue2_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_CH_EDel_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_CH_EDel_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_CH_EDel_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_CH_EDel_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_CH_Del_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_CH_Del_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_CH_Del_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_CH_Del_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_CH_PreS_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_CH_PreR_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_CH_PreS_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_CH_PreR_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% %% IH
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_IH_Cue_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_Cue_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_Cue_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_Cue_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_IH_Cue2_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_Cue2_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_Cue2_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_Cue2_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_IH_EDel_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_EDel_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_EDel_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_EDel_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_IH_Del_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_Del_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_Del_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_Del_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_IH_PreS_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_IH_PreR_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_IH_PreS_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_IH_PreR_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';

% %% Both hands together
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_Cue_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_Cue_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Cue_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_Cue_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_Cue2_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_Cue2_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Cue2_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_Cue2_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_EDel_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_EDel_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_EDel_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_EDel_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_Del_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_Del_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_Del_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_Del_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';
% 
% cs=cs+1;
% keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
% keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
% keys.sct(cs).X='in_PreS_hemifield_DF_Ddsa_han';
% keys.sct(cs).Y='in_PreR_hemifield_DF_Ddre_han';
% keys.sct(cs).X_sig='in_PreS_hemifield_Ddsa_han';
% keys.sct(cs).Y_sig='in_PreR_hemifield_Ddre_han';
% keys.sct(cs).color_option='monkeys_by_marker';

%% Contra space hand difference
cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IS_Cue_hands_DF_Ddre_han';
keys.sct(cs).Y='in_CS_Cue_hands_DF_Ddre_han';
keys.sct(cs).X_sig='in_IS_Cue_hands_Ddre_han';
keys.sct(cs).Y_sig='in_CS_Cue_hands_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IS_Cue2_hands_DF_Ddre_han';
keys.sct(cs).Y='in_CS_Cue2_hands_DF_Ddre_han';
keys.sct(cs).X_sig='in_IS_Cue2_hands_Ddre_han';
keys.sct(cs).Y_sig='in_CS_Cue2_hands_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IS_EDel_hands_DF_Ddre_han';
keys.sct(cs).Y='in_CS_EDel_hands_DF_Ddre_han';
keys.sct(cs).X_sig='in_IS_EDel_hands_Ddre_han';
keys.sct(cs).Y_sig='in_CS_EDel_hands_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IS_Del_hands_DF_Ddre_han';
keys.sct(cs).Y='in_CS_Del_hands_DF_Ddre_han';
keys.sct(cs).X_sig='in_IS_Del_hands_Ddre_han';
keys.sct(cs).Y_sig='in_CS_Del_hands_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IS_PreR_hands_DF_Ddre_han';
keys.sct(cs).Y='in_CS_PreR_hands_DF_Ddre_han';
keys.sct(cs).X_sig='in_IS_PreR_hands_Ddre_han';
keys.sct(cs).Y_sig='in_CS_PreR_hands_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

%% Contra space epoch difference
cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Cue_epoch_DF_Ddre_han';
keys.sct(cs).Y='in_CH_Cue_epoch_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Cue_epoch_Ddre_han';
keys.sct(cs).Y_sig='in_CH_Cue_epoch_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Cue2_epoch_DF_Ddre_han';
keys.sct(cs).Y='in_CH_Cue2_epoch_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Cue2_epoch_Ddre_han';
keys.sct(cs).Y_sig='in_CH_Cue2_epoch_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_EDel_epoch_DF_Ddre_han';
keys.sct(cs).Y='in_CH_EDel_epoch_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_EDel_epoch_Ddre_han';
keys.sct(cs).Y_sig='in_CH_EDel_epoch_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_Del_epoch_DF_Ddre_han';
keys.sct(cs).Y='in_CH_Del_epoch_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_Del_epoch_Ddre_han';
keys.sct(cs).Y_sig='in_CH_Del_epoch_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';

cs=cs+1;
keys.sct(cs).conditions_to_plot      = {'Ddsa';'Ddre';'Dcfr'};
keys.sct(cs).tt.tasktypes={'Ddsa_han','Ddre_han','Dcfr_han'};
keys.sct(cs).X='in_IH_PreR_epoch_DF_Ddre_han';
keys.sct(cs).Y='in_CH_PreR_epoch_DF_Ddre_han';
keys.sct(cs).X_sig='in_IH_PreR_epoch_Ddre_han';
keys.sct(cs).Y_sig='in_CH_PreR_epoch_Ddre_han';
keys.sct(cs).color_option='monkeys_by_marker';



%% population PSTH settings
cc=0;

%% sanity check Cue preference!

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).plot_per_position          = 1;

% Divided by Fhol (PER effector!)
cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).plot_per_position          = 1;

%% Divided by Fhol (PER HAND!)
cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).plot_per_position          = 1;

%% these 4 are HAND tuned units!

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 1;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).normalization              = 'by_hand';
keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 1;

%% reach tuned subpopulation

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).tt.selection               = {'in_PeriR_space_perhand_Ddre_han','CS'};
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).tt.selection               = {'in_PeriR_space_perhand_Ddre_han','IS'};
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreR';
keys.pop(cc).epoch_RF                  	= 'PreR';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;


%% Saccade tuned subpopulation

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).tt.selection               = {'in_PeriS_space_perhand_Ddsa_han','CS'};
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

cc=cc+1;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).tt.reach_hand              = [1 2];
keys.pop(cc).tt.selection               = {'in_PeriS_space_perhand_Ddsa_han','IS'};
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).epoch_PF                  	= 'PreS';
keys.pop(cc).epoch_RF                  	= 'PreS';
keys.pop(cc).epoch_GB                  	= 'none';
keys.pop(cc).epoch_for_normalization    = 'Fhol';
keys.pop(cc).epoch_BL                   = 'Fhol';
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).group_excluded             = {'incongruent'}; 
keys.pop(cc).plot_per_position          = 0;

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

%% preferred target analysis
cc=0;

cc=cc+1; % Reaches vs Combined NORM
%keys.reg(cc).comparisons_title       = 'Reaches vs Combined NORM';
keys.prf(cc).group_parameter         = 'ungrouped';
keys.prf(cc).conditions_to_plot      = {'Ddre';'Dcfr';'Ddsa'};
keys.prf(cc).normalization              = 'none';
keys.prf(cc).epoch_for_normalization    = 'Fhol';
keys.prf(cc).WINDOWS_PER_TYPE{4}={...
    'Delay Period', 6,	0,  1.5;...
    'PreGo',  4,	-0.3,   0;...
    'Go',  4,	0,   0.7;...
    'Saccade',      60,	-0.1,  0.83;...
    'Reach',        62,	-0.3,  0.63;...
    'Movement',     68,	-0.3,  0.63;...      %% this leads to issues!!
    }; %% additional 330 milliseconds in the end of movement!

% %% population PSTH settings
% cc=0;
% 
% %% sanity check Cue preference!
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;

%% Divided by Fhol (PER effector!)
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;

% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;

% %% Divided by Fhol (PER HAND!)
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'ungrouped';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).plot_per_position          = 1;

% %% these 4 are HAND tuned units!
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreS_hands_perspace_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).normalization              = 'by_hand';
% keys.pop(cc).group_parameter            = 'in_PreR_hands_perspace_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 1;

% %% reach tuned subpopulation
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).tt.selection               = {'in_PeriR_space_perhand_Ddre_han','CS'};
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).tt.selection               = {'in_PeriR_space_perhand_Ddre_han','IS'};
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreR';
% keys.pop(cc).epoch_RF                  	= 'PreR';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;
% 
% 
% %% Saccade tuned subpopulation
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).tt.selection               = {'in_PeriS_space_perhand_Ddsa_han','CS'};
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;
% 
% cc=cc+1;
% keys.pop(cc).tt.choice                  = 0;
% keys.pop(cc).tt.reach_hand              = [1 2];
% keys.pop(cc).tt.selection               = {'in_PeriS_space_perhand_Ddsa_han','IS'};
% keys.pop(cc).normalization              = 'by_effector';
% keys.pop(cc).group_parameter            = 'in_Cue_space_perhand_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
% keys.pop(cc).epoch_PF                  	= 'PreS';
% keys.pop(cc).epoch_RF                  	= 'PreS';
% keys.pop(cc).epoch_BL                  	= 'INI';
% keys.pop(cc).epoch_GB                  	= 'none';
% keys.pop(cc).epoch_for_normalization    = 'Fhol';
% keys.pop(cc).group_excluded             = {'incongruent'}; 
% keys.pop(cc).plot_per_position          = 0;

%% decoding
cc=0;
cc=cc+1;
keys.ndt(cc).plot_per_position          = 0;

