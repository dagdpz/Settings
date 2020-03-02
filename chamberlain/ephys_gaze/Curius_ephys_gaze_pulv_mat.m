% Curius_ephys_microstim_pulv_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

%% Monkey-specific part
% vmr_path = 'Z:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr'; % used for SfN2014
vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
monkey_prefix = 'CU_';
monkey='Cur';
target_area='dPulv_r';
z_offset_mm = 25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber

%% automatic way of getting the input
grid_id = 'GRID.22.2';
% current_user = getUserName;

keys.anova_table_file='Y:\Projects\Pulv_eye_gaze_position\ephys\20190309\tuning_table_combined_CI.mat';
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
keys.tt.tasktypes = {'Msac_fix'};
keys.tt.selection = {};
keys.tt.unselect = {};
keys.monkey=monkey;

[tuning_per_unit_table]=ph_load_extended_tuning_table(keys);
[tuning_per_unit_table Sel_for_title]=ph_reduce_tuning_table(tuning_per_unit_table,keys);
switch experiment_id
	case 'memory'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_fix');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Msac_opt');
	case 'direct'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_fix');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Vsac_opt');         
	case 'Ddre'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_fix');
		 sign_column=find_column_index(tuning_per_unit_table,'in_NH_Cue_position_Ddre_han');     
	case 'visuomotor'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_fix');
		 sign_column=[find_column_index(tuning_per_unit_table,'in_AH_Cue_position_Msac_mov'),...
                      find_column_index(tuning_per_unit_table,'visuomotor_Msac_opt'),...
                      find_column_index(tuning_per_unit_table,'motor_Msac_opt')];
	case 'gaze'
		 task_column=find_column_index(tuning_per_unit_table,'in_epoch_main_Msac_fix');
		 sign_column=[find_column_index(tuning_per_unit_table,'in_AH_Cue_position_Msac_mov')];
end
co = {'b','g','r'}; % visual,visuomotor, motor


clear penetration_date xyz target notes

target              = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'target'));
penetration_date    = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'unit_ID'));
task_type           = tuning_per_unit_table(:,task_column);
for c=1:numel(sign_column)
significant_c{c}       = tuning_per_unit_table(:,sign_column(c));
end

row_index           = cellfun(@(x) ~isempty(strfind(x,target_area)),target) & cellfun(@(x) ~isempty(strfind(x,monkey)),penetration_date) & ~cellfun(@isempty,task_type); %% index by target location and monkey initials

idx_x=find_column_index(tuning_per_unit_table,'grid_x');
idx_y=find_column_index(tuning_per_unit_table,'grid_y');
idx_z=find_column_index(tuning_per_unit_table,'electrode_depth');
xyz                 = cell2mat(tuning_per_unit_table(row_index,[idx_x idx_y idx_z]));
xyz(:,3)            = -xyz(:,3);   
xyz_nojitter=xyz;

xyz(:,1)            = xyz(:,1) + (rand(size(xyz(:,1)))-0.5)*1.5; % jitter
% xyz(:,3)            = xyz(:,3)-repmat(z_offset_mm,sum(row_index),1);                                            %% Z relative to brain start
notes               = tuning_per_unit_table(row_index,find_column_index(tuning_per_unit_table,'unit_ID'));
target              = target(row_index);
penetration_date    = penetration_date(row_index);
%significant = cellfun(@(x) isempty(strfind(x,'-')),significant_c(row_index));
for c=1:numel(sign_column)
significant(:,c) = cellfun(@(x) (~isa(x,'char')&&x==1)||(~isempty(x)&&isa(x,'char')&&~strcmp(x,'-')&&~strcmp(x,'false')),significant_c{c}(row_index));
end
% 
% aa= find(row_index)';
% for a=aa
%     
% significant(:,c) = cellfun(@(x) (~isa(x,'char')&&x==1)||(~isempty(x)&&isa(x,'char')&&~strcmp(x,'-')&&~strcmp(x,'false')),significant_c{c}(a));
% end
