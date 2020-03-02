keys.project_versions={''};
keys.project_version='LIP_dPul_inj_working_choice';
keys.filelist_formatted={};

%% what to plot
keys.plot.single_cells =0;
keys.plot.waveforms=1;
keys.plot.population_PSTH_legends=1;
%% to check carefully
%keys.position_and_plotting_arrangements             ={'hands'};
keys.position_and_plotting_arrangements             ={'hands_inactivation'};

%% computation settings
keys.cal.datasets                   =[51];
keys.cal.effectors                  =[3];
keys.cal.reach_hand                 =[1,2];
keys.cal.types                      =[4];
keys.cal.units_from_sorting_table   =1;

%% batching
keys.batching.combine_monkeys           =1;
keys.batching.targets                   ={'LIP_L','LIP_R'};
keys.batching.monkeys                   ={'Linus'};
% keys.Tesla.date                         ='[20160217 20180101]';
%keys.Linus.date                         ='[20161103 20180101]';
keys.Linus.date                         ='[20171023 20171109]';
 

%% cell count settings
keys.plot.polars_on_extra_figure        =0;

%% criterions to exclude trials and units

keys.cal.stablity                       =[1];                     % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the table
keys.cal.single_rating                  =[1,2,3];                   % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.SNR_rating                     =[1,2,3,4];                 % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.min_trials_per_condition       =3;                         % minimum trials per conditon (look at ph_arrange_positions to see how conditions are defined)
keys.cal.min_spikes_per_unit            =50;                        % excluding units that have in total less spikes (workaround for sortcode assignment bug) - to be removed
keys.cal.perturbation_groups            ={0,3};       % which perturbation values from excel table will be assigned to control and perturbation for comparisons and population analysis

%% epochs
keys.EPOCHS_PER_TYPE{4}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.05,   0.15,   'INI';...
    'EDel',     8, 	0.3,    0.6,   'INI';...
    'Del',      4, 	-0.3,   0,      'INI';...
    'PreS',     60,	-0.17, 	-0.01,  'INI';...
    'PeriS',	60,	-0.01, 	0.15,   'INI';...
    'PostS',	61,	0.05,   0.2,    'INI';...
%     'PreR',     62,	-0.3, 	-0.01,  'INI';...
%     'PeriR',	62,	-0.05, 	0.15,   'INI';...
%     'PostR',	63,	0.05,   0.2,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };

keys.WINDOWS_PER_TYPE{4}={...
%     'Fixation',     3,	-1.2,   0.17;...
    'Delay Period', 6,	-0.33,  1.25;...
    'Saccade',      60,	-0.25,   0.6;...
%     'Reach',        62,	-0.35,  0.7;...
    };  

keys.ANOVAS_PER_TYPE(4).epoch={'INI' 'Facq';...
    'Fhol' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'Del';...
    'Fhol' 'PreS';...
    'Fhol' 'PeriS';...
    'Fhol' 'PostS';...
%     'Fhol' 'PreR';...
%     'Fhol' 'PeriR';...
    'Fhol' 'Thol'};


