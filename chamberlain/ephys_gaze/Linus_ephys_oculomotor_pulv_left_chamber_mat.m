% Linus_ephys_microstim_pulv_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

%% Monkey-specific part
% vmr_path = 'Z:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr'; % used for SfN2014
vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
monkey_prefix = 'LI_';
monkey='Lin';
target_area='dPulv_l';
z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber

%% automatic way of getting the input
grid_id = 'GRID.22.2';
% current_user = getUserName;
keys.anova_table_file='Y:\Projects\Pulv_oculomotor\ephys\20171214\tuning_table_combined.mat';
keys.cal.min_trials_per_condition=5;
keys.tt.combine_tuning_properties={};
keys.tt.IC_for_criterion    = 'in';
keys.tt.space_criterion     = 'none';
keys.tt.epoch_criterion     = 'none';
keys.tt.hands_criterion     = 'none';
keys.tt.SXH_criterion       = 'none';


[tuning_per_unit_table]=ph_load_extended_tuning_table(keys);
switch experiment_id
	case 'memory'
		 task_column=DAG_find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_opt');
		 sign_column=DAG_find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Msac_opt');
	case 'direct'
		 task_column=DAG_find_column_index(tuning_per_unit_table,'in_epoch_main_Vsac_opt');
		 sign_column=DAG_find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Vsac_opt');         
	case 'Ddre'
		 task_column=DAG_find_column_index(tuning_per_unit_table,'in_epoch_main_Ddre_han');
		 sign_column=DAG_find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Ddre_han');     
	case 'visuomotor'
		 task_column=DAG_find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_opt');
		 sign_column=[DAG_find_column_index(tuning_per_unit_table,'visual_Msac_opt'),...
                      DAG_find_column_index(tuning_per_unit_table,'visuomotor_Msac_opt'),...
                      DAG_find_column_index(tuning_per_unit_table,'motor_Msac_opt')];
end
co = {'b','g','r'}; % visual,visuomotor, motor


clear penetration_date xyz target notes

target              = tuning_per_unit_table(:,DAG_find_column_index(tuning_per_unit_table,'target'));
penetration_date    = tuning_per_unit_table(:,DAG_find_column_index(tuning_per_unit_table,'unit_ID'));
task_type           = tuning_per_unit_table(:,task_column);
for c=1:numel(sign_column)
significant_c{c}       = tuning_per_unit_table(:,sign_column(c));
end

row_index           = cellfun(@(x) ~isempty(strfind(x,target_area)),target) & cellfun(@(x) ~isempty(strfind(x,monkey)),penetration_date) & ~cellfun(@isempty,task_type); %% index by target location and monkey initials

idx_x=DAG_find_column_index(tuning_per_unit_table,'grid_x');
idx_y=DAG_find_column_index(tuning_per_unit_table,'grid_y');
idx_z=DAG_find_column_index(tuning_per_unit_table,'electrode_depth');
xyz                 = cell2mat(tuning_per_unit_table(row_index,[idx_x idx_y idx_z]));
xyz(:,3)            = -xyz(:,3);   
xyz_nojitter=xyz;

xyz(:,1)            = xyz(:,1) + (rand(size(xyz(:,1)))-0.5)*1.5; % jitter
% xyz(:,3)            = xyz(:,3)-repmat(z_offset_mm,sum(row_index),1);                                            %% Z relative to brain start
notes               = tuning_per_unit_table(row_index,DAG_find_column_index(tuning_per_unit_table,'unit_ID'));
target              = target(row_index);
penetration_date    = penetration_date(row_index);
%significant = cellfun(@(x) isempty(strfind(x,'-')),significant_c(row_index));
for c=1:numel(sign_column)
significant(:,c) = cellfun(@(x) x==1,significant_c{c}(row_index));
end
