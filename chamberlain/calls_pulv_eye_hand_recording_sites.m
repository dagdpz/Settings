

dropboxfolder='C:\Users\lschneider\Dropbox';


keys.cal.min_trials_per_condition=10;
keys.tt.combine_tuning_properties={};
keys.tt.IC_for_criterion    = 'in';
keys.tt.space_criterion     = 'none';
keys.tt.epoch_criterion     = 'none';
keys.tt.hands_criterion     = 'none';
keys.tt.SXH_criterion       = 'none';
keys.tt.trial_criterion_in = 'per_hemifield';
keys.tt.trial_criterion_ch = 'per_hemifield';
keys.tt.hands = [1,2];
keys.tt.choices = 0;
keys.tt.perturbations = 0;
keys.labels.handsLR={'AH','LH','RH'};
keys.labels.handsIC={'AH','IH','CH'};  %% AH!??
keys.labels.perturbations={'','_PT'};  %% AH!??
keys.labels.choices={'in','ch'};
keys.tt.tasktypes = {'Ddre_han','Dcfr_han','Ddsa_han'};
keys.tt.selection = {};
keys.tt.unselect = {};

%% interleaved dataset
mainfolder='Y:\Projects\Pulv_eye_hand\ephys\Interleaved_dataset';
keys.anova_table_file='Y:\Projects\Pulv_eye_hand\ephys\Interleaved_dataset\tuning_table_combined_CI.mat';

% Linus right
keys.vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_r';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_right_x1' ], '-pdf','-transparent')
close gcf

% Linus left
keys.vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
keys.z_offset_mm = 27.5; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_l';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_left_x1' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'Ddre_han_lin_left_x2' ], '-pdf','-transparent')
close gcf

%% Flaffus missing!!









%% Blocked_tasks_dataset
mainfolder='Y:\Projects\Pulv_eye_hand\ephys\Blocked_tasks_dataset';
keys.anova_table_file='Y:\Projects\Pulv_eye_hand\ephys\Blocked_tasks_dataset\tuning_table_combined_CI.mat';

% Linus right
keys.vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_R';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_right_x1' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'Ddre_han_lin_right_x2' ], '-pdf','-transparent')
close gcf

% Linus left
keys.vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
keys.z_offset_mm = 27.5; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_L';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_left_x1' ], '-pdf','-transparent')
close gcf


%% Blocked_hands_dataset
mainfolder='Y:\Projects\Pulv_eye_hand\ephys\Blocked_hands_dataset';
keys.anova_table_file='Y:\Projects\Pulv_eye_hand\ephys\Blocked_hands_dataset\tuning_table_combined_CI.mat';

% Linus right
keys.vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_r';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_right_x1' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'Ddre_han_lin_right_x2' ], '-pdf','-transparent')
close gcf

% Linus left
keys.vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
keys.z_offset_mm = 27.5; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber, was 26!!!!
keys.monkey_prefix = 'LI_';
keys.monkey='Lin';
keys.target_area='dPulv_l';
keys.grid_id = 'GRID.22.2';

CL_plot_electrode_localization(keys,'Ddre_han');
export_fig([mainfolder filesep 'Ddre_han_lin_left_x1' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'Ddre_han_lin_left_x2' ], '-pdf','-transparent')
close gcf