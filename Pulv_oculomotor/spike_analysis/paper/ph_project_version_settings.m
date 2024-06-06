

%% for cell counts in general, but could also be used for PSTH!?
% keys.tt.epoch_criterion             ='none';
% keys.tt.position_criterion          ='none';
% keys.tt.space_criterion             ='interaction or space only'; %?????
% keys.tt.space_criterion             ='none';

%% cell count settings
cc=0;

%% this one causes trouble, too few colors!?
% cc=cc+1;
% keys.ccs(cc).tt.choice              =0;
% keys.ccs(cc).factor                 ='epoch';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).plot_type              ='space_and_epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ='epoch';
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='visuomotor';
keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';

cc=cc+1;
keys.ccs(cc).IC_to_plot             ='in';
keys.ccs(cc).tt.choice              =[0];
keys.ccs(cc).factor                 ='eccentricity_x_angle';
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='eccentricity_x_angle';
keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ='epoch';
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
keys.ccs(cc).plot_as_pie            =0;

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ='space_position';
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
keys.ccs(cc).plot_as_pie            =0;

% cc=cc+1;
% keys.ccs(cc).IC_to_plot             ='ch';
% keys.ccs(cc).tt.choice              =[0,1];
% keys.ccs(cc).factor                 ='space_position';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 
% cc=cc+1;
% keys.ccs(cc).tt.choice              =0;
% keys.ccs(cc).factor                 ='position_space';
% keys.ccs(cc).conditions_to_plot     ={'Msac'};
% keys.ccs(cc).plot_type              ='per_epoch';
% keys.ccs(cc).epochs.Msac            ={'INI', 'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Tons','Thol'}';
% 

%% tuning onset settings
cc=0;

cc=cc+1;% 'Vsac epoch tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Vsac epoch tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Vsac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
keys.ons(cc).tt.hands=0; %for cell exclusion
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';


cc=cc+1;% 'Vsac space tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Vsac instructed space tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Vsac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade'; 


cc=cc+1;% 'Msac epoch tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Msac epoch tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Msac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';


cc=cc+1;% 'Msac space tuning';
ce=0;
keys.ons(cc).comparisons_title       = 'Msac instructed space tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Msac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).reach_hand{2}=0;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='MemL';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';


% 
% cc=cc+1;% 'Msac choice tuning - choice vs instructed';
% ce=0;
% keys.ons(cc).comparisons_title       = 'Msac choice tuning';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Msac'};
% keys.ons(cc).tt.choice =[0 1]; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.78};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.NH_IN/255; keys.colors.NH_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
% keys.ons(cc).comparisons_per_effector(ce).title='Ipsilateral';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.78};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.NH_IN/255; keys.colors.NH_CH/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
% keys.ons(cc).comparisons_per_effector(ce).title='Contralateral';
% 
% cc=cc+1;% msac choice preference
% ce=0;
% keys.ons(cc).comparisons_title       = 'Msac choice preference';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Msac'};
% keys.ons(cc).tt.choice =[1]; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=1;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=1;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.78};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.ch_IS/255; keys.colors.ch_CS/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='INI';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';


