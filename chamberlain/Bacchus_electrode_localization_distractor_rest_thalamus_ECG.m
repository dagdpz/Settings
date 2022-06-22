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
   
    case 'Bacchus_electrode_localization_distractor_rest_dPul_left_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
         penetration_date{n} = '2022_1'; xyz(n,:) = [-4 7 -39.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_1'; xyz(n,:) = [-4 7 -40.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_1'; xyz(n,:) = [-4 7 -41.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_1'; xyz(n,:) = [-4 7 -42.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;

        % 1 session
        penetration_date{n} = '2022_1'; xyz(n,:) = [-3 7 -44];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        % 2 sessions
        penetration_date{n} = '2022_1'; xyz(n,:) = [-3 6 -43.9];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_1'; xyz(n,:) = [-3 6 -44.9];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;

        penetration_date{n} = '2022_1'; xyz(n,:) = [-2 7 -40];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-2 7 -41];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-2 7 -42];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-2 7 -43];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_5'; xyz(n,:) = [-2 7 -44];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [-2 8 -41];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-2 8 -42]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-2 8 -43]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-2 8 -44]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_5'; xyz(n,:) = [-2 8 -45]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [-2 9 -41.8];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-2 9 -42.8]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-2 9 -43.8]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-2 9 -44.8]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_5'; xyz(n,:) = [-2 9 -45.8]; target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
   
    case 'Bacchus_electrode_localization_distractor_rest_dPul_right_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        % position changes slightly but
        penetration_date{n} = '2022_1'; xyz(n,:) = [-4 7 -36.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-4 7 -37.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-4 7 -38.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-4 7 -39.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;

 		
end
