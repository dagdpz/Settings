% Curius_microstim_beh_electrode_localization_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

% vmr_path = 'F:\Dropbox\DAG\microstim_behavior\electrode_localization\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
monkey_prefix = 'CU_';

z_offset_mm = 25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber

if 0
	switch experiment_id
		
		case 'Curius_microstim_beh_electrode_localization_dorsal_direct'
			grid_id = 'GRID.22.1';
			% NOTE: z in from top of the chamber!!!
			
			
			%penetration_date{n} = '20140125'; xyz(n,:) = [4 4 -44]; target{n}= 'dPulv_r'; notes{n} = 'run 5'; n = n+1; % session excluded cause of target configuration (?)
			penetration_date{n} = '20140719'; xyz(n,:) = [5 3 -44.25];  target{n} = 'dPulv_r'; notes{n} = 'run 8 (250uA)'; n = n+1;
			penetration_date{n} = '20140726'; xyz(n,:) = [5 3 -44.5];   target{n} = 'dPulv_r'; notes{n} = 'run 10 (200uA), 11 (100uA), 13 (100uA)'; n = n+1;
			penetration_date{n} = '20140801'; xyz(n,:) = [5 3 -44.5];   target{n} = 'dPulv_r'; notes{n} = 'run 9 (200uA), 10 (200uA), 12 (250uA)'; n = n+1;
			penetration_date{n} = '20140802'; xyz(n,:) = [5 3 -45];     target{n} = 'dPulv_r'; notes{n} = 'run 15 (200uA), 16 (200uA)'; n = n+1;
			penetration_date{n} = '20140813'; xyz(n,:) = [5 3 -44.5];   target{n} = 'dPulv_r'; notes{n} = 'run 10 (250uA), 11 (250uA), 13 (150uA)'; n = n+1;
			penetration_date{n} = '20140815'; xyz(n,:) = [5 3 -44.5];   target{n} = 'dPulv_r'; notes{n} = 'run 9 (250uA), 10 (250uA), 12 (150uA)'; n = n+1;
			penetration_date{n} = '20141203'; xyz(n,:) = [5 3 -44.5];   target{n} = 'dPulv_r'; notes{n} = 'run 9 (250uA), 10 (250uA)'; n = n+1;
			penetration_date{n} = '20141203'; xyz(n,:) = [5 3 -45];     target{n} = 'dPulv_r'; notes{n} = 'run 21 (150uA), 22 (150uA)'; n = n+1;
			penetration_date{n} = '20141205'; xyz(n,:) = [5 3 -44];     target{n} = 'dPulv_r'; notes{n} = 'run 9 (250uA), 10 (250uA), 12 (250uA), 13 (250uA)'; n = n+1;
			penetration_date{n} = '20141217'; xyz(n,:) = [5 3 -45];     target{n} = 'dPulv_r'; notes{n} = 'run 10 (250uA), 11 (250uA)'; n = n+1;
			penetration_date{n} = '20150206'; xyz(n,:) = [5 3 -43.5];   target{n} = 'dPulv_r'; notes{n} = 'run 7 (250uA), 8 (250uA)'; n = n+1;
			penetration_date{n} = '20150206'; xyz(n,:) = [5 3 -44.25];  target{n} = 'dPulv_r'; notes{n} = 'run 14 (250uA), 15 (250uA)'; n = n+1;
			
			%missing: 20141003 - 20141022 because of stimulation windows not fitting ([-80,0,80] to do reaches on the same day)
			%missing: 20141211 because of bent electrode & GT, location probably not correct, results look very different
			
		case 'Curius_microstim_beh_electrode_localization_dorsal_direct_to_compare_with_memory'
			grid_id = 'GRID.22.1';
			% short runs (for comparison with memory saccades)
			%penetration_date{n} = '20150227'; xyz(n,:) = [3 5 -46]; target{n} = 'dPulv_r'; notes{n} = 'run 15 (250uA)'; n = n+1; %% curius didnt   succeed in memory saccades
			penetration_date{n} = '20150306'; xyz(n,:) = [3 5 -45];     target{n} = 'dPulv_r'; notes{n} = 'run 10 (150uA)'; n = n+1;
			penetration_date{n} = '20150410'; xyz(n,:) = [3 5 -46];     target{n} = 'dPulv_r'; notes{n} = 'run 12 (250uA)'; n = n+1;
			penetration_date{n} = '20150417'; xyz(n,:) = [3 5 -44];     target{n} = 'dPulv_r'; notes{n} = 'run 11 (200uA), 15 (200uA)'; n = n+1;
			
			
		case 'Curius_microstim_beh_electrode_localization_dorsal_memory'
			grid_id = 'GRID.22.1';
			penetration_date{n} = '20150306'; xyz(n,:) = [3 5 -45];     target{n} = 'dPulv_r'; notes{n} = 'run 16 (150uA), 17 (150uA)'; n = n+1;
			penetration_date{n} = '20150417'; xyz(n,:) = [3 5 -44];     target{n} = 'dPulv_r'; notes{n} = 'run 13 (200uA), 14 (200uA)'; n = n+1;
			%penetration_date{n} = '20150410'; xyz(n,:) = [3 5 -46]; target{n}='dPulv_r'; notes{n} = 'run 15 (250uA)'; n = n+1; %% not enoughdata
			
		case 'Curius_microstim_beh_electrode_localization_ventral_deep'
			% direct
			grid_id = 'GRID.22.1';
			penetration_date{n} = '20150521'; xyz(n,:) = [9 4 -48.75];  target{n} = 'vPulv_r'; notes{n} = 'run 8 (250uA), 9 (250uA)'; n = n+1;
			penetration_date{n} = '20150522'; xyz(n,:) = [9 4 -48.25];  target{n} = 'vPulv_r'; notes{n} = 'run 8 (250uA), 9 (250uA)'; n = n+1;
			penetration_date{n} = '20150527'; xyz(n,:) = [9 4 -48.5];   target{n} = 'vPulv_r'; notes{n} = 'run 9 (250uA), 10 (250uA)'; n = n+1;
			penetration_date{n} = '20150625'; xyz(n,:) = [8 4 -48.5];   target{n} = 'vPulv_r'; notes{n} = 'run 10 (250uA), 11 (250uA)'; n = n+1;
			penetration_date{n} = '20150626'; xyz(n,:) = [8 4 -48];     target{n} = 'vPulv_r'; notes{n} = 'run 14 (200uA), 15 (200uA)'; n = n+1;
			
			% memory
			% penetration_date{n} = '20150527'; xyz(n,:) = [9 4 -48.5];   target{n} = 'vPulv_r'; notes{n} = 'run 12 (250uA), 13 (250uA)'; n = n+1;
			% penetration_date{n} = '20150626'; xyz(n,:) = [8 4 -48];     target{n} = 'vPulv_r'; notes{n} = 'run 18 (200uA), 19 (200uA)'; n = n+1;
			%penetration_date{n} = '20150521'; xyz(n,:) = [9 4 -48.75];  target{n} = 'lPulv_r'; notes{n} = 'run 11 (250uA)'; n = n+1; %% not complete
			
		case 'Curius_microstim_beh_electrode_localization_ventral_shallow'
			grid_id = 'GRID.22.1';
			%direct
			penetration_date{n} = '20150520'; xyz(n,:) = [9 4 -46.75];  target{n} = 'lPulv_r'; notes{n} = 'run 9 (250uA), 10 (250uA)'; n = n+1;
			penetration_date{n} = '20150522'; xyz(n,:) = [9 4 -46.25];  target{n} = 'lPulv_r'; notes{n} = 'run 13 (250uA), 14 (250uA)'; n = n+1;
			penetration_date{n} = '20150529'; xyz(n,:) = [9 4 -47.5];   target{n} = 'lPulv_r'; notes{n} = 'run 7 (250uA), 8 (250uA)'; n = n+1;
			penetration_date{n} = '20150529'; xyz(n,:) = [9 4 -45.5];   target{n} = 'lPulv_r'; notes{n} = 'run 10 (150uA), 11 (150uA),'; n = n+1;
			penetration_date{n} = '20150625'; xyz(n,:) = [8 4 -47.5];   target{n} = 'lPulv_r'; notes{n} = 'run 8 (250uA), 9 (250uA)'; n = n+1;
			
			% memory
			% penetration_date{n} = '20150529'; xyz(n,:) = [9 4 -45.5];   target{n} = 'lPulv_r'; notes{n} = 'run 12 (150uA), 13 (150uA),'; n = n+1;
			%penetration_date{n} = '20150522'; xyz(n,:) = [9 4 -46.25]; target{n} = 'lPulv_r'; notes{n} = 'run 16 (250uA)'; n = n+1; %% not complete
	end
		
