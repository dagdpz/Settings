%% Linus ephys [20160203 20160506] datasets

clc
clear batch,
close all
warning('off','all')
% EH_compare_groups(batch,testing)

global GLO
GLO.accuracy_as_absolute            =   1; %% 1 meaning it computes the averages of x and y first and then creates the euclidean
GLO.delete_last                     =   0; %1 delete the last trial of each run
GLO.fontsize_titles_big             =   16;
GLO.fontsize_small                  =   8;
GLO.fontsize_ticks                  =   12;
GLO.fontsize_labels                 =   12;
GLO.linewidth                       =   2;
GLO.plot_raw_endpoints              =   0; %1 means 1 point per trial, 0 means average across trials
GLO.calculate_statististics         =   1;
GLO.parametric_testing              =   1;
GLO.plot_statististics              =   1;
GLO.plot_it                         =   1;
GLO.create_pdf                      =   1;
GLO.append_pdfs                     =   0;
GLO.parent_folder                   =   '';
GLO.folder_to_save                  =   'Y:\Projects\Pulv_distractor_spatial_choice\Curius_behavior\';
GLO.type_of_free_gaze               =   '6';
GLO.one_subject                     =   0;
GLO.trial_by_trial                  =   0; % for statistics, 0 means calculate statistics bases on average per run
GLO.CDF                             =   0; % 1 plot cumulative distribution function
GLO.text_in_plot                    =   1; % plot mean and std in text
GLO.same_day                        =   0;
GLO.testing_patient                 =   0;
GLO.instructed_only                 =   0;
GLO.choice_only                     =   1;
GLO.only_significant                =   1; % for sigstar
GLO.only_success_for_accuracy       =   0;
GLO.only_between_group_comparissons =   0;
GLO.point_per_batch                 =   0; %0 average across session , 1 % 1 point per run
GLO.summary                         =   3; %[1 2 3 5 6 9 10 12]; %which plots (vector of number of -1 for all plots) [1 2 3 5 10]
GLO.target_locations_in_raw         =   1; %in raw plots, also plot target location
GLO.saccade_in_raw                  =   0; %only for one plot, see beh_compare_groups
GLO.modify_positions                =   0; % used in reallocate_positions_from_mpa ?
GLO.euclideans_reach                =   [-15, 15]; % used in reallocate_positions_from_mpa ?
GLO.trial_numbers                   =   0; %in correlation plot
GLO.keep_raw_output                 =   1; % 1 = save raw data in the output structure and plot raw traces in some plots 
GLO.hits_in_plot                    =   1; % plot the number of hits per condition on plots
GLO.min_hits                        =   0; %or 1 for 50 hits min
GLO.only_successful_side_selection  =   0; %0 takes in account aborted trial from CUE_ON, 1 only successful trials
%next 3 for plotting
GLO.saccades_effectors              = {'0'};
GLO.reaches_effectors               = {'1'};
GLO.types_to_plot                   = {'2'};
GLO.saccades.effectors_raw_xy       = {'0'};
GLO.reaches.effectors_raw_xy        = {'1'};
GLO.state_raw_traces                = [4 5];
GLO.remove_outliers                 =   0;
GLO.clean_data                      =   0;

% 1 ERROR BARS
% 2 HISTOGRAMS
% 3 ACCURACY
% 4 CORRELATIONS
% 5 HAND RELEASE
% 6 RAW XY 2D 
% 7X X VS TIME
% 7Y Y VS TIME
% 8 FILELIST
% 9 ERRORS
% 10 CH - IN

% % 1: saccade, that ended up closest to the target and was big enough
% % 2: biggest saccade that ended up close enough
% % 3: last saccade in the state
% % 4: first saccade in the state
% % 5: the first that is bigger than 'sac_min_amp'

steady.passfilter                   =   {}; % add
steady.reach_1st_pos                =   1; %%new used for all but
steady.reach_1st_pos_in             =   0; %%new
steady.reach_pos_at_state_change    =   0; %%new

steady.remove_outliers            =   GLO.remove_outliers;
steady.sac_ini_t                  = 200;
steady.sac_end_t                  = 50;
%steady.min_dur                   = 0.03;
steady.eyetracker_sample_rate     = 220; % Hertz
steady.correct_offset             = 0;
steady.smoothing_samples          = 15; %downsampling does a diff to find relevant changing samples, then it inerpolates to 1 ms between such samples and then it smoothens, the smoothing is set such that it grabs one sample before and one after plus a bit more but not reaching 2 samples 4.54 ms each sample of the eyetracker
steady.sac_min_amp                = 2;
steady.keep_raw_data              = 1;
steady.correlation_mode           = 'pearson';
steady.display                    = 0;
steady.downsampling               = 1;
steady.saccade_definition         = 3;
steady.tar_range_x                =   [NaN;NaN];
steady.tar_range_y                =   [NaN;NaN];


Beh_create_distractor_inactivation_filelist;

% Linus dPul inactivation MIP recordings datasets
subject_ID{1}                   = 'Control'; 
dates_subject_in{1}             = cellfun(@(x) str2double(x{1}(end-7:end)), filelist.Curius_control,'uniformoutput',false);
batching{1}.runs                = cellfun(@(x) x{2}, filelist.Curius_control,'uniformoutput',false);  % either empty or spec ific runs specified
group{1}                        = cellfun(@(x) x{1}, filelist.Curius_control,'uniformoutput',false);
batching_type{1}                = 3; % 1 run by run, 2 session by session, 3 group by group
batching{1}.range_of_dates      = 0;

subject_ID{2}                   = 'Experimental'; 
dates_subject_in{2}             = cellfun(@(x) str2double(x{1}(end-7:end)), filelist.Curius_inactivation,'uniformoutput',false);
batching{2}.runs                = cellfun(@(x) x{2}, filelist.Curius_inactivation,'uniformoutput',false);  % either empty or specific runs specified
group{2}                        = cellfun(@(x) x{1}, filelist.Curius_inactivation,'uniformoutput',false);
batching_type{2}                = 3; % 1 run by run, 2 session by session, 3 group by group
batching{2}.range_of_dates      = 0;


%% over all

run beh_run_analysis




