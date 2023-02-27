keys.filelist_formatted={};
keys.position_and_plotting_arrangements             ={'hands_inactivation'};

%% computation settings
keys.cal.units_from_sorting_table   =1;
keys.cal.MA_selection                   ={'display',0,'keep_raw_data',1,'saccade_definition',4,'reach_1st_pos',1,'correlation_conditions',{}};                        % if you want to run MA with specific settings

%% what to plot
%keys.plot.single_cells =1;
keys.plot.waveforms=1;
keys.plot.population_PSTH_legends=1;  
keys.plot.polars_on_extra_figure        =0;
keys.cal.n_permutations  =1;

%% epochs
  keys.EPOCHS_PER_TYPE{4}={...
    'Fhol',     6,	-0.4,	-0.1,   'Fhol';...
    'Cue',      6,	0.05,   0.35,   'Fhol';...
    'Del',      4, 	-0.5,   -0.2,   'Fhol';...
    'PreS',     60,	-0.3, 	0,      'Fhol';...
%   'PeriS',	60,	-0.15, 	0.15,   'INI';...
    'PostS',	61,	0.05,   0.35,    'Fhol';...
%   'Thol',     20,	-0.1,   0,      'INI';...    
    };

keys.WINDOWS_PER_TYPE{4}={...
     'Cue', 6,	-0.4,  0.8;... %1.35
     'Saccade',        60,	-0.8,  0.4;... %-0.35
    };  
    
    keys.ANOVAS_PER_TYPE(4).epoch={'INI' 'Facq';...
    'Fhol' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'Del';...
    'Fhol' 'PreS';...
%     'INI' 'PeriS';...
    'Fhol' 'PostS';...
    'Fhol' 'Thol'};


keys.ANOVAS_PER_TYPE(4).hemifield          ={'INI','Facq','Fhol','Cue','Del','PreS','PeriS','PostS','Thol'}';
keys.ANOVAS_PER_TYPE(4).positions          ={'Facq','Fhol','Cue','Del','PreS','PeriS','PostS','Thol'}';
keys.ANOVAS_PER_TYPE(4).hands              ={'INI','Facq','Fhol','Cue','Del','PreS','PeriS','PostS','Thol'}';
keys.ANOVAS_PER_TYPE(4).SxH                ={'INI','Facq','Fhol','Cue','Del','PreS','PeriS','PostS','Thol'}';
keys.ANOVAS_PER_TYPE(4).main               ={'INI','Facq','Fhol','Cue','Del','PreS','PeriS','PostS','Thol'}';

%% tuning table excel keys
keys.AN.multicomp_epochs=keys.ANOVAS_PER_TYPE;
keys.AN.multicomparison='none';

cc=0;  
cc=cc+1;
keys.tun(cc).redo_statistics=1;
keys.tun(cc).conditions_to_plot = {'Dsac'};
keys.tun(cc).unique_title='No_multicomparison';
keys.tun(cc).tt.tasktypes = {'Dsac'}; %% why is this needed ??

%% single cell plotting keys
cc=0;
cc=cc+1;
keys.uni(cc).line_labelling                ='contra/ipsi';
keys.uni(cc).anova_main    ={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_effector={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_epoch1  ={'E','in_AH','epoch','S','in','hemifield','C','ch','hemifield','H','in','hands','SxH','in','SxH'};
keys.uni(cc).anova_epoch2  ={'II','in_IH_IS','PT','CI','in_IH_CS','PT','IC','in_CH_IS','PT','CC','in_CH_CS','PT'};

%% population PSTH settings
 cc=0;
 %{'ch_IS_PeriS_PTbl_Dsac_han','SU'} %% what would this be exactly? baseline corrected tests?
 set_of_selections={...
{},...
{'in_Del_epoch_Dsac_han','en'},...
{'visual_del_Dsac_han','1'},...
{'ch_PreS_hemifield_Dsac_han','IS'},...
{'ch_PostS_hemifield_Dsac_han','IS'},...
{'ch_PostS_hemifield_Dsac_han','CS'},...
 };

%% non_normalized
for xx=1:numel(set_of_selections)
cc=cc+1;
keys.pop(cc).tt.reach_hand              = [0];
keys.pop(cc).tt.perturbation          	= [0 1]; %NaN
keys.pop(cc).tt.choice                	= [0 1];
keys.pop(cc).tt.selection             	= set_of_selections{xx};
keys.pop(cc).tt.tasktypes               = {'Dsac_han'};
keys.pop(cc).group_parameter            = 'ungrouped'; %hand_tuning
keys.pop(cc).conditions_to_plot         = {'Dsac'}; 
keys.pop(cc).epoch_PF                   = 'Cue';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_BL                   = 'none';                % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).epoch_DN                   = 'Fhol';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'none';    
end

%% normalized
for xx=1:numel(set_of_selections)
cc=cc+1;
keys.pop(cc).tt.reach_hand              = [0];
keys.pop(cc).tt.perturbation          	= [0 1]; %NaN
keys.pop(cc).tt.choice                	= [0 1];
keys.pop(cc).tt.tasktypes               = {'Dsac_han'};
keys.pop(cc).group_parameter            = 'ungrouped'; %hand_tuning
keys.pop(cc).conditions_to_plot         = {'Dsac'}; 
keys.pop(cc).epoch_PF                   = 'Cue';               % epoch in which preference defines target location for "pref" plots
keys.pop(cc).epoch_BL                   = 'Fhol';                % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
keys.pop(cc).epoch_DN                   = 'Fhol';               % epoch used for (divisive) normalization
keys.pop(cc).normalization              = 'by_perturbation';    
end


% cell count

cc=0;

cc=cc+1;
keys.ccs(cc).tt.choice               	= [1];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_inactivation_baseline';
keys.ccs(cc).factor                   	= 'epoch';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'ch'; 
 keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};

