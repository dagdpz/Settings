% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

% experiment_id = 'Curius_microstim_beh_electrode_localization';
% experiment_id = 'Curius_microstim_beh_electrode_MRI_localization_lateral_Pulvinar_shallow';
% experiment_id = 'Curius_microstim_beh_electrode_MRI_localization_lateral_Pulvinar_deep';

switch experiment_id
	
	case 'Curius_microstim_beh_electrode_localization_dorsal'
		grid_id = 'GRID.22.1';
		vmr_path = 'Z:\MRI\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
		
		% NOTE: z in from top of the chamber!!!
		
		penetration_date{n} = '20140125'; xyz(n,:) = [4 4 -44]; target{n} = 'dPulv_r'; notes{n} = 'run 5'; n = n+1;
		penetration_date{n} = '20140719'; xyz(n,:) = [5 3 -44.25]; target{n} = 'dPulv_r'; notes{n} = 'run 8'; n = n+1;
		penetration_date{n} = '20140726'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 10, 11, 13'; n = n+1;
		penetration_date{n} = '20140801'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10, 12'; n = n+1;
		penetration_date{n} = '20140802'; xyz(n,:) = [5 3 -45]; target{n} = 'dPulv_r'; notes{n} = 'run 15, 16'; n = n+1;
		penetration_date{n} = '20140813'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 10, 11, 13'; n = n+1;
		penetration_date{n} = '20140815'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10, 11'; n = n+1;
		
		
	case 'Curius_microstim_beh_electrode_localization ventral_deep'
		grid_id = 'GRID.22.1';
		vmr_path = 'Z:\MRI\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
		
		penetration_date{n} = '20140521'; xyz(n,:) = [9 4 -48.75]; target{n} = 'vPulv_r'; notes{n} = 'run 8, 9, 11'; n = n+1;
		penetration_date{n} = '20140522'; xyz(n,:) = [9 4 -48.25]; target{n} = 'vPulv_r'; notes{n} = 'run 8, 9'; n = n+1;
		penetration_date{n} = '20140527'; xyz(n,:) = [9 4 -48.5]; target{n} = 'vPulv_r'; notes{n} = 'run 9, 10, 12, 13'; n = n+1;
		
				
	case 'Curius_microstim_beh_electrode_MRI_localization_lateral_Pulvinar_shallow'
		grid_id = 'GRID.22.1';
		vmr_path = 'Z:\MRI\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
		
		penetration_date{n} = '20140520'; xyz(n,:) = [9 4 -46.75]; target{n} = 'vPulv_r'; notes{n} = 'run 9, 10'; n = n+1;
		penetration_date{n} = '20140522'; xyz(n,:) = [9 4 -46.25]; target{n} = 'vPulv_r'; notes{n} = 'run 13, 14'; n = n+1;
		penetration_date{n} = '20140529'; xyz(n,:) = [9 4 -47.5]; target{n} = 'vPulv_r'; notes{n} = 'run 7, 8'; n = n+1;
		penetration_date{n} = '20140529'; xyz(n,:) = [9 4 -45.5]; target{n} = 'vPulv_r'; notes{n} = 'run 10, 11, 12, 13'; n = n+1;
			
end
