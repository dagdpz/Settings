%keys.plot.population_PSTH_legends       =0;         % if population legends should be plotted or not
% to check carefully
%keys.task_types             ={'mem'};
%keys.datasets               ={'Msac'};
keys.position_and_plotting_arrangements         ={'options'};
%keys.position_and_plotting_arrangements         ={'movement vectors','target location by origin'};
%keys.plot.vertical_positons_PSTH        =1;
%keys.plot.average_heat_maps             =1;

%keys.plot.single_cells                  =1;         % perform single cell plotting

% computation settings
%keys.cal.stablity                   =[0.5,1];
%keys.cal.single_rating              =[1,2,3];                   % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
%keys.cal.SNR_rating                 =[1,2,3];
keys.cal.effectors                  =[0];
keys.cal.reach_hand                 =[0];
keys.cal.types                      =[4];
%keys.cal.min_trials_per_condition       =4; %Ppopulation analysis
keys.cal.units_from_sorting_table       =0;

% batching
%keys.batching.combine_monkeys       =0;                        % for population analysis
%keys.batching.targets               ={'dPulv'};
keys.batching.monkeys               ={'Curius'};
keys.Curius.date                    ='[20210119 20210119]';
% 
% keys.batching.monkeys               ={'Curius'};
% keys.Curius.date                    ='[20190828 20190828]';
% keys.Curius.marker                  ='o';