cc=cc+1;
keys.ccs(cc).tt.choice               	= [0];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_inactivation_baseline';
keys.ccs(cc).factor                   	= 'epoch';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'in'; 
 keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};


cc=cc+1;
keys.ccs(cc).tt.choice               	= [1];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
keys.ccs(cc).factor                   	= 'space';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'ch'; 
 keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};

cc=cc+1;
keys.ccs(cc).tt.choice               	= [0];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
keys.ccs(cc).factor                   	= 'space';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'in'; 
 keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};

cc=cc+1;
keys.ccs(cc).tt.choice               	= [0];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation_baseline';
keys.ccs(cc).factor                   	= 'space';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'in'; 
keys.ccs(cc).tt.selection             	= {};

cc=cc+1;
keys.ccs(cc).tt.choice               	= [1];
keys.ccs(cc).tt.reach_hand              = [0];
keys.ccs(cc).tt.perturbation          	= 0;
keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation_baseline';
keys.ccs(cc).factor                   	= 'space';
keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
keys.ccs(cc).IC_to_plot              	= 'ch'; 
keys.ccs(cc).tt.selection             	= {};



%% tuning onset keys

% cc=0;
% 
% cc=cc+1;% 'Msac choice tuning - choice vs instructed';
% ce=0;
% keys.ons(cc).comparisons_title    	= 'Ddsa perturbation effects';
% keys.ons(cc).group_parameter     	= 'ungrouped';
% keys.ons(cc).conditions_to_plot   	= {'Ddsa'};
% keys.ons(cc).tt.hands             	= [1 2]; %for cell exclusion
% keys.ons(cc).tt.choices            	= [0]; %for cell exclusion
% keys.ons(cc).tt.perturbations   	= [0 1]; 
% keys.ons(cc).tt.tasktypes         	= {'Ddsa_han'};
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.IH_IS_IN/255; keys.colors.IH_IS_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='ipsi hand Ipsilateral';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.IH_CS_IN/255; keys.colors.IH_CS_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Ipsi hand Contralateral';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=2;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=2;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.CH_IS_IN/255; keys.colors.CH_IS_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Contra hand Ipsilateral';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=2;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=2;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).perturbations{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period',-0.33,1.32};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.CH_CS_IN/255; keys.colors.CH_CS_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Contra hand Contralateral';
% 
% 
% %% population PSTH settings
% cc=0;
% % 1
% cc=cc+1;
% keys.pop(cc).tt.hands                  	= [1 2];
% keys.pop(cc).tt.perturbations         	= [0 1];
% keys.pop(cc).tt.choices             	= 0;
% keys.pop(cc).tt.selection             	={};
% keys.pop(cc).tt.unselect              	={};
% keys.pop(cc).tt.tasktypes               = {'Ddsa_han'};
% keys.pop(cc).group_parameter            = 'ungrouped'; %hand_tuning
% keys.pop(cc).group_excluded             = {};%{'susu','ensu','suen','-su','su-','--'};
% keys.pop(cc).conditions_to_plot         = {'Ddsa'}; 
% keys.pop(cc).epoch_PF                   = 'Cue';               % epoch in which preference defines target location for "pref" plots
% keys.pop(cc).epoch_RF                   = 'Cue';               % epoch for which gaussian response fields will be plotted (if plot_RF ~ 0)
% keys.pop(cc).epoch_BL                   = 'Fhol';                % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
% keys.pop(cc).FR_subtract_baseline       = 0;   
% keys.pop(cc).epoch_for_normalization    = 'none';               % epoch used for (divisive) normalization
% keys.pop(cc).normalization              = 'none';        % separate (divisive) normalization factor for trials grouped by effector; other options:
%                                                                 % 'by_condition','by_effector','by_type','by_all_trials','z_score','none'
% %% cell count settings
% 
% cc=0;
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices                    	=0;
% keys.ccs(cc).tt.hands                     	=[1 2];
% keys.ccs(cc).tt.perturbations             	=[0 1];
% keys.ccs(cc).tt.tasktypes                   = {'Ddsa_han'};
% keys.ccs(cc).plot_type                  	='hands_inactivation';
% keys.ccs(cc).factor                      	='epoch';
% keys.ccs(cc).conditions_to_plot          	={'Ddsa'};
% keys.ccs(cc).epochs.Ddsa                  	={'INI', 'Fhol','Cue','EDel','Del','PreS','PeriS','PostS','Thol'}'; 
%                                                                 
% %% scatter keys
% cc=0;
% % reaches inactivation stuff
% 
% 
% %Cue
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Fhol_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_Fhol_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Fhol_PT_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=0;
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_Fhol_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Fhol_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_Fhol_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Fhol_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Fhol_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_Fhol_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Fhol_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_Fhol_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% % example for plotting FR control versus perturbation
% 
% %Cue
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Cue_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_Cue_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Cue_PT_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_Cue_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Cue_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_Cue_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Cue_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Cue_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_Cue_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Cue_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_Cue_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %Del
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Del_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_Del_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Del_PT_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_Del_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Del_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_Del_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Del_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Del_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_Del_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Del_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_Del_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %PreR
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_PreS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_PreS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_PreS_PT_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_PreS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_PreS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_PreS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_PreS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_PreS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_PreS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_PreS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_PreS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_PreS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_PreS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_PreS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_PreS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_PreS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %PeriR
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_PeriS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_PeriS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_PeriS_PT_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_PeriS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_PeriS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_PeriS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_PeriS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_PeriS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_PeriS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_PeriS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_PeriS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_PeriS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_PeriS_CT_FR_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_PeriS_PT_FR_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_PeriS_PT_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_PeriS_PT_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %% Plot normalized FR
% % example for plotting FR control versus perturbation
% %Cue
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Cue_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_Cue_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Cue_PTbl_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_Cue_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Cue_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_Cue_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Cue_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Cue_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_Cue_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_Cue_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %Del
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_Del_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_Del_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_Del_PTbl_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_Del_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_Del_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_Del_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_Del_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_Del_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_Del_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_Del_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_Del_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_Del_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_Del_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_Del_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_Del_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_Del_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %PreR
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_PreS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_PreS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_PreS_PTbl_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_PreS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_PreS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_PreS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_PreS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_PreS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_PreS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_PreS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% %PeriS
% cc=cc+1;
% keys.sct(cc).X='in_IH_IS_PeriS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_IS_PeriS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_IS_PeriS_PTbl_Ddsa_han'; % O > ^ o (filled) 
% keys.sct(cc).Y_sig='in_IH_IS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% cc=cc+1;
% keys.sct(cc).X='in_IH_CS_PeriS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_IH_CS_PeriS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_IH_CS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_IH_CS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_CS_PeriS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_CS_PeriS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_CS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_CS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% cc=cc+1;
% keys.sct(cc).X='in_CH_IS_PeriS_CT_epoch_DF_Ddsa_han';
% keys.sct(cc).Y='in_CH_IS_PeriS_PT_epoch_DF_Ddsa_han';
% keys.sct(cc).X_sig='in_CH_IS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).Y_sig='in_CH_IS_PeriS_PTbl_Ddsa_han';
% keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% keys.sct(cc).tt.IC_for_criterion='in';
% keys.sct(cc).tt.hands=[1 2];
% keys.sct(cc).tt.choices=[0];
% keys.sct(cc).tt.perturbations               = [0 1];
% 
% 
% 
% 
% 
% 
% %% saccades inactivation stuff
% % cc=cc+1;
% % keys.sct(cc).X='in_IH_IS_Fhol_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_IH_CS_Fhol_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_IH_IS_Fhol_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_IH_CS_Fhol_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_CH_IS_Fhol_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_CH_CS_Fhol_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_CH_IS_Fhol_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_CH_CS_Fhol_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_IH_IS_Cue_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_IH_CS_Cue_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_IH_IS_Cue_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_IH_CS_Cue_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_CH_IS_Cue_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_CH_CS_Cue_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_CH_IS_Cue_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_CH_CS_Cue_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_IH_IS_Del_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_IH_CS_Del_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_IH_IS_Del_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_IH_CS_Del_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_CH_IS_Del_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_CH_CS_Del_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_CH_IS_Del_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_CH_CS_Del_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_PreS_IS_IH_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_PreS_CS_IH_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_PreS_IS_IH_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_PreS_CS_IH_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_PreS_IS_CH_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_PreS_CS_CH_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_PreS_IS_CH_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_PreS_CS_CH_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_PeriS_IS_IH_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_PeriS_CS_IH_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_PeriS_IS_IH_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_PeriS_CS_IH_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% % cc=cc+1;
% % keys.sct(cc).X='in_PeriS_IS_CH_PT_ES_Ddsa_han';
% % keys.sct(cc).Y='in_PeriS_CS_CH_PT_ES_Ddsa_han';
% % keys.sct(cc).X_sig='in_PeriS_IS_CH_PT_Ddsa_han';
% % keys.sct(cc).Y_sig='in_PeriS_CS_CH_PT_Ddsa_han';
% % keys.sct(cc).tt.tasktypes={'Ddsa_han'};
% % keys.sct(cc).tt.IC_for_criterion='in';
% % keys.sct(cc).tt.hands=[1 2];
% % keys.sct(cc).tt.choices=[0];
% % 
% 

%%%% from Bacchus settings

% 
% %% population PSTH settings
%  cc=0;
% % % 1
%  cc=cc+1;
% keys.pop(cc).tt.hands                 	= [0];
% keys.pop(cc).tt.perturbations          	= [0 1];
% keys.pop(cc).tt.choices                	= [0 1];
% % keys.pop(cc).tt.selection             	= {'in_AH_IS_Del_epoch_Dsac_han','en'};
% %   keys.pop(cc).tt.selection             	= {'ch_PeriS_spaceLR_Dsac_han','IS'};
% %   keys.pop(cc).tt.selection             	= {};
%      keys.pop(cc).tt.selection             	= {'motor_en_Dsac_han','1'};
% %     keys.pop(cc).tt.unselect                = {'ch_PreS_spaceLR_Dsac_han','-'};
% %    keys.pop(cc).tt.selection             	= {'ch_IS_PeriS_PTbl_Dsac_han','SU'};
% keys.pop(cc).tt.tasktypes               = {'Dsac_han'};
% keys.pop(cc).group_parameter            = 'ungrouped'; %hand_tuning
% keys.pop(cc).conditions_to_plot         = {'Dsac'}; 
% keys.pop(cc).epoch_PF                   = 'Cue';               % epoch in which preference defines target location for "pref" plots
% keys.pop(cc).epoch_RF                   = 'Cue';               % epoch for which gaussian response fields will be plotted (if plot_RF ~ 0)
% keys.pop(cc).epoch_BL                   = 'Fhol';                % Epoch to subtract trial by trial (if FR_subtract_baseline ~ 0)
% keys.pop(cc).FR_subtract_baseline       = 0;   
% keys.pop(cc).unselect                   = {};
% keys.pop(cc).group_excluded             = {};%{'susu','ensu','suen','-su','su-','--'};
% keys.pop(cc).epoch_for_normalization    = 'Fhol';               % epoch used for (divisive) normalization
% keys.pop(cc).normalization              = 'none';    
% 
%% cell count

% cc=0;
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [1];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_inactivation_baseline';
% keys.ccs(cc).factor                   	= 'epoch';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'ch'; 
%  keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [0];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_inactivation_baseline';
% keys.ccs(cc).factor                   	= 'epoch';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'in'; 
%  keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};
% 
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [1];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
% keys.ccs(cc).factor                   	= 'space';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'ch'; 
%  keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [0];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
% keys.ccs(cc).factor                   	= 'space';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'in'; 
%  keys.ccs(cc).tt.selection             	= {'motor_en_Dsac_han','1'};
% 

% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [1];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
% keys.ccs(cc).factor                   	= 'space';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'ch'; 
%  keys.ccs(cc).tt.selection             	= {'visual_en_Dsac_han','1'};
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices               	= [0];
% keys.ccs(cc).tt.hands                   = [0];
% keys.ccs(cc).tt.perturbations          	= 0;
% keys.ccs(cc).tt.tasktypes              	= {'Dsac_han'};
% keys.ccs(cc).plot_type                 	= 'space_tuning_inactivation';
% keys.ccs(cc).factor                   	= 'space';
% keys.ccs(cc).conditions_to_plot        	= {'Dsac'};
% keys.ccs(cc).epochs.Dsac               	= {'Fhol','Cue','Del','PreS','PostS'}'; 
% keys.ccs(cc).IC_to_plot              	= 'in'; 
%  keys.ccs(cc).tt.selection             	= {'visual_en_Dsac_han','1'};
