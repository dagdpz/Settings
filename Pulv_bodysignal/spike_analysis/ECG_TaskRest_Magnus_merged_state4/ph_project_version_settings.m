%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Magnus'};
keys.Magnus.date                    ='[20220921 20230623]'; % done for 20220921 20230623
keys.cal.datasets                   = [6, 7, 8]; %% should probably be renamed to batching instead of cal
keys.batching.targets               ={'dPul','VPL', 'MD'}; % , 'AIP', 'PCC', 'PPC', 'dPul','VPL', 'MD'
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};

keys.cal.only_aborted_after_state=[2,4];

%% Localization (chamberlain keys)
selection_lists = {'_after_SNR_exclusion_stable_noLow_amplitude_ccs_any', '_after_SNR_exclusion_selected'};
list_folders    = {'unit_lists_ECG', 'unit_lists'};

cc=0;

for listNum = 1:length(selection_lists)

% % % Magnus left VPL - coronal
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='VPL_L';
% keys.loc(cc).area_color=[1 0.53 0];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
%
% % % Magnus left dPul
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='dPul_L';
% keys.loc(cc).area_color=[0.05 0.65 0.7];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal  = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
% 
% % % right dPul
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_right_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 39+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='dPul_R';
% keys.loc(cc).area_color=[0.05 0.65 0.7];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal  = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
%
% % Magnus left MD
% cc=cc+1;
% keys.loc(cc).tt.choice            = NaN;
% keys.loc(cc).tt.tasktypes         = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path             = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm          = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix        = 'MA_';
% keys.loc(cc).monkey               = 'Mag';
% keys.loc(cc).target_area          = 'MD_L';
% keys.loc(cc).area_color           = [1 0 0.6];
% keys.loc(cc).grid_id              = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal  = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
% 
% % % Magnus right AIP
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_right_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 39+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='AIP_R';
% keys.loc(cc).area_color=[0.85 0.15 0.85];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal  = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
% 
% % % Magnus left PCC
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='PCC_L';
% keys.loc(cc).area_color=[0.05 0.65 0.3];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
% 
% % Magnus right PPC
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_right_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 39+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='PPC_R';
% keys.loc(cc).area_color=[1 0.85 0];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal  = slicePlane{1};
% keys.loc(cc).unit_list            = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Magnus_TaskRest_state4\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
    end
end
