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
GLO.calculate_statististics         =   0;
GLO.parametric_testing              =   0;
GLO.plot_statististics              =   0;
GLO.plot_it                         =   1;
GLO.create_pdf                      =   1;
GLO.append_pdfs                     =   0;
GLO.parent_folder                   =   'Y:\Projects\Pulv_eye_hand\behavior\2018\pre_paper_checks';
% GLO.folder_to_save                  =   'Y:\Projects\Pulv_eye_hand\behavior\Thesis\20161217\inactivation_revision';
% GLO.folder_to_save                  =   'Y:\Projects\Pulv_eye_hand\behavior\2018\pre_paper_checks';
GLO.type_of_free_gaze               =   '6';
GLO.one_subject                     =   1;
GLO.trial_by_trial                  =   1;
GLO.CDF                             =   1;
GLO.text_in_plot                    =   1;
GLO.same_day                        =   0;
GLO.testing_patient                 =   0;
GLO.instructed_only                 =   1;
GLO.choice_only                     =   1;
GLO.only_significant                =   1;
GLO.only_success_for_accuracy       =   0;
GLO.only_between_group_comparissons =   0;
GLO.point_per_batch                 =   1;
GLO.summary                         =   [-1];
GLO.target_locations_in_raw         =   1;
GLO.saccade_in_raw                  =   0;
GLO.modify_positions                =   0;
GLO.euclideans_reach                =   [-24,  -12, 12,  24 ];
GLO.trial_numbers                   =   0;
GLO.keep_raw_output                 =   1;
GLO.hits_in_plot                    =   0;
GLO.min_hits                        =   1; %or 1 for 50 hits min
GLO.eccentricity                    =   'ALL'; %%new

steady.reach_1st_pos                =   1; %%new
steady.reach_1st_pos_in             =   0; %%new
steady.reach_pos_at_state_change    =   0; %%new

steady.remove_outliers              =   1;
% steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.1, 10};
steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.2, 10;};


switch GLO.eccentricity %%new
    case 'ALL'
        steady.tar_range_x                  =   [NaN;NaN];
        steady.tar_range_y                  =   [NaN,NaN];
    case 'CLOSE'
        steady.tar_range_x                  =   [-16.9,-0.01;0.01,16.9];
        steady.tar_range_y                  =   [-100,100;-100,100];
    case 'FAR'
        steady.tar_range_x                  =   [-30,-17;17,30];
        steady.tar_range_y                  =   [-100,100;-100,100];
end

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

% %% Sir Linselot the 7th
% 
% monkey = 'Linus_phys';
% range_of_dates = [20160203 20160527];
% path  = ['Y:\Data' filesep monkey];
% [~, ~, dates] = DAG_arrange_trials(monkey,path, range_of_dates);
% for i_dates = 1:numel(dates)
%     subject_ID{1}='Control';
%     GLO.overwriten_date = dates(i_dates);
%     group{1}                        = {monkey};
%     dates_subject_in{1}             = {GLO.overwriten_date};
%     batching{1}.runs                = {};  % either empty or specific runs specified
%     batching_type{1}                = 2; % 1 run by run, 2 session by session, 3 group by group
%     batching{1}.range_of_dates      = 0;
%     
%     subject_ID{2}='Experimental';
%     group{2}                        = {monkey};
%     dates_subject_in{2}             = {GLO.overwriten_date};
%     batching{2}.runs                = {};  % either empty or specific runs specified
%     batching_type{2}                = 2; % 1 run by run, 2 session by session, 3 group by group
%     batching{2}.range_of_dates      = 0;
%     
%     run summ_controls
% end

% %% Flaffstamann
% 
% monkey = 'Flaffus_phys';
% range_of_dates = [20160603 20160722];
% path  = ['Y:\Data' filesep monkey];
% [~, ~, dates] = DAG_arrange_trials(monkey,path, range_of_dates);
% for i_dates = 1:numel(dates)
%     subject_ID{1}='Control';
%     GLO.overwriten_date = dates(i_dates);
%     group{1}                        = {monkey};
%     dates_subject_in{1}             = {GLO.overwriten_date};
%     batching{1}.runs                = {};  % either empty or specific runs specified
%     batching_type{1}                = 2; % 1 run by run, 2 session by session, 3 group by group
%     batching{1}.range_of_dates      = 0;
%     
%     subject_ID{2}='Experimental';
%     group{2}                        = {monkey};
%     dates_subject_in{2}             = {GLO.overwriten_date};
%     batching{2}.runs                = {};  % either empty or specific runs specified
%     batching_type{2}                = 2; % 1 run by run, 2 session by session, 3 group by group
%     batching{2}.range_of_dates      = 0;
%     
%     run summ_controls
% end

%% Tesli

monkey = 'Tesla_phys'; % pulvinar ephys dataset
range_of_dates = [20170329 20170413];
path  = ['Y:\Data' filesep monkey];
[~, ~, dates] = DAG_arrange_trials(monkey,path, range_of_dates);
for i_dates = 1:numel(dates)
    subject_ID{1}='Control';
    GLO.overwriten_date = dates(i_dates);
    group{1}                        = {monkey};
    dates_subject_in{1}             = {GLO.overwriten_date};
    batching{1}.runs                = {};  % either empty or specific runs specified
    batching_type{1}                = 2; % 1 run by run, 2 session by session, 3 group by group
    batching{1}.range_of_dates      = 0;
    
    subject_ID{2}='Experimental';
    group{2}                        = {monkey};
    dates_subject_in{2}             = {GLO.overwriten_date};
    batching{2}.runs                = {};  % either empty or specific runs specified
    batching_type{2}                = 2; % 1 run by run, 2 session by session, 3 group by group
    batching{2}.range_of_dates      = 0;
    
    run summ_controls
end