%% tuning table selection
% Most important parameter to understand how cell seleciton works in the population analysis, is the trial criterion per condition:
% units with less than this amount of trials for one of the conditions will be excluded. 
keys.cal.min_trials_per_condition       =3;
% This criterion is applied every time the tuning table is loaded via ph_load_extended_tuning_table and ph_reduce_tuning_table. 
% The tricky part here is to define the conditions in which we ask for a specific number of trials. 
% Each condition is defined by tasktype(contains type,effector,and
% position_arrangement),position (depends on arrangement),hand used and choice/instruced trial (MISSING HERE: PERTURBATION)
keys.tt.tasktypes                   ={'Ddsa_han'}; % typically only one tasktype defines
keys.tt.hands                       =[1 2];
keys.tt.choices                     =[1]; %IMPORTANT: and also not really perfect, for choice trials trial criterion is applied by hemifield, not by position.
% Each unique combination of the above parameters has to contain at least keys.cal.min_trials_per_condition trials, if not the cell is excluded in ph_reduce_tuning_table
keys.tt.selection                   ={'target','LIP'};                         % easy to use if there is a parameter in the tuning table for which you want your cells to have the same value
%                                       'in_NH_TIhol_position_Msac_opt','true'};  % each row in the cell arry�y will be used to exclude cells that don't have the specifie characteristic
keys.tt.unselect                    ={}; % easy to use if there is a parameter in the tuning table for which your cells shouldn't have a specific value
keys.tt.combine_tuning_properties   ={'hand_tuning','in_IH_Facq_epoch_Ddsa_han','in_CH_Facq_epoch_Ddsa_han'}; % results in enen/ensu/suen/en-/-en/su-/-su/--
% ph_load_extended_tuning_table will create an additional column from combining existing columns: 
% 1st entry is the name of the new column (to refer to it), and the following entries specify the columns which should be combined.
% this additional column can be used for grouping, specific selection and/or unselection ph_load_extended_tuning_table also creates new columns which can be used
% for multicomparison correction (sort of) by excluding cells that did not show certain combination of ANOVA effects (this is ONLY used in cell_counts so far
keys.tt.epoch_criterion             ='none'; % only relevant for cell counts
keys.tt.space_criterion             ='none';
keys.tt.hands_criterion             ='none';
keys.tt.SXH_criterion               ='none';


%% tuning onset keys

cc=0;

cc=cc+1;% 'Msac choice tuning - choice vs instructed';
ce=0;
keys.ons(cc).comparisons_title    	= 'Ddsa perturbation effects';
keys.ons(cc).group_parameter     	= 'ungrouped';
keys.ons(cc).conditions_to_plot   	= {'Ddsa'};
keys.ons(cc).tt.hands             	= [1 2]; %for cell exclusion
keys.ons(cc).tt.choices            	= [1]; %for cell exclusion
keys.ons(cc).tt.perturbations   	= [0 1]; 
keys.ons(cc).tt.tasktypes         	= {'Ddsa_han'};
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.IH_IS_IN/255; keys.colors.IH_IS_CH/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='ipsi hand Ipsilateral';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.IH_CS_IN/255; keys.colors.IH_CS_CH/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Ipsi hand Contralateral';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=2;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=2;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.CH_IS_IN/255; keys.colors.CH_IS_CH/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Contra hand Ipsilateral';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=2;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=2;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.CH_CS_IN/255; keys.colors.CH_CS_CH/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Contra hand Contralateral';


%% population PSTH settings
cc=0;
% 1
cc=cc+1;
keys.pop(cc).tt.hands                  	= [1 2];
keys.pop(cc).tt.perturbations         	= [0 1];
keys.pop(cc).tt.choices             	= [0 1];
keys.pop(cc).tt.selection             	={};
keys.pop(cc).tt.unselect              	={};
keys.pop(cc).tt.tasktypes               = {'Ddsa_han'};
keys.pop(cc).group_parameter            = 'ungrouped'; %hand_tuning
keys.pop(cc).group_excluded             = {};%{'susu','ensu','suen','-su','su-','--'};
keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
keys.pop(cc).epoch_PF                   = 'Cue';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_RF                   = 'Cue';               % epoch for which gaussian response fields will be plotted (if plot_RF ~ 0)
keys.pop(cc).epoch_BL                   = 'Fhol';                % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).FR_subtract_baseline       = 0;   
keys.pop(cc).epoch_for_normalization    = 'none';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'none';        % separate (divisive) normalization factor for trials grouped by effector; other options:
                                                                % 'by_condition','by_effector','by_type','by_all_trials','z_score','none'
%% cell count settings

cc=0;

cc=cc+1;
keys.ccs(cc).tt.choices                    	=1;
keys.ccs(cc).tt.hands                     	=[1 2];
keys.ccs(cc).tt.perturbations             	=[0 1];
keys.ccs(cc).tt.tasktypes                   = {'Ddsa_han'};
keys.ccs(cc).plot_type                  	='hands_inactivation';
keys.ccs(cc).factor                      	='epoch';
keys.ccs(cc).conditions_to_plot          	={'Ddsa'};
keys.ccs(cc).epochs.Ddsa                  	={'INI', 'Fhol','Cue','EDel','Del','PreS','PeriS','PostS','Thol'}'; 
                                                                
%% scatter keys
cc=0;
% reaches inactivation stuff


%Cue
cc=cc+1;
keys.sct(cc).X='in_IH_IS_Fhol_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_Fhol_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_Fhol_PT_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_Fhol_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=1;
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_Fhol_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_Fhol_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_Fhol_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_Fhol_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_Fhol_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_Fhol_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_Fhol_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_Fhol_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_Fhol_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_Fhol_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_Fhol_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_Fhol_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

% example for plotting FR control versus perturbation

