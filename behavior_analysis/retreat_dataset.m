%% Linus control vs inactivation 

clc
clear batch,
close all
warning('off','all')
% EH_compare_groups(batch,testing)

global GLO
GLO.accuracy_as_absolute            =   1; %% 1 meaning it computes the averages of x and y first and then creates the euclidean
GLO.delete_last                     =   0;
GLO.fontsize_titles_big             =   16;
GLO.fontsize_small                  =   8;
GLO.fontsize_ticks                  =   12;
GLO.fontsize_labels                 =   12;
GLO.linewidth                       =   2;
GLO.plot_raw_endpoints              =   0;
GLO.calculate_statististics         =   1;
GLO.parametric_testing              =   1;
GLO.plot_statististics              =   1;
GLO.plot_it                         =   0;
GLO.create_pdf                      =   0;
GLO.append_pdfs                     =   0;
GLO.parent_folder                   =   '';
GLO.folder_to_save                  =   'K:\Projects\Pulv_eye_hand\behavior\Retreat\Thesis\20161122\inactivation_6_vs_6_sessions_all_sessions';
GLO.type_of_free_gaze               =   '6';
GLO.one_subject                     =   0;
GLO.trial_by_trial                  =   0;
GLO.CDF                             =   1;
GLO.text_in_plot                    =   0;
GLO.same_day                        =   0;
GLO.testing_patient                 =   0;
GLO.instructed_only                 =   1;
GLO.choice_only                     =   1;
GLO.only_significant                =   1;
GLO.only_success_for_accuracy       =   0;
GLO.only_between_group_comparissons =   0;
GLO.point_per_batch                 =   0;
GLO.summary                         =   [0];
GLO.target_locations_in_raw         =   0;
GLO.saccade_in_raw                  =   0;
GLO.modify_positions                =   1;
GLO.euclideans_reach                =   [-24,  -12, 12,  24 ];
GLO.trial_numbers                   =   0;
GLO.keep_raw_output                 =   0;
GLO.hits_in_plot                    =   0;
GLO.min_hits                        =   0; %or 1 for 50 hits min

steady.remove_outliers              =   1;
% steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.1, 10};
steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.2, 10;};
GLO.remove_outliers                 =   steady.remove_outliers;
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

if GLO.testing_patient
    steady.sac_ini_vel                  = 80;
    steady.sac_end_vel                  = 60;
    steady.min_dur                      = 0;
    steady.vp_sampling                  = 60; % Hertz
    steady.offset_corrected             = 1;
    steady.saccade_definition           = 5;
    steady.smoothing_samples            = 40; %downsampling does a diff to find relevant changing samples, then it inerpolates to 1 ms between such samples and then it smoothens, the smoothing is set such that it grabs one sample before and one after plus a bit more but not reaching 2 samples ~16 ms each sample of the eyetracker
    steady.sac_min_amp                  = 5;
    steady.raw_eye_traces               = 1;
    steady.correlation_mode             = 'pearson';
    steady.MPA_trial_by_trial           = 0;
    steady.downsampling                 = 1;
    % % 1: saccade, that ended up closest to the target and was big enough
    % % 2: biggest saccade that ended up close enough
    % % 3: last saccade in the state
    % % 4: first saccade in the state
    % % 5: the first that is bigger than 'sac_min_amp'
else
    steady.sac_ini_vel                  = 200;
    steady.sac_end_vel                  = 50;
    steady.min_dur                      = 0.03;
    steady.vp_sampling                  = 220; % Hertz
    steady.offset_corrected             = 1;
    steady.saccade_definition           = 4;
    steady.smoothing_samples            = 15; %downsampling does a diff to find relevant changing samples, then it inerpolates to 1 ms between such samples and then it smoothens, the smoothing is set such that it grabs one sample before and one after plus a bit more but not reaching 2 samples 4.54 ms each sample of the eyetracker
    steady.sac_min_amp                  = 2;
    steady.raw_eye_traces               = 1;
    steady.correlation_mode             = 'pearson';
    steady.MPA_trial_by_trial           = 0;
    steady.downsampling                 = 1;
end

%% RETREAT CONTROL VS INACTIVATION STARTS
% subject_ID{1}='Control';
% group{1}                        = {'Linus'};
% dates_subject_in{1}                = {[20160608 20160803]};
% batching_type{1}                = 2; % 1 run by run, 2 session by session, 3 group by group
% batching{1}.range_of_dates      = 1;
% batching{1}.runs                = {};  % either empty or specific runs specified

subject_ID{1}='Control';
group{1}                        = {'Linus_ina',     'Linus_ina',    'Linus_ina',    'Linus',        'Linus',        'Linus'};
dates_subject_in{1}             = {20160610;        20160615;       20160624;       20160630;       20160707;       20160804};
batching{1}.runs                = {3;               1;              1;              1;              4;              1}; % 1 run by run, 2 session by session, 3 group by group
batching_type{1}                = 3;
batching{1}.range_of_dates      = 0;




subject_ID{2}='Experimental';
group{2}                        = {'Linus_ina',     'Linus_ina',    'Linus_ina',    'Linus_ina',     'Linus_ina',   'Linus_ina'};
dates_subject_in{2}             = {20160610;        20160615;       20160624;       20160701;         20160708;      20160805};
batching{2}.runs                = {[4 5];           2;              2;              [1, 2];           [1 2 3];       [1 2]};  % either empty or specific runs specified
batching_type{2}                = 3; % 1 run by run, 2 session by session, 3 group by group
batching{2}.range_of_dates      = 0;
%% RETREAT CONTROL VS INACTIVATION ENDS


 run summ_controls