%% population PSTH settings
cc=0;
%  
% cc=cc+1;% enhancement/suppression, POS-NEG
% keys.pop(cc).epoch_PF                = 'Thol';
% keys.pop(cc).epoch_RF                = 'Thol';
% keys.pop(cc).epoch_BL                = 'Fhol';
% keys.pop(cc).epoch_GB                = 'none';
% keys.pop(cc).epoch_DN                = 'Thol'; % for percent change, use this isntead!
% keys.pop(cc).normalization           = 'percent_change';
% keys.pop(cc).group_parameter         = 'in_AH_Thol_position_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).position_and_plotting_arrangements      = {'options'};
% keys.pop(cc).FR_subtract_baseline    = 0;
% keys.pop(cc).ylim                    = [];
% keys.pop(cc).plot_per_position       = 1;
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).plot_RF                 = 0;
% keys.pop(cc).plot_posneg             = 1;
% 
% cc=cc+1;% enhancement/suppression, POS-NEG
% keys.pop(cc).epoch_PF                = 'Thol';
% keys.pop(cc).epoch_RF                = 'Thol';
% keys.pop(cc).epoch_BL                = 'Fhol';
% keys.pop(cc).epoch_GB                = 'none';
% keys.pop(cc).epoch_DN                = 'Thol'; % for percent change, use this isntead!
% keys.pop(cc).normalization           = 'percent_change';
% keys.pop(cc).group_parameter         = 'in_AH_Thol_position_Msac_opt';
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).position_and_plotting_arrangements      = {'options'};
% keys.pop(cc).FR_subtract_baseline    = 0;
% keys.pop(cc).ylim                    = [];
% keys.pop(cc).plot_per_position       = 1;
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).plot_RF                 = 0;
% keys.pop(cc).plot_posneg             = 1;


% %% Vsac vs Msac, choice & instructed
% cc=cc+1;% instructed, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).epoch_PF                = 'Cue';
% %keys.pop(cc).FR_subtract_baseline    = 0;
% 
% cc=cc+1;% instructed, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).epoch_PF                = 'Cue';
% 
% cc=cc+1;% instructed & choice, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = [0, 1];
% keys.pop(cc).tt.choice               = [0, 1];
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Cue';
% 
% cc=cc+1;% instructed & choice, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).cal.choice              = [0, 1];
% keys.pop(cc).tt.choice               = [0, 1];
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Cue';

%% all