else
	%% automatic way of getting the input, not liked by Igor
	grid_id = 'GRID.22.1';
	% current_user = getUserName;
	
%	switch experiment_id
		%% chamberlain\db\sessions_beh_microstim_lin_cur\20150803
% 		case 'Curius_microstim_beh_electrode_localization_dorsal_direct'
% 			load('Curius_direct_saccades_dorsal.mat');
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Curius_direct_saccades_dorsal.mat']);
% 		case 'Curius_microstim_beh_electrode_localization_dorsal_direct_to_compare_with_memory'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Curius_direct_saccades_lateral.mat']);
% 		case 'Curius_microstim_beh_electrode_localization_dorsal_memory'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Curius_direct_saccades_inferior.mat']);
% 		case 'Curius_microstim_beh_electrode_localization_ventral_deep'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Curius_memory_saccades_dorsal.mat']);
% 		case 'Curius_microstim_beh_electrode_localization_ventral_shallow'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Curius_memory_saccades_lateral.mat']);	
	
%	end
	
	clear penetration_date xyz target notes
	load([experiment_id '.mat']);
	
	table_out_stim = table_per_batch; table_out_stim.data_ui = table_out_stim.data;
	
	penetration_date    = [cellfun(@num2str, table_out_stim.data_ui(:,1),'UniformOutput',0)]';
	xyz                 = [[table_out_stim.data_ui{:,7}]' [table_out_stim.data_ui{:,8}]' -[table_out_stim.data_ui{:,9}]'];
	for i=1:size(table_out_stim.data_ui(:,4),1)
		if strcmp(table_out_stim.data_ui{i,4},'right dorsal pulvinar')
			target(:,i)              = {'dPulv_r'};
		elseif strcmp(table_out_stim.data_ui{i,4},'right lateral pulvinar')
			target(:,i)              = {'vPulv_r'};
		else
			target(:,i)              = table_out_stim.data_ui(i,4);
		end
	end
	notes               =  table_out_stim.data_ui(:,12)';
	%
end