% %% epochs
% keys.EPOCHS_PER_TYPE{2}={...
%     'INI',      2,	-0.4,	-0.1,   'INI';...
%     'Fhol',     4,	-0.3,	0,      'INI';...
%     'Cue',      4,	0.07,	0.17,   'INI';...
%     'PreS',     60,	-0.1,	-0.01,  'INI';...
%     'PeriS',    60,	-0.01,  0.05,   'INI';...
%     'Tacq',     5,	0,      0.1,    'INI';...
%     'Thol',     20,	-0.3,	0,      'INI';...
%     };
% 
% keys.ANOVAS_PER_TYPE(2).epoch={'INI' 'Facq';...
%     'INI' 'Fhol';...
%     'Fhol' 'Cue';...
%     'Fhol' 'PreS';...
%     'Fhol' 'PeriS';...
%     'Fhol' 'Tacq';...
%     'Fhol' 'Thol'};
% 
% keys.WINDOWS_PER_TYPE{2}={...
%     'Initiation',   2,	-0.5,	0;...
%     'Visual onset', 4,	-0.8,   0.17;...
%     'Saccade',      60,	-0.01,  0.22;...
%     'T hold',       20,	-0.3,   0.1;...
%     };
% 
% keys.ANOVAS_PER_TYPE(2).spaceLR            ={'Cue','PreS','PeriS','Tacq','Thol'}';
% keys.ANOVAS_PER_TYPE(2).positions          ={'Cue','PreS','PeriS','Tacq','Thol'}';
% keys.ANOVAS_PER_TYPE(2).hands              ={'Fhol','Cue','PreS','PeriS','Tacq','Thol'}';
% keys.ANOVAS_PER_TYPE(2).SxH                ={'Cue','PreS','PeriS','Tacq','Thol'}';
% keys.ANOVAS_PER_TYPE(2).main              ={'INI','Fhol','Cue','PreS','PeriS','Tacq','Thol'}';
% 
% keys.EPOCHS_PER_TYPE{3}={...
%     'INI',      2,	-0.4,	-0.1,   'INI';...
%     'Fhol',     6,	-0.3,	0,      'INI';...
%     'Cue',      6,	0.05,   0.15,   'INI';...
%     'MemL',     9,	-0.3, 	-0,     'INI';...
%     'PreS',     60,	-0.1, 	-0.01,  'INI';...
%     'PeriS',	60,	-0.01,  0.05,   'INI';...
%     'TIhol',	10,	0,      0.15,   'INI';...
%     'Tons',     4,	0.02,   0.12,   'INI';...
%     'Thol',     5,	0.2,    0.5,    'INI';...
%     };
% 
% keys.WINDOWS_PER_TYPE{3}={...
%     'Cue',          6,	-0.8,   0.78;...
%     'Saccade',      60,	-0.7,   0.8;...
%     'Target',       4,	-0.2,   0.7;...
%     };
% 
% keys.ANOVAS_PER_TYPE(3).epoch={'INI' 'Fhol';...
%     'Fhol' 'Cue';...
%     'Fhol' 'MemL';...
%     'MemL' 'PreS';...
%     'MemL' 'PeriS';...
%     'MemL' 'TIhol';...
%     'MemL' 'Tons';...
%     'MemL' 'Thol';...
%     };
% 
% keys.ANOVAS_PER_TYPE(3).spaceLR            ={'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% keys.ANOVAS_PER_TYPE(3).positions          ={'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% keys.ANOVAS_PER_TYPE(3).hands              ={'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% keys.ANOVAS_PER_TYPE(3).SxH                ={'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% keys.ANOVAS_PER_TYPE(3).main               ={'INI','Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';



% %% population PSTH settings
% %keys.limit_conditions.hands=0;
% cc=0;
% 
% cc=cc+1;% 'Msac epoch tuning';
% ce=0;
% keys.ons(cc).comparisons_title       = 'Msac epoch tuning';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Msac'};
% keys.ons(cc).choices=0; %for cell exclusion
% keys.ons(cc).hands=0; %for cell exclusion
% keys.ons(cc).tt.choices=0; %for cell exclusion
% keys.ons(cc).tt.hands=0; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';
% 
% 
% cc=cc+1;% 1 ungrouped baseline subtraction
% ce=0;
% keys.ons(cc).comparisons_title       = 'Msac instructed space tuning';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Msac'};
% keys.ons(cc).choices=0; %for cell exclusion
% keys.ons(cc).hands=0; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.NH_IS_IN/255; keys.colors.NH_CS_IN/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.NH_IS_IN/255; keys.colors.NH_CS_IN/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.NH_IS_IN/255; keys.colors.NH_CS_IN/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';
% 
% %% POP
% cc=0;
% 
% cc=cc+1;% Creates divisively normalized PSTH and Thol heatmaps (all units)
% keys.pop(cc).epoch_PF                = 'Thol';
% keys.pop(cc).epoch_RF                = 'Thol';
% keys.pop(cc).epoch_GB                = 'none';
% keys.pop(cc).epoch_BL                = 'Fhol';
% keys.pop(cc).epoch_for_normalization = 'Fhol';
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).position_and_plotting_arrangements      = {'movement vectors','target location by origin'};
% keys.pop(cc).FR_subtract_baseline    = 0;
% keys.pop(cc).ylim                    = [];
% keys.pop(cc).plot_per_position       = 1;
% keys.pop(cc).plot_RF                 = 1;
% keys.pop(cc).tt.choices              = 0;
% keys.pop(cc).tt.hands                = 0;
% % 
% % cc=cc+1;% Creates divisively normalized PSTH and Thol heatmaps (with only Thol anova true)
% % keys.pop(cc).epoch_PF                = 'Thol';
% % keys.pop(cc).epoch_RF                = 'Thol';
% % keys.pop(cc).epoch_GB                = 'none';
% % keys.pop(cc).epoch_BL                = 'Fhol';
% % keys.pop(cc).epoch_for_normalization = 'Fhol';
% % keys.pop(cc).normalization           = 'by_effector';
% % keys.pop(cc).group_parameter         = 'ungrouped';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).position_and_plotting_arrangements      = {'target location by origin'};
% % keys.pop(cc).FR_subtract_baseline    = 0;
% % keys.pop(cc).ylim                    = [];
% % keys.pop(cc).plot_per_position       = 0;
% % keys.pop(cc).plot_RF                 = 1;
% % keys.pop(cc).tt.choices              = 0;
% % keys.pop(cc).tt.hands                = 0;
% % keys.pop(cc).tt.selection            = {'in_AH_Thol_position_Msac_tar','true'};
% % 
% % cc=cc+1;% enhancement/suppression, POS-NEG
% % keys.pop(cc).epoch_PF                = 'Thol';
% % keys.pop(cc).epoch_RF                = 'Thol';
% % keys.pop(cc).epoch_BL                = 'Fhol';
% % keys.pop(cc).epoch_GB                = 'none';
% % keys.pop(cc).epoch_for_normalization = 'Thol'; % for percent change, use this isntead!
% % keys.pop(cc).normalization           = 'percent_change';
% % keys.pop(cc).group_parameter         = 'ungrouped';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).position_and_plotting_arrangements      = {'movement vectors','target location by origin'};
% % keys.pop(cc).FR_subtract_baseline    = 0;
% % keys.pop(cc).ylim                    = [];
% % keys.pop(cc).plot_per_position       = 1;
% % keys.pop(cc).tt.choices              = 0;
% % keys.pop(cc).tt.hands                = 0;
% % keys.pop(cc).plot_RF                 = 0;
% 
% % 
% % cc=cc+1;% enhancement/suppression, POS-NEG
% % keys.pop(cc).epoch_PF                = 'Thol';
% % keys.pop(cc).epoch_RF                = 'Thol';
% % keys.pop(cc).epoch_BL                = 'MemL';
% % keys.pop(cc).epoch_GB                = 'none';
% % keys.pop(cc).epoch_for_normalization = 'Thol'; % for percent change, use this isntead!
% % keys.pop(cc).normalization           = 'percent_change';
% % keys.pop(cc).group_parameter         = 'ungrouped';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).position_and_plotting_arrangements      = {'movement vectors','target location by origin'};
% % keys.pop(cc).FR_subtract_baseline    = 0;
% % keys.pop(cc).ylim                    = [];
% % keys.pop(cc).plot_per_position       = 1;
% % keys.pop(cc).tt.choices              = 0;
% % keys.pop(cc).tt.hands                = 0;
% % keys.pop(cc).plot_RF                 = 0;
% 
% %% cell count settings
% cc=0;
% %% basic tuning properties
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices             =0;
% keys.ccs(cc).tt.hands             	=0;
% keys.ccs(cc).factor                 ='position_space';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% cc=cc+1;
% keys.ccs(cc).tt.choices             =0;
% keys.ccs(cc).tt.hands               =0;
% keys.ccs(cc).factor                 ='epoch';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% %gaze
% 
% cc=cc+1; % main ANOVA part
% keys.ccs(cc).tt.hands               =[0];
% keys.ccs(cc).tt.choices             =[0];
% keys.ccs(cc).plot_type              ='fixation_x_position_comb';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).factor                 ='epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% cc=cc+1; % scatter cue & initial gaze
% keys.ccs(cc).tt.hands               =[0];
% keys.ccs(cc).tt.choices             =[0];
% keys.ccs(cc).plot_type              ='fixation_x_position_CI';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).factor                 ='epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% cc=cc+1; % only for interactions initial final gaze (?)...
% keys.ccs(cc).tt.hands               =[0];
% keys.ccs(cc).tt.choices             =[0];
% keys.ccs(cc).plot_type              ='gaze';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).factor                 ='epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% % cc=cc+1; 
% % keys.ccs(cc).tt.hands               =[0];
% % keys.ccs(cc).tt.choices             =[0];
% % keys.ccs(cc).plot_type              ='gaze_and_fixation_x_position';
% % keys.ccs(cc).conditions_to_plot     ={'Msac'};
% % keys.ccs(cc).factor                 ='epoch';
% % keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% 
% %% SCATTER
% cs=0;
% 
% 
% %% scatter fixation hold versus target hold space (contra ipsi) tuining
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_tar'};
% keys.sct(cs).X='in_Fhol_spaceLR_DF_Msac_fix';
% keys.sct(cs).Y='in_Thol_spaceLR_DF_Msac_tar';
% keys.sct(cs).X_sig='in_AH_Fhol_position_Msac_fix';
% keys.sct(cs).Y_sig='in_AH_Thol_position_Msac_tar';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_tar'};
% keys.sct(cs).X='in_Fhol_spaceLR_IX_Msac_fix';
% keys.sct(cs).Y='in_Thol_spaceLR_IX_Msac_tar';
% keys.sct(cs).X_sig='in_AH_Fhol_position_Msac_fix';
% keys.sct(cs).Y_sig='in_AH_Thol_position_Msac_tar';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% 
% %% scatter fixation hold versus target hold space (contra ipsi) tuining
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_mov'};
% keys.sct(cs).X='in_Cue_spaceLR_DF_Msac_fix';
% keys.sct(cs).Y='in_Cue_spaceLR_DF_Msac_mov';
% keys.sct(cs).X_sig='in_Cue_spaceLR_Msac_fix';
% keys.sct(cs).Y_sig='in_Cue_spaceLR_Msac_mov';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_mov'};
% keys.sct(cs).X='in_Cue_spaceLR_IX_Msac_fix';
% keys.sct(cs).Y='in_Cue_spaceLR_IX_Msac_mov';
% keys.sct(cs).X_sig='in_Cue_spaceLR_Msac_fix';
% keys.sct(cs).Y_sig='in_Cue_spaceLR_Msac_mov';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_mov'};
% keys.sct(cs).X='in_Fhol_spaceLR_DF_Msac_fix';
% keys.sct(cs).Y='in_Cue_spaceLR_DF_Msac_mov';
% keys.sct(cs).X_sig='in_Fhol_spaceLR_Msac_fix';
% keys.sct(cs).Y_sig='in_Cue_spaceLR_Msac_mov';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_fix','Msac_mov'};
% keys.sct(cs).X='in_Fhol_spaceLR_IX_Msac_fix';
% keys.sct(cs).Y='in_Cue_spaceLR_IX_Msac_mov';
% keys.sct(cs).X_sig='in_Fhol_spaceLR_Msac_fix';
% keys.sct(cs).Y_sig='in_Cue_spaceLR_Msac_mov';
% keys.sct(cs).tt.choices=[0];
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).logarithmic_scale=0;
% 
% 
% %% gaze analysis settings
% cc=0;
% cc=cc+1;
% keys.gaz(cc).normalization              = 'by_position';
% keys.gaz(cc).epoch_for_normalization    = 'Fhol';
% keys.gaz(cc).xory                       = {'x'};
% keys.gaz(cc).center_at_max              = 0;
% keys.gaz(cc).group_parameter            = 'Initial_Gaze_x';
% keys.gaz(cc).conditions_to_plot         = {'Msac'};
% keys.gaz(cc).FR_subtract_baseline       = 0;
% keys.gaz(cc).tt.combine_tuning_properties  = {'Initial_Gaze_x','in_AH_Fhol_positionx_Msac_fix','in_AH_Fhol_gaze_pref_x_Msac_fix'};
% keys.gaz(cc).unselect                   = {};
% keys.gaz(cc).y_lim                      = [];
% keys.gaz(cc).selection                  = {'existing_Msac_fix',true};
% keys.gaz(cc).tt.choices=0;
% % keys.gaz(cc).tt.hands=0;
% % 
% % cc=cc+1;
% % keys.gaz(cc).normalization              = 'by_position';
% % keys.gaz(cc).epoch_for_normalization    = 'Thol';
% % keys.gaz(cc).xory                       = {'x'};
% % keys.gaz(cc).center_at_max              = 0;
% % keys.gaz(cc).group_parameter            = 'Final_Gaze_x';
% % keys.gaz(cc).conditions_to_plot         = {'Msac'};
% % keys.gaz(cc).FR_subtract_baseline       = 0;
% % keys.gaz(cc).tt.combine_tuning_properties  = {'Final_Gaze_x','in_AH_Thol_positionx_Msac_tar','in_AH_Thol_gaze_pref_x_Msac_tar'};
% % keys.gaz(cc).unselect                   = {};
% % keys.gaz(cc).y_lim                      = [];
% % keys.gaz(cc).selection                  = {'existing_Msac_tar',true};
% % keys.gaz(cc).tt.choices=0;
% % keys.gaz(cc).tt.hands=0;
% % 
% % cc=cc+1;
% % keys.gaz(cc).normalization              = 'by_position';
% % keys.gaz(cc).epoch_for_normalization    = 'Thol';
% % keys.gaz(cc).xory                       = {'y'};
% % keys.gaz(cc).center_at_max              = 0;
% % keys.gaz(cc).group_parameter            = 'Final_Gaze_y';
% % keys.gaz(cc).conditions_to_plot         = {'Msac'};
% % keys.gaz(cc).FR_subtract_baseline       = 0;
% % keys.gaz(cc).tt.combine_tuning_properties  = {'Final_Gaze_y','in_AH_Thol_positiony_Msac_tar','in_AH_Thol_gaze_pref_y_Msac_tar'};
% % keys.gaz(cc).unselect                   = {};
% % keys.gaz(cc).y_lim                      = [];
% % keys.gaz(cc).selection                  = {'existing_Msac_tar',true};
% % keys.gaz(cc).tt.choices=0;
% % keys.gaz(cc).tt.hands=0;
% % 
% % 
% % cc=cc+1;
% % keys.gaz(cc).normalization              = 'by_position';
% % keys.gaz(cc).epoch_for_normalization    = 'Thol';
% % keys.gaz(cc).xory                       = {'x'};
% % keys.gaz(cc).center_at_max              = 1;
% % keys.gaz(cc).group_parameter            = 'in_AH_Thol_positionx_Msac_tar';
% % keys.gaz(cc).conditions_to_plot         = {'Msac'};
% % keys.gaz(cc).FR_subtract_baseline       = 0;
% % keys.gaz(cc).tt.combine_tuning_properties  = {'Final_Gaze_x','in_AH_Thol_positionx_Msac_tar','in_AH_Thol_gaze_pref_x_Msac_tar'};
% % keys.gaz(cc).unselect                   = {};
% % keys.gaz(cc).y_lim                      = [];
% % keys.gaz(cc).selection                  = {'existing_Msac_tar',true};
% % keys.gaz(cc).tt.choices=0;
% % keys.gaz(cc).tt.hands=0;
% % 
% % cc=cc+1;
% % keys.gaz(cc).normalization              = 'by_position';
% % keys.gaz(cc).epoch_for_normalization    = 'Thol';
% % keys.gaz(cc).xory                       = {'y'};
% % keys.gaz(cc).center_at_max              = 1;
% % keys.gaz(cc).group_parameter            = 'in_AH_Thol_positiony_Msac_tar';
% % keys.gaz(cc).conditions_to_plot         = {'Msac'};
% % keys.gaz(cc).FR_subtract_baseline       = 0;
% % keys.gaz(cc).tt.combine_tuning_properties  = {'Final_Gaze_y','in_AH_Thol_positiony_Msac_tar','in_AH_Thol_gaze_pref_y_Msac_tar'};
% % keys.gaz(cc).unselect                   = {};
% % keys.gaz(cc).y_lim                      = [];
% % keys.gaz(cc).selection                  = {'existing_Msac_tar',true};
% % keys.gaz(cc).tt.choices=0;
% % keys.gaz(cc).tt.hands=0;
% 
% %% reference frames
% cc=0;
% 
% cc=cc+1;
% keys.ref(cc).tt.IC_for_criterion='in';
% keys.ref(cc).conditions_to_plot={'Msac'};
% keys.ref(cc).position_and_plotting_arrangements={'movement vectors'};
% keys.ref(cc).tt.selection={'target','dPul'};
% keys.ref(cc).tt.hands=0;
% keys.ref(cc).tt.choices=0;
% keys.ref(cc).tt.perturbations=0;
% 
% %% gain feild
% cc=0;
% 
% cc=cc+1;
% keys.gfl(cc).tt.IC_for_criterion='in';
% keys.gfl(cc).conditions_to_plot={'Msac'};
% keys.gfl(cc).position_and_plotting_arrangements={'movement vectors'};
% keys.gfl(cc).tt.selection={'target','dPul'};
% keys.gfl(cc).tt.hands=0;
% keys.gfl(cc).tt.choices=0;
% keys.gfl(cc).tt.perturbations=0;