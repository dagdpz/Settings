% README
% AUDV 20170628
% 
% The eye-hand behavioral scripts are meant to facilitate the statistical and graphical comparisson of two groups, usually
% a control and an experimental group with eye-hand coordination data collected with the monkeypsysch task controller of the DAG-DPZ.
% It is also a straight forward way of looking at the day to day performance of a subject in similar tasks.
% 
% The scripts are divided in a series of scripts and functions that
% are meant to require low user interaction except for the initial setting of parameters 
% for the batching, statistically testing, plotting, and saving of results of a given dataset.
%
% The settings script is usually located in the Datasets folder in the DAG dropbox as follows:
% DRIVE:\Users\USER\Dropbox\DAG\DAG_toolbox\Eye_hand_scripts\Datasets\*     *e.g. Example_settings_eye_hand.m 
% A new settings script should be created for every dataset after any modification to a previously used script 
% to make it possible to retrieve and reproduce previous results.
%
% The description of each of the user-relevant parameters will be described in this file as an example settings script.
% 
% The rest of the functions which ususally do not require user interaction follow a sequence in which the data is first organized and separated in two groups:
%     summ_controls.m
%         arrange_trials_eye_hand
% 
% The data is either averaged or further analyzed using outputs from the core monkeypsych analyze toolbox 
%         reaction_time_analysis
%             monkeypsych_analyze_working
%             reallocate_positions_from_mpa
% Once two groups exist two types of analysis can be performed, within and across groups
%         EH_statistics
%         statistics_control_exp_group
% To finally perform the plotting and saving of the analyzed data to pdfs or figs for presentation purposes 
%         EH_compare_groups

%% EXAMPLE SETTINGS START HERE

% make sure previous batches do not exist and all warnings are off or test part might become slow if some tests throw no data
clc
clear batch,
close all
warning('off','all')

% global GLO is used across subfunctions and scripts all the way to plotting and saving 
global GLO

GLO.accuracy_as_absolute            =   1;  %% 1 it computes the averages of x and y first and then creates the euclidean, 0 computes the euclidean then averages
GLO.delete_last                     =   0;  %% 1 clean runs in cases where the last trial of a run was empty, this should not be needed anymore, 0 do nothing

% plot settings, in general do not need to be modified 
GLO.fontsize_titles_big             =   16; 
GLO.fontsize_small                  =   8;
GLO.fontsize_ticks                  =   12;
GLO.fontsize_labels                 =   12;
GLO.linewidth                       =   2;

GLO.plot_raw_endpoints              =   0;  %% 1 in addition to average ellipses in accuracy / precision 2D plots raw endpoints are plotted, 0 only plot ellipses
GLO.calculate_statististics         =   1;  %% 1 yes, 0 no
GLO.parametric_testing              =   1;  %% 1 non-paired parametric testing, 0 non-paired non-parametric testing in statistics_control_exp_group and EH_statistics
GLO.plot_statististics              =   1;  %% 1 plot significance bars and asterisks, 0 do not plot
GLO.plot_it                         =   1;  %% 1 create plots, 0 no not create plots (regardless of which summaries)
GLO.create_pdf                      =   1;  %% 1 save plots in pdf and fig format, 0 do not save pdf
GLO.append_pdfs                     =   0;  %% 1 append to the pdf with same name the current one, create current fig, 0 do not append pdfs and overwrite the one with the same name
GLO.parent_folder                   =   ''; %% only fill in for replacing folder name for monkey and date, helpful for plotting several individual dates in a batch
GLO.folder_to_save                  =   'K:\Projects\Pulv_eye_hand\behavior\2017\Linus_pulv_prr'; %% folder to save pdf
GLO.type_of_free_gaze               =   '6'; %% 1 for no initial eye fixation required in free gaze reaches, 6 for initial eye fixation required in free gaze reaches
GLO.one_subject                     =   0;  %% 1 for duplicating data of control as experimental subject and not running statistics, makes code faster if looking at daily training
GLO.trial_by_trial                  =   1;  %% 1 means and SEM are calculated across trials and not across sessions or runs, 0 depends on type of batching but it is an average of averages
GLO.CDF                             =   1;  %% 1 plot summary number 2 will be CDF of raw data, 0 plot symmary number 2 will be histograms of raw data
GLO.text_in_plot                    =   1;  %% 1 mean value is displayed as text close to mean bar, 0 no text is added
GLO.same_day                        =   0;  %% not in use anymore, keep as zero
GLO.testing_patient                 =   0;  %% 1 sets specific filtering and sampling rate for 60Hz eyetracker, 0 sets parameters for 220Hz eyetracker
GLO.instructed_only                 =   0;  %% 1 only instructed values are displayed only if choice is set to 0
GLO.choice_only                     =   0;  %% 1 only choice values are displayed only if instructed is set to 0
GLO.only_significant                =   1;  %% 1 only significant results of tests will appear as asterisks and significant bars
GLO.only_success_for_accuracy       =   0;  %% not in use anymore, keeps as zero
GLO.only_between_group_comparissons =   0;  %% 1 only statistically test control vs experimental group, 0 test also conditions within group
GLO.point_per_batch                 =   0;  %% 1 instead of displaying mean and SEM with error bars show each unit per batch as a single point, 0 show mean and SEM as bars
GLO.summary                         =   [-1];   %% -1 all, 1 error bars, 2 histograms, 3 accuracy/precision ellipses, 4 correlations raw and residual,...
                                                % 5 initial release latency, 6 raw trace figures 2D,...
                                                % 7 raw trace vs time horizontal and vertical, 8 filelist, 9 error summary, 
                                                % 10 choice minus instructed, 11 session by session datapoints shown sequentially,...
                                                % 12 hand release errors
