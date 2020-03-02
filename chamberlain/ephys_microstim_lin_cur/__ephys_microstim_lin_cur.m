% Linus_microstim_beh_electrode_localization_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

% vmr_path = 'Z:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr'; % used for SfN2014
vmr_path = 'Z:\MRI\Linus\20130614anat\ave1\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
experiment_id = 'memory';
target_area='dPulv_r';
monkey='Lin';
z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% z will be calculated relative to brain start (Zero in the vmr);
    
    %% automatic way of getting the input
    grid_id = 'GRID.22.2';
    % current_user = getUserName;
    
    switch experiment_id
        case 'memory'
            load('monkeys_Combined_mem.mat');
        case 'direct'
            load('monkeys_Combined_dir.mat');
    end
    clear penetration_date xyz target notes
    
    target              = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'target'));
    penetration_date    = tuning_per_unit_table(:,find_column_index(tuning_per_unit_table,'unit_ID'));      
    row_index           = strcmp(target,target_area) & cellfun(@(x) ~isempty(strfind(x,monkey)),penetration_date); %% index by target location and monkey initials
    
    idx_x=find_column_index(tuning_per_unit_table,'grid_x');
    idx_y=find_column_index(tuning_per_unit_table,'grid_y');
    idx_z=find_column_index(tuning_per_unit_table,'electrode_depth');
    xyz                 = cell2mat(tuning_per_unit_table(row_index,[idx_x idx_y idx_z]));
    xyz(:,3)            = xyz(:,3)-repmat(z_offset_mm,sum(row_index),1);                                            %% Z relative to brain start
    notes               = tuning_per_unit_table(row_index,find_column_index(tuning_per_unit_table,'unit_ID'));
    target              = target(row_index);
    penetration_date    = penetration_date(row_index);