%Cue
cc=cc+1;
keys.sct(cc).X='in_IH_IS_Cue_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_Cue_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_Cue_PT_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_Cue_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_Cue_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_Cue_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_Cue_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_Cue_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_Cue_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_Cue_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_Cue_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_Cue_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_Cue_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_Cue_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_Cue_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_Cue_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%Del
cc=cc+1;
keys.sct(cc).X='in_IH_IS_Del_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_Del_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_Del_PT_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_Del_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_Del_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_Del_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_Del_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_Del_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_Del_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_Del_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_Del_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_Del_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_Del_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_Del_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_Del_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_Del_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%PreR
cc=cc+1;
keys.sct(cc).X='in_IH_IS_PreS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_PreS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_PreS_PT_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_PreS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_PreS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_PreS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_PreS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_PreS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_PreS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_PreS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_PreS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_PreS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_PreS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_PreS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_PreS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_PreS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%PeriR
cc=cc+1;
keys.sct(cc).X='in_IH_IS_PeriS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_PeriS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_PeriS_PT_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_PeriS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_PeriS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_PeriS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_PeriS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_PeriS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_PeriS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_PeriS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_PeriS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_PeriS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_PeriS_CT_FR_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_PeriS_PT_FR_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_PeriS_PT_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_PeriS_PT_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%% Plot normalized FR
% example for plotting FR control versus perturbation
%Cue
cc=cc+1;
keys.sct(cc).X='in_IH_IS_Cue_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_Cue_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_Cue_PTbl_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_Cue_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_Cue_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_Cue_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_Cue_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_Cue_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_Cue_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_Cue_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_Cue_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_Cue_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_Cue_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_Cue_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_Cue_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_Cue_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%Del
cc=cc+1;
keys.sct(cc).X='in_IH_IS_Del_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_Del_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_Del_PTbl_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_Del_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_Del_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_Del_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_Del_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_Del_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_Del_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_Del_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_Del_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_Del_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_Del_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_Del_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_Del_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_Del_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%PreR
cc=cc+1;
keys.sct(cc).X='in_IH_IS_PreS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_PreS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_PreS_PTbl_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_PreS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_PreS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_PreS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_PreS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_PreS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_PreS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_PreS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_PreS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_PreS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_PreS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_PreS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_PreS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_PreS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

%PeriS
cc=cc+1;
keys.sct(cc).X='in_IH_IS_PeriS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_IS_PeriS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_IS_PeriS_PTbl_Ddsa_han'; % O > ^ o (filled) 
keys.sct(cc).Y_sig='in_IH_IS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];


cc=cc+1;
keys.sct(cc).X='in_IH_CS_PeriS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_IH_CS_PeriS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_IH_CS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_IH_CS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_CS_PeriS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_CS_PeriS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_CS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_CS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];

cc=cc+1;
keys.sct(cc).X='in_CH_IS_PeriS_CT_epoch_DF_Ddsa_han';
keys.sct(cc).Y='in_CH_IS_PeriS_PT_epoch_DF_Ddsa_han';
keys.sct(cc).X_sig='in_CH_IS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).Y_sig='in_CH_IS_PeriS_PTbl_Ddsa_han';
keys.sct(cc).tt.tasktypes={'Ddsa_han'};
keys.sct(cc).tt.IC_for_criterion='in';
keys.sct(cc).tt.hands=[1 2];
keys.sct(cc).tt.choices=[1];
keys.sct(cc).tt.perturbations               = [0 1];






%% saccades inactivation stuff
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Fhol_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Fhol_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Fhol_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Fhol_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Fhol_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Fhol_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Cue_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Cue_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Cue_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Cue_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Cue_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Cue_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Del_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Del_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Del_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Del_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Del_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Del_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_PreS_IS_IH_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_PreS_CS_IH_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_PreS_IS_IH_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_PreS_CS_IH_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_PreS_IS_CH_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_PreS_CS_CH_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_PreS_IS_CH_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_PreS_CS_CH_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_PeriS_IS_IH_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_PeriS_CS_IH_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_PeriS_IS_IH_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_PeriS_CS_IH_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_PeriS_IS_CH_PT_ES_Ddsa_han';
% keys.sct(cc).Y='in_PeriS_CS_CH_PT_ES_Ddsa_han';
% keys.sct(cc).X_sig='in_PeriS_IS_CH_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_PeriS_CS_CH_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[1];
% 