GLO.target_locations_in_raw         =   0;  %% 1 show center and allowed window of target in accuracy plot (3), allowed window radiuses are hardcoded, 0 do not
GLO.saccade_in_raw                  =   0;  %% 1 in x or y vs time (7) a line marks the onset of every saccade, 0 no line is plotted
GLO.modify_positions                =   0;  %%  1 finds the closest target to one of the defined ones in GLO.euclideans_reach...
                                            %  to reduce the number of targets, good for randomized target locations, 0 keep regular target location  
GLO.euclideans_reach                =   [-24,  -12, 12,  24 ]; %% position modifiers for GLO.modify_positions 
GLO.trial_numbers                   =   0;  %% 1 writes trial number close to each datapoint of correlation plots, 0 no trial number is added
GLO.keep_raw_output                 =   1;  %% needs to be on for plots 6 and 7 to plot raw eye and hand traces
GLO.hits_in_plot                    =   0; %% 1 writes along the mean value of an error bar the number of trials for that condition
GLO.min_hits                        =   1; %  1 for taking only runs with 50 hits minimum across conditions, the 50 is hardcoded in reaction_time_analysis
GLO.eccentricity                    =   'ALL'; %% other options being ALL, CLOSE, or FAR and defined below

steady.reach_1st_pos                =   1; %% default, taking very first reach after release
steady.reach_1st_pos_in             =   0; %% first position inside allowed window
steady.reach_pos_at_state_change    =   0; %% first position at state change

steady.remove_outliers              =   1; %% for correlation
% steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.1, 10};

steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.2, 10;}; % saccades with latencies shorter than 80 ms or longer than 500 ms excluded
                                                                                                % reaches with latencies shorter than 200 ms or longer than 10 s excluded
% steady.passfilter                   =   {'saccades','lat',0.01, 10;'reaches','lat',0.01, 10;}; %% !!!!!! remove

switch GLO.eccentricity %%new
    case 'ALL'
        steady.tar_range_x                  =   [NaN;NaN];
        steady.tar_range_y                  =   [NaN,NaN];
    case 'CLOSE'
        steady.tar_range_x                  =   [-16.9,-0.01;0.01,16.9]; %% left range; right range in degrees
        steady.tar_range_y                  =   [-100,100;-100,100]; %% one vertical range defined for each horizontal reach
    case 'FAR'
        steady.tar_range_x                  =   [-30,-17;17,30]; 
        steady.tar_range_y                  =   [-100,100;-100,100];
end

GLO.remove_outliers                 =   steady.remove_outliers;

% steady.* goes to monkeypsych_analyze_working but needs to be defined in reaction_time_analysis
if GLO.testing_patient
    steady.sac_ini_vel                  = 80; % initial instant velocity equal or larger than this needed to detect a saccade
    steady.sac_end_vel                  = 60; % instant velocity lower than this after a detected saccade means end of saccade
    steady.min_dur                      = 0;  % duration in ms of a saccade
    steady.vp_sampling                  = 60; % in Hertz
    steady.offset_corrected             = 1;  % 1 correct with mode, 0 do not correct
    steady.saccade_definition           = 5; %% definitions below
    steady.smoothing_samples            = 40; %downsampling does a diff to find relevant changing samples, then it inerpolates to 1 ms between such samples and then it smoothens, the smoothing is set such that it grabs one sample before and one after plus a bit more but not reaching 2 samples ~16 ms each sample of the eyetracker
    steady.sac_min_amp                  = 5; % in degrees, matters if definition includes minimum amplitude
    steady.raw_eye_traces               = 1; % keep raw eye traces in output
    steady.correlation_mode             = 'pearson'; %% other option being spearman
    steady.MPA_trial_by_trial           = 0; % displays trial by trial plots directly from MPA
    steady.downsampling                 = 1;
    % % Saccade definitions
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

%% EXAMPLE FOR EACH COMMA SEPARATED SUBJECT IS A DATAPOINT

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

run summ_controls


%% EXAMPLE FOR DAY BY DAY SUMARIES FROM THE SAME MONKEY
monkey = 'Flaffus';
range_of_dates = [20170402 20170402];
path  = ['K:\Data' filesep monkey];
[~, ~, dates] = arrange_trials(monkey,path, range_of_dates);
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

