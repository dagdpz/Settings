% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

switch experiment_id
		
	case 'Linus_microstim_beh_electrode_MRI_localization'
		grid_id = 'GRID.22.2';
		% vmr_path = 'D:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr';

		penetration_date{n} = '20131202'; xyz(n,:) = [0 5 -22.0]; target{n} = 'dPulv_r'; notes{n} = 'brain depressed'; n = n+1;
		penetration_date{n} = '20140117'; xyz(n,:) = [0 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = 'depth not reliable: scale instability'; n = n+1;
		penetration_date{n} = '20140221'; xyz(n,:) = [0 3 -19.5]; target{n} = 'dPulv_r'; notes{n} = 'stopped before pulvinar entry, near caudate'; n = n+1;
end
