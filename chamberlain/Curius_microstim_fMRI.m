% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

experiment_id = 'Curuis_microstim_fMRI';
switch experiment_id
	
	case 'Curuis_microstim_fMRI'
		grid_id = 'GRID.22.1';
		vmr_path = 'Z:\MRI\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
		
		penetration_date{n} = '20131129'; xyz(n,:) = [4 4 -22.0]; target{n} = 'dPulv_r'; notes{n} = '200uA'; n = n+1;
		penetration_date{n} = '20131204'; xyz(n,:) = [4 4 -22.0]; target{n} = 'dPulv_r'; notes{n} = '150uA'; n = n+1;
		penetration_date{n} = '20131211'; xyz(n,:) = [4 4 -22.0]; target{n} = 'dPulv_r'; notes{n} = '150uA'; n = n+1;
		penetration_date{n} = '20131213'; xyz(n,:) = [4 4 -22.0]; target{n} = 'dPulv_r'; notes{n} = '150uA'; n = n+1;
		penetration_date{n} = '20131218'; xyz(n,:) = [4 4 -22.0]; target{n} = 'dPulv_r'; notes{n} = '150uA'; n = n+1;
		
		penetration_date{n} = '20140122'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140124'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140129'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140131'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140204'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140214'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		penetration_date{n} = '20140226'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '250uA'; n = n+1;
		
		penetration_date{n} = '20140409'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140410'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140416'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140417'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140515'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140521'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140523'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140528'; xyz(n,:) = [5 3 -22.0]; target{n} = 'dPulv_r'; notes{n} = '100uA'; n = n+1;
		
		penetration_date{n} = '20140917'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140918'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140924'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20140926'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20141001'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20141002'; xyz(n,:) = [9 4 -22.0]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
		penetration_date{n} = '20141010'; xyz(n,:) = [9 4 -19.5]; target{n} = 'vPulv_r'; notes{n} = '100uA'; n = n+1;
end