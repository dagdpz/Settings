% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

experiment_id = 'Linus_microstim_beh_electrode_localization';
switch experiment_id
    
    case 'Linus_microstim_beh_electrode_localization'
        grid_id = 'GRID.22.2';
	% NOTE: z in from top of the chamber!!!

        penetration_date{n} = '20140710'; xyz(n,:) = [0 3 -47]; target{n} = 'dPulv_r'; notes{n} = 'run 7'; n = n+1;
        penetration_date{n} = '20140711'; xyz(n,:) = [0 3 -46.5]; target{n} = 'dPulv_r'; notes{n} = 'run 1'; n = n+1;
        penetration_date{n} = '20140711'; xyz(n,:) = [0 3 -47.5]; target{n} = 'dPulv_r'; notes{n} = 'run 8, 9'; n = n+1;
        penetration_date{n} = '20140718'; xyz(n,:) = [0 3 -48]; target{n} = 'dPulv_r'; notes{n} = 'run 1, 3'; n = n+1;
        penetration_date{n} = '20140718'; xyz(n,:) = [0 3 -47]; target{n} = 'dPulv_r'; notes{n} = 'run 4'; n = n+1;
        penetration_date{n} = '20140722'; xyz(n,:) = [-2 4 -47]; target{n} = 'dPulv_r'; notes{n} = 'run 8, 9, 11, 12'; n = n+1;
        penetration_date{n} = '20140730'; xyz(n,:) = [-2 4 -46.5]; target{n} = 'dPulv_r'; notes{n} = 'run 8, 9'; n = n+1;
        penetration_date{n} = '20140731'; xyz(n,:) = [-2 4 -48.25]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10'; n = n+1;
        penetration_date{n} = '20140804'; xyz(n,:) = [-2 4 -48]; target{n} = 'dPulv_r'; notes{n} = 'run 9, 10'; n = n+1;
end
