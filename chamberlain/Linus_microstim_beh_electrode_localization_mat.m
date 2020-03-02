% Linus_microstim_beh_electrode_localization_mat
% penetration database
% xyz: grid_hole_x, grid_hole_y, z depth mm from "top of the brain" or "from chamber top"

n = 1;

% vmr_path = 'Z:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr'; % used for SfN2014
% vmr_path = 'F:\Dropbox\DAG\microstim_behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';

monkey_prefix = 'LI_';

z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber

if 0
	switch experiment_id
		
		case 'Linus_microstim_beh_electrode_localization_dorsal_direct'
			grid_id = 'GRID.22.2';
			penetration_date{n} = '20140710'; xyz(n,:) = [0     3   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 07  250uA   3_off       30%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140711'; xyz(n,:) = [0     3   -46.50]; target{n} = 'dPulv_r'; notes{n} = 'run 01  250uA   3_off       17%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140711'; xyz(n,:) = [0     3   -47.50]; target{n} = 'dPulv_r'; notes{n} = 'run 08  250uA   3_off       06%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140711'; xyz(n,:) = [0     3   -47.50]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   3_off       27%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140718'; xyz(n,:) = [0     3   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 01  250uA   3_off       00%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140718'; xyz(n,:) = [-2    4   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 03  250uA   6_off       09%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140718'; xyz(n,:) = [-2    4   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 04  250uA   6_off       81%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140722'; xyz(n,:) = [-2    4   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 08  250uA   0_off       43%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140722'; xyz(n,:) = [-2    4   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   0_off       13%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140722'; xyz(n,:) = [0     3   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 11  250uA   3_off       23%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140722'; xyz(n,:) = [0     3   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 12  250uA   3_off       25%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140730'; xyz(n,:) = [0     3   -46.50]; target{n} = 'dPulv_r'; notes{n} = 'run 08  250uA   0_off       17%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140730'; xyz(n,:) = [0     3   -46.50]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   0_off       27%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140731'; xyz(n,:) = [0     3   -48.25]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   5_off       13%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140731'; xyz(n,:) = [-2    4   -48.25]; target{n} = 'dPulv_r'; notes{n} = 'run 10  250uA   5_off       30%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140804'; xyz(n,:) = [-2    4   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   5_off       13%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20140804'; xyz(n,:) = [-2    4   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 10  250uA   5_off       47%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141204'; xyz(n,:) = [-2    4   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 10  250uA   8_off       40%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141204'; xyz(n,:) = [0     3   -47.00]; target{n} = 'dPulv_r'; notes{n} = 'run 11  250uA   8_off       30%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141205'; xyz(n,:) = [0     3   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 09  250uA   5_off       37%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141205'; xyz(n,:) = [0     3   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 10  250uA   5_off       30%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141212'; xyz(n,:) = [0     3   -47.50]; target{n} = 'dPulv_r'; notes{n} = 'run 10  250uA   5_off       33%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20141212'; xyz(n,:) = [0     3   -47.50]; target{n} = 'dPulv_r'; notes{n} = 'run 11  250uA   5_off       27%_Left_chosen_in_baseline';  n = n+1;
			
		case 'Linus_microstim_beh_electrode_localization_ventral_direct'
			grid_id = 'GRID.22.2';
			penetration_date{n} = '20150709'; xyz(n,:) = [5     3   -49.50]; target{n} = 'vPulv_r'; notes{n} = 'run 10   250uA   0_off      08%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150710'; xyz(n,:) = [6     3   -51.00]; target{n} = 'vPulv_r'; notes{n} = 'run 09   250uA   4_off      55%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150730'; xyz(n,:) = [6     3   -51.00]; target{n} = 'vPulv_r'; notes{n} = 'run 08   250uA   3_off      23%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150730'; xyz(n,:) = [6     3   -51.00]; target{n} = 'vPulv_r'; notes{n} = 'run 09   150uA   3_off      70%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150731'; xyz(n,:) = [6     3   -51.00]; target{n} = 'vPulv_r'; notes{n} = 'run 08   250uA   2_off      25%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150731'; xyz(n,:) = [6     3   -50.00]; target{n} = 'vPulv_r'; notes{n} = 'run 14   200uA   2_off      18%_Left_chosen_in_baseline';  n = n+1;
			
		case 'Linus_microstim_beh_electrode_localization_dorsal_memory'
			grid_id = 'GRID.22.2';
			penetration_date{n} = '20150227'; xyz(n,:) = [-1    3   -47.75]; target{n} = 'dPulv_r'; notes{n} = 'run 14   250uA   -5_off     10%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150227'; xyz(n,:) = [-1    3   -47.75]; target{n} = 'dPulv_r'; notes{n} = 'run 15   250uA   -5_off     27%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150305'; xyz(n,:) = [-1    3   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 13   250uA   0_off      37%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150305'; xyz(n,:) = [-1    3   -48.00]; target{n} = 'dPulv_r'; notes{n} = 'run 14   250uA   0_off      40%_Left_chosen_in_baseline';  n = n+1;
			
		case 'Linus_microstim_beh_electrode_localization_ventral_memory'
			grid_id = 'GRID.22.2';
			penetration_date{n} = '20150709'; xyz(n,:) = [5    3   -49.50];  target{n} = 'vPulv_r'; notes{n} = 'run 12   250uA   0_off      52%_Left_chosen_in_baseline';  n = n+1;
			penetration_date{n} = '20150710'; xyz(n,:) = [6    3   -51.00];  target{n} = 'vPulv_r'; notes{n} = 'run 11   250uA   0_off      28%_Left_chosen_in_baseline';  n = n+1;
			
	end
	
	
	
	
else
	%% automatic way of getting the input, not liked by Igor.
	grid_id = 'GRID.22.2';
	% current_user = getUserName;
	
% 	switch experiment_id
 		%% chamberlain\db\sessions_beh_microstim_lin_cur\20150803
% 		case 'Linus_microstim_beh_electrode_localization_dorsal_direct'
% 			load('Linus_direct_saccades_dorsal.mat');
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Linus_direct_saccades_dorsal.mat']);
% 		case 'Linus_microstim_beh_electrode_localization_ventral_direct'
% 			load('Linus_direct_saccades_ventral.mat');
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Linus_direct_saccades_ventral.mat']);
% 		case 'Linus_microstim_beh_electrode_localization_dorsal_memory'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Linus_memory_saccades_dorsal.mat']);
% 		case 'Linus_microstim_beh_electrode_localization_ventral_memory'
% 			%load(['C:\Users' filesep current_user filesep 'Dropbox' filesep 'DAG' filesep 'Sources' filesep 'chamberlain' filesep 'sessions_lin_cur' filesep 'Linus_memory_saccades_ventral.mat']);
% 	end
	clear penetration_date xyz target notes
	load([experiment_id '.mat']);
	
	table_out_stim = table_per_batch; table_out_stim.data_ui = table_out_stim.data;
	
	penetration_date    = [cellfun(@num2str, table_out_stim.data_ui(:,1),'UniformOutput',0)]';
	xyz                 = [[table_out_stim.data_ui{:,7}]' [table_out_stim.data_ui{:,8}]' -[table_out_stim.data_ui{:,9}]'];
	for i=1:size(table_out_stim.data_ui(:,4),1)
		if strcmp(table_out_stim.data_ui{i,4},'right dorsal pulvinar')
			target(:,i)              = {'dPulv_r'};
		elseif strcmp(table_out_stim.data_ui{i,4},'right ventral pulvinar')
			target(:,i)              = {'vPulv_r'};
		else
			target(:,i)              = table_out_stim.data_ui(i,4);
		end
	end
	notes               =  table_out_stim.data_ui(:,12)';
	
end