%% Response fields
% 
% 
cc=cc+1;% cue response fields 
keys.pop(cc).normalization                  = 'by_position';
keys.pop(cc).group_parameter                = 'in_AH_Cue_epoch_Msac_opt';
keys.pop(cc).group_excluded                 = {'-'};
keys.pop(cc).epoch_PF                       = 'Cue';
keys.pop(cc).epoch_RF                       = 'Cue';
keys.pop(cc).epoch_BL                       = 'Fhol';
keys.pop(cc).epoch_DN                       = 'Fhol';
keys.pop(cc).conditions_to_plot             = {'Msac'};
keys.pop(cc).tt.combine_tuning_properties   = {'tuning','in_Cue_hemifield_Msac_opt','in_AH_Cue_position_Msac_opt'};
keys.pop(cc).cal.choice                     = 0;
keys.pop(cc).tt.choice                      = 0;
keys.pop(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
keys.pop(cc).RF_frame_entries               = {'CSYE','CSNO','ISYE','ISNO','-YE','-NO'};
keys.pop(cc).RF_frame_parameter             = 'tuning';
keys.pop(cc).RF_columns                     = 16;
keys.pop(cc).RF_rows                        = 10;
keys.pop(cc).fittypes                       = {'gaussian1','gaussian15'}; 
% 
cc=cc+1;% PostS response fields 
keys.pop(cc).normalization                  = 'by_position'; %by_effector??
keys.pop(cc).group_parameter                = 'in_AH_TIhol_epoch_Msac_opt';
keys.pop(cc).group_excluded                 = {'-'};
keys.pop(cc).epoch_PF                       = 'TIhol';
keys.pop(cc).epoch_RF                       = 'TIhol';
keys.pop(cc).epoch_BL                       = 'MemL';
keys.pop(cc).epoch_DN                       = 'MemL';
keys.pop(cc).conditions_to_plot             = {'Msac'};
keys.pop(cc).tt.combine_tuning_properties   = {'tuning','in_TIhol_hemifield_Msac_opt','in_AH_TIhol_position_Msac_opt'};
keys.pop(cc).cal.choice                     = 0;
keys.pop(cc).tt.choice                      = 0;
keys.pop(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
keys.pop(cc).RF_frame_entries               = {'CSYE','CSNO','ISYE','ISNO','-YE','-NO'};
keys.pop(cc).RF_frame_parameter             = 'tuning';
keys.pop(cc).RF_columns                     = 16;
keys.pop(cc).RF_rows                        = 10;
keys.pop(cc).fittypes                       = {'gaussian1','gaussian15'}; 
% 
% 
% cc=cc+1;% cue response fields 
% keys.pop(cc).normalization                  = 'by_position';
% keys.pop(cc).group_parameter                = 'ungrouped';
% keys.pop(cc).epoch_PF                       = 'Cue';
% keys.pop(cc).epoch_RF                       = 'Cue';
% keys.pop(cc).epoch_BL                       = 'Fhol';
% keys.pop(cc).epoch_DN                       = 'none';
% keys.pop(cc).FR_subtract_baseline           = 1;
% keys.pop(cc).conditions_to_plot             = {'Msac'};
% keys.pop(cc).tt.combine_tuning_properties   = {'tuning','in_Cue_hemifield_Msac_opt','in_AH_Cue_position_Msac_opt'};
% keys.pop(cc).cal.choice                     = 0;
% keys.pop(cc).tt.choice                      = 0;
% keys.pop(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
% keys.pop(cc).RF_frame_entries               = {'CS1','CS0','IS1','IS0','-1','-0'};
% keys.pop(cc).RF_frame_parameter             = 'tuning';
% % keys.pop(cc).RF_columns                 = 16;
% % keys.pop(cc).RF_rows                    = 10;
% keys.pop(cc).fittypes                       = {'gaussian1','gaussian15'}; 
% % 
% cc=cc+1;% PostS response fields 
% keys.pop(cc).normalization                  = 'by_effector';
% keys.pop(cc).group_parameter                = 'ungrouped';
% keys.pop(cc).epoch_PF                       = 'TIhol';
% keys.pop(cc).epoch_RF                       = 'TIhol';
% keys.pop(cc).epoch_BL                       = 'MemL';
% keys.pop(cc).epoch_DN                       = 'MemL';
% keys.pop(cc).conditions_to_plot             = {'Msac'};
% keys.pop(cc).tt.combine_tuning_properties   = {'tuning','in_TIhol_hemifield_Msac_opt','in_AH_TIhol_position_Msac_opt'};
% keys.pop(cc).cal.choice                     = 0;
% keys.pop(cc).tt.choice                      = 0;
% keys.pop(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
% keys.pop(cc).RF_frame_entries               = {'CS1','CS0','IS1','IS0','-1','-0'};
% keys.pop(cc).RF_frame_parameter             = 'tuning';
% % keys.pop(cc).RF_columns                 = 16;
% % keys.pop(cc).RF_rows                    = 10;
% keys.pop(cc).fittypes                       = {'gaussian1','gaussian15'}; 
% 
% % 
% cc=cc+1;% cue response fields 
% keys.pop(cc).normalization                = 'by_effector';
% keys.pop(cc).group_parameter              = 'in_AH_Cue_position_Msac_opt';
% keys.pop(cc).group_excluded               = {'NO'};
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'Fhol';
% keys.pop(cc).epoch_GB                  	= 'Fhol';
% keys.pop(cc).epoch_DN                 	= 'Fhol';
% keys.pop(cc).conditions_to_plot       	= {'Msac'};
% keys.pop(cc).cal.choice                   = 0;
% keys.pop(cc).tt.choice                    = 0;
% keys.pop(cc).fittypes                     = {'gaussian1','gaussian15','sigmoidal'}; 
% 
% cc=cc+1;% PostS response fields 
% keys.pop(cc).normalization                = 'by_effector';
% keys.pop(cc).group_parameter              = 'in_AH_TIhol_position_Msac_opt';
% keys.pop(cc).group_excluded               = {'NO'};
% keys.pop(cc).epoch_PF                  	= 'TIhol';
% keys.pop(cc).epoch_RF                  	= 'TIhol';
% keys.pop(cc).epoch_BL                  	= 'MemL';
% keys.pop(cc).epoch_GB                  	= 'MemL';
% keys.pop(cc).epoch_DN                 	= 'MemL';
% keys.pop(cc).conditions_to_plot       	= {'Msac'};
% keys.pop(cc).cal.choice                   = 0;
% keys.pop(cc).tt.choice                    = 0;
% keys.pop(cc).fittypes                     = {'gaussian1','gaussian15','sigmoidal'}; 

% cc=cc+1;% cue response fields 
% keys.pop(cc).normalization                = 'by_position'; %%!!!
% keys.pop(cc).group_parameter              = 'in_AH_Cue_position_Msac_opt';
% keys.pop(cc).group_excluded               = {'NO'};
% keys.pop(cc).epoch_PF                     = 'Cue';
% keys.pop(cc).epoch_RF                     = 'Cue';
% keys.pop(cc).epoch_BL                     = 'Fhol';
% keys.pop(cc).epoch_DN                     = 'Fhol';
% keys.pop(cc).conditions_to_plot           = {'Msac'};
% keys.pop(cc).cal.choice                   = 0;
% keys.pop(cc).tt.choice                    = 0;
% keys.pop(cc).fittypes                     = {'gaussian1','gaussian15'}; 
% 
% cc=cc+1;% PostS response fields 
% keys.pop(cc).normalization                = 'by_position';
% keys.pop(cc).group_parameter              = 'in_AH_TIhol_position_Msac_opt';
% keys.pop(cc).group_excluded               = {'NO'};
% keys.pop(cc).epoch_PF                  	  = 'TIhol';
% keys.pop(cc).epoch_RF                  	  = 'TIhol';
% keys.pop(cc).epoch_BL                  	  = 'MemL';
% keys.pop(cc).epoch_DN                 	  = 'MemL';
% keys.pop(cc).conditions_to_plot       	  = {'Msac'};
% keys.pop(cc).cal.choice                   = 0;
% keys.pop(cc).tt.choice                    = 0;
% keys.pop(cc).fittypes                     = {'gaussian1','gaussian15'}; 


% cc=cc+1;% cue preference for enhanced only
% keys.pop(cc).tt.selection                 = {'in_AH_Cue_epoch_Msac_opt','en'};
% keys.pop(cc).group_parameter              = 'ungrouped';
% keys.pop(cc).normalization                = 'by_effector';
% keys.pop(cc).epoch_PF                  	= 'Cue';
% keys.pop(cc).epoch_RF                  	= 'Cue';
% keys.pop(cc).epoch_BL                  	= 'Fhol';
% keys.pop(cc).epoch_DN                 	= 'Fhol';
% keys.pop(cc).conditions_to_plot       	= {'Msac'};
% keys.pop(cc).cal.choice                   = 0;
% keys.pop(cc).tt.choice                    = 0;

% %% Visuo(post-)motor categories
% cc=cc+1;% visual response only
% keys.pop(cc).group_parameter         = 'visual_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% 
% cc=cc+1;% motor output only
% keys.pop(cc).group_parameter         = 'motor_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'TIhol';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% 
% cc=cc+1;% visuomotor - pref in cue
% keys.pop(cc).group_parameter         = 'visuomotor_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% 
% cc=cc+1;% visuomotor - pref in TIHol
% keys.pop(cc).group_parameter         = 'visuomotor_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'TIhol';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% 
% %% Subcategories Visuo(post-)motor 
% cc=cc+1;% Visual units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visual_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Cue_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Visuomotor units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Cue_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Visuomotor units - Postsaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_TIhol_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'TIhol';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Motor units - Postsaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'motor_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_TIhol_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'TIhol';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% %% Subcategories Visuo(pre-)motor 
% cc=cc+1;% Visual units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visual_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Cue_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Visuomotor units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Cue_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Visuomotor units - Presaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Pre2_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre2';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% 
% cc=cc+1;% Motor units - Presaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'motor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_AH_Pre2_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'}; 
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre2';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];


%% gaze cells (?)
cc=cc+1;% gaze cells???
keys.pop(cc).group_parameter         = 'in_Thol_hemifield_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Thol';

%% Delay period activity : perisaccadic enhancement/suppression, and memory hemifield/enhancement/suppression tuning
% cc=cc+1;% instructed, subtracting INI,dividing by Fhol ??? --> comparison to microstim
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          ={};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'none';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_BL                = 'INI';  %%Fhol???

cc=cc+1;% 1 Peri-saccadic enhancement/suppression (relative to INI, subtraction)
keys.pop(cc).group_parameter         = 'in_AH_Peri2_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-','bi'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector'; 
keys.pop(cc).epoch_PF                = 'Peri2';
keys.pop(cc).epoch_BL                = 'INI'; %%Fhol???
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
% 
% cc=cc+1;% 2 Peri-saccadic enhancement/suppression (relative to Fhol)
% keys.pop(cc).group_parameter         = 'in_AH_Peri2_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Peri2';
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% 
% cc=cc+1;% 3 Peri-saccadic enhancement/suppression (relative to MeML)
% keys.pop(cc).group_parameter         = 'in_AH_PeriS_epoch_Msac_opt';
% keys.pop(cc).group_excluded          = {'','-','bi'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'MemL';
% keys.pop(cc).epoch_PF                = 'PeriS';
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% 
% cc=cc+1;% 4 memory enhancement/suppression
% keys.pop(cc).group_parameter         = 'in_AH_MemL_epoch_Msac_opt';
% keys.pop(cc).epoch_PF                = 'MemL';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).group_excluded          = {'','-','bi'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% 
% % cc=cc+1;% memory enhancement/suppression (including choice!)
% % keys.pop(cc).group_parameter         = 'in_AH_MemL_epoch_Msac_opt';
% % keys.pop(cc).epoch_PF                = 'MemL';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).group_excluded          = {'','-','bi'};
% % keys.pop(cc).cal.choice              = [0 1];
% % keys.pop(cc).tt.choice               = [0 1];
% % keys.pop(cc).normalization           = 'by_effector';
% % keys.pop(cc).epoch_DN                = 'Fhol';
% 
% % cc=cc+1;% memory space preference (position ANOVA)
% % keys.pop(cc).group_parameter         = 'in_AH_MemL_position_Msac_opt';
% % keys.pop(cc).epoch_PF                = 'MemL';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).cal.choice              = [0 1];
% % keys.pop(cc).tt.choice               = [0 1];
% % keys.pop(cc).normalization           = 'by_effector';
% % keys.pop(cc).epoch_DN                = 'Fhol';
% 
% cc=cc+1;% memory space preference (including choices
% keys.pop(cc).group_parameter         = 'in_MemL_hemifield_Msac_opt';
% keys.pop(cc).epoch_PF                = 'MemL';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = [0 1];
% keys.pop(cc).tt.choice               = [0 1];
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% 
% cc=cc+1;% memory space preference
% keys.pop(cc).group_parameter         = 'in_MemL_hemifield_Msac_opt';
% keys.pop(cc).epoch_PF                = 'MemL';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';


%% Scatter keys
cs=0;  
% 
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='NH_IN_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='NH_IN_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','in'};
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='NH_IN_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='NH_IN_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','ch'};
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='NH_IN_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='NH_IN_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','-'};


%% unselect nonenhanced
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
keys.sct(cs).color_option='monkeys_by_color';
keys.sct(cs).tt.choice =[0,1];
keys.sct(cs).tt.combine_tuning_properties       = {'en','in_AH_Cue_epoch_Msac_opt','ch_AH_Cue_epoch_Msac_opt'};
keys.sct(cs).tt.unselect={'en','susu';'en','su-';'en','-su';'en','--'};

%% unselect two most significant units
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
keys.sct(cs).color_option='monkeys_by_color';
keys.sct(cs).tt.choice =[0,1];
keys.sct(cs).tt.unselect={'unit_ID','Lin_20150916_05';'unit_ID','Lin_20151028_18'};

cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
keys.sct(cs).color_option='monkeys_by_color';
keys.sct(cs).tt.choice =[0,1];


% to test
% 
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_CS_Cue_epoch_DF_Msac_opt';
keys.sct(cs).Y='in_AH_CS_MemL_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_MemL_epoch_Msac_opt';
keys.sct(cs).Y_sig='in_AH_CS_MemL_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';


cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_IS_Cue_epoch_DF_Msac_opt';
keys.sct(cs).Y='in_AH_IS_MemL_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_MemL_epoch_Msac_opt';
keys.sct(cs).Y_sig='in_AH_IS_MemL_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';

cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_Cue_epoch_DF_Msac_opt';
keys.sct(cs).Y='in_AH_MemL_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_MemL_epoch_Msac_opt';
keys.sct(cs).Y_sig='in_AH_MemL_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';
%% visually guided versus memory
% 

%% uNCOMMENT

% supra or sublinear
% visually guided versus memory guided DF CONTRA CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='PreCueSum_CS_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% visually guided versus memory guided DF IPSI CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='PreCueSum_IS_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% visually guided versus memory guided FR CONTRA CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_CS_CueG_epoch_FR_Vsac_opt';
keys.sct(cs).Y='PreCueMean_CS_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% visually guided versus memory guided FR IPSI CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_IS_CueG_epoch_FR_Vsac_opt';
keys.sct(cs).Y='PreCueMean_IS_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

%%% UNBTIL HERE





% visually guided versus memory guided FR CONTRA CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='in_AH_CS_CueG_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% visually guided versus memory guided FR IPSI CUE
cs=cs+1;  
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='in_AH_IS_CueG_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% visually guided versus memory guided FR CONTRA PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='in_AH_CS_PreG_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_CS_PreG_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% visually guided versus memory guided FR IPSI PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
keys.sct(cs).Y='in_AH_IS_PreG_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
keys.sct(cs).Y_sig='in_AH_IS_PreG_epoch_Msac_opt';
keys.sct(cs).color_option='ENSU_as_color';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% % visually guided versus memory guided FR CONTRA Thol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).X='in_AH_CS_Thol_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_CS_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_Thol_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_TIhol_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% % visually guided versus memory guided FR IPSI Thol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).X='in_AH_IS_Thol_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_IS_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_Thol_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_TIhol_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

%% comparison choice and instructed tuning

%% index

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% CueG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_CueG_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemE
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemE_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_MemE_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_MemE_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemE_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemL
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemL_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_MemL_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreS_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PreS_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreG_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PreG_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PreG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PeriS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PeriS_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PeriS_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% TIhol
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_TIhol_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_TIhol_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

%% FR differences

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% CueG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_CueG_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemE
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemE_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_MemE_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_MemE_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemE_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemL
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemL_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_MemL_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreG_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PreG_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PreG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreS_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PreS_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PeriS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PeriS_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PeriS_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% TIhol
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_TIhol_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_TIhol_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

%% now same for Visually guided 

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Vsac_opt'};
keys.sct(cs).X='in_CueG_hemifield_DF_Vsac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_DF_Vsac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Vsac_opt'};
keys.sct(cs).X='in_CueG_hemifield_IX_Vsac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_IX_Vsac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];



% VMI plots
% VMI ipsi versus contra POST
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='VMI_postEN_IS_Msac_opt';
keys.sct(cs).Y='VMI_postEN_CS_Msac_opt';
keys.sct(cs).X_sig='VMI_postEN_Msac_opt';
keys.sct(cs).Y_sig='VMI_postEN_Msac_opt';
keys.sct(cs).hist_column='VMI_postEN_Msac_opt';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
keys.sct(cs).color_option='FR_as_color';


% IPSI post vs cue enhancement, VMI as colors
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_IS_Cue_epoch_DF_Msac_opt';
keys.sct(cs).Y='in_AH_IS_TIhol_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_IS_Cue_epoch_Msac_opt';
keys.sct(cs).Y_sig='in_AH_IS_TIhol_epoch_Msac_opt';
keys.sct(cs).VMI='VMI_postEN_IS_Msac_opt';
keys.sct(cs).hist_column='VMI_postEN_IS_Msac_opt';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
keys.sct(cs).color_option='VMI_as_color';
keys.sct(cs).logarithmic_scale=1;

% CONTRA post vs cue enhancement, VMI as colors
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_AH_CS_Cue_epoch_DF_Msac_opt';
keys.sct(cs).Y='in_AH_CS_TIhol_epoch_DF_Msac_opt';
keys.sct(cs).X_sig='in_AH_CS_Cue_epoch_Msac_opt';
keys.sct(cs).Y_sig='in_AH_CS_TIhol_epoch_Msac_opt';
keys.sct(cs).VMI='VMI_postEN_CS_Msac_opt';
keys.sct(cs).hist_column='VMI_postEN_CS_Msac_opt';
keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
keys.sct(cs).color_option='VMI_as_color';
keys.sct(cs).logarithmic_scale=1;


%% classification
cc=0;

cc=cc+1;
keys.clf(cc).tt.IC_for_criterion                = 'in';
keys.clf(cc).conditions_to_plot                 = {'Msac'};
keys.clf(cc).position_and_plotting_arrangements = {'options'};
keys.clf(cc).tt.hands                           = 0;
keys.clf(cc).tt.choice                          = 0;
keys.clf(cc).tt.perturbations                   = 0;

%% behavior
cc=0;

cc=cc+1;
keys.beh(cc).tt.IC_for_criterion='in';
keys.beh(cc).conditions_to_plot={'Msac'};
keys.beh(cc).position_and_plotting_arrangements={'options'};
keys.beh(cc).tt.hands=0;
keys.beh(cc).tt.choice =[0,1];
keys.beh(cc).tt.perturbations=0;

cc=cc+1;
keys.beh(cc).tt.IC_for_criterion='in';
keys.beh(cc).conditions_to_plot={'Vsac'};
keys.beh(cc).position_and_plotting_arrangements={'options'};
keys.beh(cc).tt.hands=0;
keys.beh(cc).tt.choice =[0,1];
keys.beh(cc).tt.perturbations=0;

%% copy single units
cc=0;

cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_IN_over_CH';
keys.cpy(cc).tt.unselect                    = {};
keys.cpy(cc).tt.combine_tuning_properties   = {};
keys.cpy(cc).tt.selection                   = {'in_AH_Cue_prefH_Msac_opt','in'};
keys.cpy(cc).conditions_to_plot             = {'Msac'};

cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_CH_over_IN';
keys.cpy(cc).tt.unselect                    = {};
keys.cpy(cc).tt.combine_tuning_properties   = {};
keys.cpy(cc).tt.selection                   = {'in_AH_Cue_prefH_Msac_opt','ch'};
keys.cpy(cc).conditions_to_plot             = {'Msac'};
cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_IN_over_CH_en';
keys.cpy(cc).tt.unselect                    = {};
keys.cpy(cc).tt.combine_tuning_properties   = {};
keys.cpy(cc).tt.selection                   = {'in_AH_Cue_prefH_Msac_opt','in'};
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.combine_tuning_properties   = {'en','in_AH_Cue_epoch_Msac_opt','ch_AH_Cue_epoch_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'en','susu';'en','su-';'en','-su';'en','--'};

cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_CH_over_IN_en';
keys.cpy(cc).tt.unselect                    = {};
keys.cpy(cc).tt.combine_tuning_properties   = {};
keys.cpy(cc).tt.selection                   = {'in_AH_Cue_prefH_Msac_opt','ch'};
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.combine_tuning_properties   = {'en','in_AH_Cue_epoch_Msac_opt','ch_AH_Cue_epoch_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'en','susu';'en','su-';'en','-su';'en','--'};





