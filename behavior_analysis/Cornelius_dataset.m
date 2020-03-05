%% Linus control ephys vs Flaffus control ephys

        global GLO
for Ta={'dPul'} %,'STP'
    for BL={'use_mem_pre','use_mem_bas'}
        clc
        clear batch,
        close all
        warning('off','all')
        % EH_compare_groups(batch,testing)
        
        % entered this tiny part
        Target=Ta{:};
        Baseline=BL{:};
        monkey='Cornelius';
        dag_drive_IP=DAG_get_server_IP;
        current_folder=[dag_drive_IP 'Projects\STS_PUL_MEM_S2S\behavior'];
        subfolder=[monkey '_S2S_saccades_' Target '_' Baseline];
        pdfpath=    [current_folder filesep subfolder];
        if ~exist(pdfpath,'dir')
            mkdir(current_folder,subfolder)
        end
        
        
        GLO.accuracy_as_absolute            =   1; %% 1 meaning it computes the averages of x and y first and then creates the euclidean
        GLO.delete_last                     =   0;
        GLO.fontsize_titles_big             =   16;
        GLO.fontsize_small                  =   8;
        GLO.fontsize_ticks                  =   12;
        GLO.fontsize_labels                 =   12;
        GLO.linewidth                       =   2;
        GLO.plot_raw_endpoints              =   1;
        GLO.calculate_statististics         =   1;
        GLO.parametric_testing              =   1;
        GLO.plot_statististics              =   1;
        GLO.plot_it                         =   1;
        GLO.create_pdf                      =   1;
        GLO.append_pdfs                     =   0;
        GLO.parent_folder                   =   '';
        GLO.folder_to_save                  =   pdfpath;
        GLO.type_of_free_gaze               =   '6';
        GLO.one_subject                     =   0;
        GLO.trial_by_trial                  =   0;
        GLO.CDF                             =   1;
        GLO.text_in_plot                    =   1;
        GLO.same_day                        =   0;
        GLO.testing_patient                 =   0;
        GLO.instructed_only                 =   0;
        GLO.choice_only                     =   0;
        GLO.only_significant                =   1;
        GLO.only_success_for_accuracy       =   0;
        GLO.only_between_group_comparissons =   0;
        GLO.point_per_batch                 =   0;
        GLO.summary                         =   [-1];
        GLO.target_locations_in_raw         =   0;
        GLO.saccade_in_raw                  =   0;
        GLO.modify_positions                =   0;
        GLO.euclideans_reach                =   [-24,  -12, 12,  24 ];
        GLO.trial_numbers                   =   0;
        GLO.keep_raw_output                 =   0;
        GLO.hits_in_plot                    =   0;
        GLO.min_hits                        =   1; %or 1 for 50 hits min
        GLO.eccentricity                    =   'ALL'; %%new
        
        steady.reach_1st_pos                =   1; %%new used for all but
        steady.reach_1st_pos_in             =   0; %%new
        steady.reach_pos_at_state_change    =   0; %%new
        
        steady.remove_outliers              =   1;
        % steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.1, 10};
        
        steady.passfilter                   =   {'saccades','lat',0.08, 0.5;'reaches','lat',0.2, 10;}; % add
        
        % steady.passfilter                   =   {'saccades','lat',0.01, 10;'reaches','lat',0.01, 10;}; %% !!!!!! remove
        
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
            %steady.saccade_definition           = 4;
            steady.saccade_definition           = 3;
            steady.smoothing_samples            = 15; %downsampling does a diff to find relevant changing samples, then it inerpolates to 1 ms between such samples and then it smoothens, the smoothing is set such that it grabs one sample before and one after plus a bit more but not reaching 2 samples 4.54 ms each sample of the eyetracker
            steady.sac_min_amp                  = 2;
            steady.raw_eye_traces               = 1;
            steady.correlation_mode             = 'pearson';
            steady.MPA_trial_by_trial           = 0;
            steady.downsampling                 = 1;
        end
        
        
        %% file selection
        xlspath=[dag_drive_IP 'Logs\Inactivation\Cornelius.xlsx'];
        Inputsequal={};
        Inputslist={};
        Inputsrange={};
        Inputsequal_for_batch={'Session'};
        DAG_combine_all_sheets_to_mastertable(xlspath,'Date');
        Inputsequal={'Target',Target};
        filelist_formatted = DAG_get_filelist_from_xls({'use_mem_ina'},Inputsequal,Inputsrange,Inputslist, '', xlspath); %Inputslist
        ina_filelist=DAG_get_batch_input_from_filelist(filelist_formatted,Inputsequal_for_batch,[monkey '_ina']);
        
        Inputsequal={};
        filelist_formatted = DAG_get_filelist_from_xls({Baseline},Inputsequal,Inputsrange,Inputslist, '', xlspath); %Inputslist
        bas_filelist=DAG_get_batch_input_from_filelist(filelist_formatted,Inputsequal_for_batch,[monkey '_ina']);
        
        %[out_files tolerated_indexes]=match_closest_dates_batching(ina_filelist,bas_filelist,0);
        [out_files tolerated_indexes]=match_closest_dates_batching(ina_filelist,bas_filelist,1);
        ina_filelist=ina_filelist(tolerated_indexes);
        bas_filelist=out_files(tolerated_indexes);
        
        % convert to this format
        clear group  dates_subject_in batching
        for k=1:2
            if k==1
                filelist=bas_filelist;
                subject_ID{k}='Control';
            else
                filelist=ina_filelist;
                subject_ID{k}='Experimental';
            end
            for m=1:numel(filelist)
                tempname=filelist{m}{1};
                fileseppos=strfind(tempname,filesep);
                tempsess=str2num(tempname(fileseppos(end)+1:end));
                group{k}{1,m}=tempname(fileseppos(end-1)+1:fileseppos(end)-1);
                dates_subject_in{k}{m,1}=str2num(tempname(fileseppos(end)+1:end));
                batching{k}.runs{m,1}=[filelist{m}{:,2}];
                batching_type{k}                = 3;
                batching{k}.range_of_dates      = 0;
            end
        end
        
        
        
        %% saving output
        correlation_conditions                                      = {'demanded_hand','choice','type','effector','target_side','success'};
        parameters_to_correlate                                     = {'lat','dur'};
        % Sel_all                                                 = {'display',0,'summary',1,'counting_field','left_chosen_successful','nsacc_max',5,'eyetracker_sample_rate',60,'saccade_definition',batching.saccade_definition,...
        %     'downsampling',1,'sac_ini_t',80,'sac_end_t',60,'smoothing_samples',40,'correct_offset',1,'sac_min_dur',0,'correlation_conditions',correlation_conditions,'parameters_to_correlate',parameters_to_correlate,'runs_as_batches',batching.runs_as_batches_val};
        Sel_all                                                 = {'display',steady.MPA_trial_by_trial,'summary',0,'counting_field','left_chosen_successful','nsacc_max',5,'eyetracker_sample_rate',steady.vp_sampling,'saccade_definition',steady.saccade_definition,...
            'downsampling',steady.downsampling,'sac_ini_t',steady.sac_ini_vel,'sac_end_t',steady.sac_end_vel,'smoothing_samples',steady.smoothing_samples,'correct_offset',steady.offset_corrected,'sac_min_dur',steady.min_dur,'correlation_conditions',...
            correlation_conditions,'parameters_to_correlate',parameters_to_correlate,'sac_min_amp',steady.sac_min_amp,'keep_raw_data',steady.raw_eye_traces,'correlation_mode',steady.correlation_mode, ...
            'remove_outliers',steady.remove_outliers,'passfilter',steady.passfilter,'tar_range_x',steady.tar_range_x,'tar_range_y',steady.tar_range_y, ...
            'reach_1st_pos',steady.reach_1st_pos,'reach_1st_pos_in',steady.reach_1st_pos_in,'reach_pos_at_state_change',steady.reach_pos_at_state_change};
        
        Sel_input=repmat({Sel_all},numel(ina_filelist),1);
        MA_input=[ina_filelist', Sel_input]';
        [MPA_out,~,~]                                          = monkeypsych_analyze_working(MA_input{:});
        for dd=1:numel(MPA_out)
            
            curent_date=num2str(MPA_out{dd}.selected(1).session);
            
            suc=[MPA_out{dd}.binary.success];
            R=[MPA_out{dd}.binary.eyetar_r];
            L=[MPA_out{dd}.binary.eyetar_l];
            CH=[MPA_out{dd}.binary.choice];
            
            DAT=NaN(size(suc));
            DAT(L&~CH)=1;
            DAT(R&~CH)=2;
            DAT(L&CH)=3;
            DAT(R&CH)=4;
            DAT(L&~suc&~CH)=5;
            DAT(R&~suc&~CH)=6;
            DAT(CH&~suc)=7;
            DAT(~R&~L&~suc)=8;
            
%             figure
%             hist(DAT)
            
            save([pdfpath filesep curent_date],'DAT');
            
        end
        
        
        run summ_controls
    end
end
