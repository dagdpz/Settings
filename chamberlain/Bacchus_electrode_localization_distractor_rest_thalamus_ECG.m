% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"

n = 1;

monkey_prefix = 'BA';
vmr_path = 'Y:\MRI\Bacchus\20220215_anatomy_electrode\dicom\0101\BA_20220218_chamber_R_normal.vmr';

% experiment_id = 'Bacchus_electrode_localization_distractor_rest_thalamus_ECG';
z_offset_mm = 23.5; % mm, distance from GRID top to "brain entry", should be different from 0 if z is from top of the chamber

switch experiment_id
    
    case 'Bacchus_electrode_localization_distractor_rest_VPL_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [6 7 -39]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [6 7 -40]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [6 7 -41]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [6 7 -42]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        
    case 'Bacchus_electrode_localization_distractor_rest_MD_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [-4 8 -43.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-4 8 -44.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-4 8 -45.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-4 8 -46.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        
		
end
