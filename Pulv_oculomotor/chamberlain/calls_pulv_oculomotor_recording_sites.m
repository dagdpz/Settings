
mainfolder='Y:\Projects\Pulv_oculomotor\ephys\20180222';
dropboxfolder='C:\Users\lschneider\Dropbox';


keys.anova_table_file='Y:\Projects\Pulv_oculomotor\ephys\20180222\tuning_table_combined_CI.mat';
keys.cal.min_trials_per_condition=4;
keys.tt.combine_tuning_properties={};
keys.tt.IC_for_criterion    = 'in';
keys.tt.space_criterion     = 'none';
keys.tt.epoch_criterion     = 'none';
keys.tt.hands_criterion     = 'none';
keys.tt.SXH_criterion       = 'none';
keys.tt.trial_criterion_in = 'per_position';
keys.tt.trial_criterion_ch = 'per_hemifield';
keys.tt.hands = 0;
keys.tt.choices = 0;
keys.tt.perturbations = 0;
keys.labels.handsLR={'AH','LH','RH'};
keys.labels.handsIC={'AH','IH','CH'};  %% AH!??
keys.labels.perturbations={'','_PT'};  %% AH!??
keys.labels.choices={'in','ch'};
keys.tt.tasktypes = {'Msac_opt'};
keys.tt.selection = {};
keys.tt.unselect = {};


%% Linus right
keys.vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_r';
keys.grid_id = 'GRID.22.2';


CL_plot_electrode_localization(keys,'visuomotor');

export_fig([mainfolder filesep 'visuomotor_lin_right_x3' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'visuomotor_lin_right_x2' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'visuomotor_lin_right_x1' ], '-pdf','-transparent')
close gcf


%% Linus left
keys.vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
keys.z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_l';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'visuomotor');
export_fig([mainfolder filesep 'visuomotor_lin_left_x1' ], '-pdf','-transparent')
close gcf



%% Curius right
keys.vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
keys.z_offset_mm = 25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.monkey_prefix = 'CU_';
keys.monkey='Cur';
keys.target_area='dPulv_r';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'visuomotor');

export_fig([mainfolder filesep 'visuomotor_cur_right_x3' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'visuomotor_cur_right_x2' ], '-pdf','-transparent')
close gcf
