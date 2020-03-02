% Linus_ephys_pulv_eye_hand_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

%% Monkey-specific part
vmr_path = '\\fs02\akn$\dag\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
monkey_prefix = 'LI_';
monkey='Lin';
target_area='dPulv_r';
z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber

%% automatic way of getting the input
grid_id = 'GRID.22.2';
% current_user = getUserName;
load('tuning_table_combined.mat');
switch experiment_id
	case 'memory'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_opt');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Msac_opt');
	case 'direct'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Vsac_opt');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Vsac_opt');         
	case 'Ddre'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Ddre_han');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Ddre_han');
end


clear penetration_date xyz target notes

target              = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'target'));
penetration_date    = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'unit_ID'));
task_type           = tuning_per_unit_table(:,task_column);
significant_c       = tuning_per_unit_table(:,sign_column);
row_index           = strcmp(target,target_area) & cellfun(@(x) ~isempty(strfind(x,monkey)),penetration_date) & ~cellfun(@isempty,task_type); %% index by target location and monkey initials

idx_x=find_column_index(tuning_per_unit_table,'grid_x');
idx_y=find_column_index(tuning_per_unit_table,'grid_y');
idx_z=find_column_index(tuning_per_unit_table,'electrode_depth');
xyz                 = cell2mat(tuning_per_unit_table(row_index,[idx_x idx_y idx_z]));
xyz(:,3)            = -xyz(:,3);   
% xyz(:,3)            = xyz(:,3)-repmat(z_offset_mm,sum(row_index),1);                                            %% Z relative to brain start
notes               = tuning_per_unit_table(row_index,find_column_index(tuning_per_unit_table,'unit_ID'));
target              = target(row_index);
penetration_date    = penetration_date(row_index);
significant = true(sum(row_index),1);
