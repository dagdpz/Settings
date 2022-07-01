% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain"
% experiment_id = 'Bacchus_electrode_localization_distractor_rest_thalamus_ECG';

n = 1;

monkey_prefix = 'BA';

if 0 % right chamber
vmr_path = 'Y:\MRI\Bacchus\\20220215_anatomy_electrode_rVPL\dicom\0101\BA_20220218_chamber_R_normal.vmr';
z_offset_mm = 23.5; % mm, distance from GRID top to "brain entry", should be different from 0 if z is from top of the chamber

else % left chamber
vmr_path = 'Y:\MRI\Bacchus\20220201_anatomy_electroder_rightMD_leftDPul\dicom\0103\BA_20220201_chamber_L_normal.vmr';
z_offset_mm = 21; % mm, distance from GRID top to "brain entry", should be different from 0 if z is from top of the chamber
  
end

switch experiment_id
    
    case 'Bacchus_electrode_localization_distractor_rest_VPL_ECG' % right VPL
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [6 7 -39]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [6 7 -40]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [6 7 -41]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [6 7 -42]; target{n} = 'VPL_r'; notes{n} = ''; n = n+1;
        
    case 'Bacchus_electrode_localization_distractor_rest_MD_ECG' % right MD
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        
        penetration_date{n} = '2022_1'; xyz(n,:) = [-4 8 -43.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [-4 8 -44.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [-4 8 -45.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [-4 8 -46.3]; target{n} = 'MD_r'; notes{n} = ''; n = n+1;
   
    case 'Bacchus_electrode_localization_distractor_rest_dPul_left_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
         penetration_date{n} = '2022_01'; xyz(n,:) = [-4 7 -39.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_02'; xyz(n,:) = [-4 7 -40.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_03'; xyz(n,:) = [-4 7 -41.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_04'; xyz(n,:) = [-4 7 -42.6];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;

         % 1 session
         penetration_date{n} = '2022_05'; xyz(n,:) = [-3 7 -44];     target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         % 2 session
         penetration_date{n} = '2022_06'; xyz(n,:) = [-3 6 -43.9];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_07'; xyz(n,:) = [-3 6 -44.9];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         
         penetration_date{n} = '2022_08'; xyz(n,:) = [-2 7 -40];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_09'; xyz(n,:) = [-2 7 -41];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_10'; xyz(n,:) = [-2 7 -42];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_11'; xyz(n,:) = [-2 7 -43];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_12'; xyz(n,:) = [-2 7 -44];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         
         penetration_date{n} = '2022_13'; xyz(n,:) = [-2 8 -41];   target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_14'; xyz(n,:) = [-2 8 -42];    target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_15'; xyz(n,:) = [-2 8 -43];    target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_16'; xyz(n,:) = [-2 8 -44];    target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_17'; xyz(n,:) = [-2 8 -45];    target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         
         penetration_date{n} = '2022_18'; xyz(n,:) = [-2 9 -41.8];      target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_19'; xyz(n,:) = [-2 9 -42.8];      target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_20'; xyz(n,:) = [-2 9 -43.8];      target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_21'; xyz(n,:) = [-2 9 -44.8];      target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
         penetration_date{n} = '2022_22'; xyz(n,:) = [-2 9 -45.8];      target{n} = 'dPul_l'; notes{n} = ''; n = n+1;
   
    case 'Bacchus_electrode_localization_distractor_rest_dPul_right_ECG'
        grid_id = 'GRID.22.3';
        % NOTE: z in from top of the grid!!!
        % position changes slightly but
        penetration_date{n} = '2022_1'; xyz(n,:) = [3 1 -36.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_2'; xyz(n,:) = [3 1 -37.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_3'; xyz(n,:) = [3 1 -38.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;
        penetration_date{n} = '2022_4'; xyz(n,:) = [3 1 -39.6];   target{n} = 'dPul_r'; notes{n} = ''; n = n+1;

 		
end
