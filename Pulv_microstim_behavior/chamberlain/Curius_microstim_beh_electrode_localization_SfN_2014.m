% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

experiment_id = 'Curius_microstim_beh_electrode_localization';

switch experiment_id
	
	case 'Curius_microstim_beh_electrode_localization'
		grid_id = 'GRID.22.1';
		% NOTE: z in from top of the chamber!!!
		
		penetration_date{n} = '20140125'; xyz(n,:) = [4 4 -44]; target{n} = 'dPulv_r'; notes{n} = 'run 5'; n = n+1;
		penetration_date{n} = '20140719'; xyz(n,:) = [5 3 -44.25]; target{n} = 'dPulv_r'; notes{n} = 'run 8'; n = n+1;
		penetration_date{n} = '20140726'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 10, 11, 13'; n = n+1;
		penetration_date{n} = '20140801'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10, 12'; n = n+1;
		penetration_date{n} = '20140802'; xyz(n,:) = [5 3 -45]; target{n} = 'dPulv_r'; notes{n} = 'run 15, 16'; n = n+1;
		penetration_date{n} = '20140813'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 10, 11, 13'; n = n+1;
		penetration_date{n} = '20140815'; xyz(n,:) = [5 3 -44.5]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10, 11'; n = n+1;
				
		
end
