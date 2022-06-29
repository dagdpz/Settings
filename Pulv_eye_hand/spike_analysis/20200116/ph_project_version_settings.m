
%% to check carefully
keys.position_and_plotting_arrangements         ={'hands'};

%% computation settings
keys.cal.stablity       =[1];
keys.cal.single_rating  =[1,2];
keys.cal.effectors      =[3,4,6];
keys.cal.reach_hand     =[1,2];
keys.cal.types          =[4];

%% batching
keys.batching.combine_monkeys       =1;
keys.batching.targets               ={'dPulv'};
keys.batching.monkeys               ={'Flaffus'};
keys.Flaffus.date                   ='[20160617 20160617]';
%keys.Flaffus.date                  ='[20160203 20161206]';
keys.Linus.date                     ='[20160203 20160606]';

%% for cell counts in general, but could also be used for PSTH!?
keys.tt.epoch_criterion             ='none';
keys.tt.position_criterion          ='none';
keys.tt.space_criterion             ='none';
keys.tt.type_effectors              ={'Msac','Vsac'};
% 
% %% cell count settings
% keys.cc.factors                     ={'epoch','space','hand'};
% keys.cc.conditions_to_plot          ={'Dcfr','Ddre','Ddsa'};
% keys.tt.SXH_criterion               ='SXH SXE HXE SHE';

%% Delay type
keys.EPOCHS_PER_TYPE{4}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.05,   0.15,   'INI';...
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
keys.WINDOWS_PER_TYPE{4}={...
    'Initiation',   2,	-0.5,	0.4;...
    'Fixation',     3,	-1.2,   0.17;...
    'Delay Period', 6,	-0.33,  1.35;...
    'Saccade',      60,	-0.1,   0.6;...
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
keys.ANOVAS_PER_TYPE(4).main                ={'INI','Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';



%% cell count settings
cc=0;

cc=cc+1;
keys.ccs(cc).IC_to_plot             ='in';
keys.ccs(cc).tt.choices             =[0];
keys.ccs(cc).tt.hands               =[1 2];
keys.ccs(cc).factor                 ='hand';
keys.ccs(cc).conditions_to_plot     ={'Ddre','Ddsa','Dcfr'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Ddre            ={'INI', 'Facq','Fhol','Cue','EDel','Del','PreR','PeriR','PostR','Thol'}';
keys.ccs(cc).epochs.Ddsa            ={'INI', 'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','Thol'}';
keys.ccs(cc).epochs.Dcfr            ={'INI', 'Facq','Fhol','Cue','EDel','Del','PreS','PeriS','PostS','PreR','PeriR','PostR','Thol'}';


%% tuning onset settings
cc=0;

cc=cc+1;% 'Vsac epoch tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Reach effector tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Ddre';'Dcfr'};
keys.ons(cc).tt.choices=0; %for cell exclusion
keys.ons(cc).tt.hands=[1 2]; %for cell exclusion
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Delay Period', -0.33, 1.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EF_RE/255; keys.colors.EF_FG/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=[1 2];
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).effector{1}=[4];
keys.ons(cc).comparisons_per_effector(ce).effector{2}=[6];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Reach', -0.35, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EF_RE/255; keys.colors.EF_FG/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Reach onset';


%% population PSTH settings
cc=0;
% 1
cc=cc+1;
keys.pop(cc).normalization              = 'none';
keys.pop(cc).group_parameter            = 'ungrouped';
keys.pop(cc).conditions_to_plot         = {'Ddre';'Ddsa';'Dcfr'}; 
keys.pop(cc).FR_subtract_baseline       = 1;
keys.pop(cc).normalization              = 'by_type';
keys.pop(cc).group_parameter            = 'ungrouped'; % 'in_AH_Cue_epoch_Msac_opt';
keys.pop(cc).group_excluded             = {'-'};
keys.pop(cc).epoch_PF                  	= 'Cue';
keys.pop(cc).epoch_RF                  	= 'Cue';
keys.pop(cc).epoch_BL                  	= 'Fhol';
keys.pop(cc).epoch_GB                  	= 'Fhol';
keys.pop(cc).epoch_for_normalization  	= 'Fhol';
keys.pop(cc).tt.combine_tuning_properties       = {'tuning','in_Cue_spaceLR_Msac_opt','in_AH_Cue_position_Msac_opt'};
keys.pop(cc).tt.choices                 = [0];
keys.pop(cc).tt.hands                   = [1 2];
keys.pop(cc).plot_RF                 	= 0;
keys.pop(cc).RF_frame_colors            = {keys.colors.CS_IN,keys.colors.CS_CH,keys.colors.IS_IN,keys.colors.IS_CH,[0 255 0],[127 127 127]};
keys.pop(cc).RF_frame_entries           = {'CStrue','CSfalse','IStrue','ISfalse','-true','-false'};
keys.pop(cc).RF_frame_parameter         = 'tuning';
keys.pop(cc).RF_columns                 = 16;
keys.pop(cc).RF_rows                    = 10;
keys.pop(cc).fittypes={'gaussian1','gaussian15'}; 
% 
% % 2
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreR_spaceLR_Ddre_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 3
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PeriR_spaceLR_Ddre_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 4
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PostR_spaceLR_Ddre_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% 
% % 5
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreR_hands_Ddre_han';
% keys.pop(cc).conditions_to_plot      	= {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 6
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PeriR_hands_Ddre_han';
% keys.pop(cc).conditions_to_plot      	= {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 7
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PostR_hands_Ddre_han';
% keys.pop(cc).conditions_to_plot         = {'Ddre'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% 
% % 8
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreS_spaceLR_Ddsa_han';
% keys.pop(cc).conditions_to_plot         = {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 9
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PeriS_spaceLR_Ddsa_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 10
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PostS_spaceLR_Ddsa_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% 
% % 11
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PreS_hands_Ddsa_han';
% keys.pop(cc).conditions_to_plot      	= {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 12
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PeriS_hands_Ddsa_han';
% keys.pop(cc).conditions_to_plot     	= {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
% % 13
% cc=cc+1;
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_PostS_hands_Ddsa_han';
% keys.pop(cc).conditions_to_plot       	= {'Ddsa'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% 
