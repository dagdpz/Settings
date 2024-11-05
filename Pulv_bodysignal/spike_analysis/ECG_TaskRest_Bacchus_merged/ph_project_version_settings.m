%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Bacchus'};
keys.Bacchus.date                   = '[20210715 20220322]';% 20210715 20220322
keys.cal.datasets                   = [5,6,7];
keys.batching.targets               ={'dPul','VPL', 'MD'}; % {'dPul','VPL', 'MD'};
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};

%% Localization (chamberlain keys)
selection_lists = {'_after_SNR_exclusion_stable_noLow_amplitude_ccs_any', '_after_SNR_exclusion_selected'};
list_folders    = {'unit_lists_ECG', 'unit_lists'};

cc=0;

for listNum = 1:length(selection_lists)

    for slicePlane = {'coronal', 'sagittal'}
    
% % Bacchus right VPL coronal
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 23.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='VPL_R';
% keys.loc(cc).area_color=[1 0.53 0];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = slicePlane{1};
% keys.loc(cc).unit_list = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Bacchus_TaskRest\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};

% % Bacchus right pulvinar
cc=cc+1;
keys.loc(cc).tt.choice = NaN;
keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
keys.loc(cc).z_offset_mm = 23.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'BA_';
keys.loc(cc).monkey='Bac';
keys.loc(cc).target_area='dPul_R';
keys.loc(cc).area_color=[0.05 0.65 0.7];
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'ungrouped';
keys.loc(cc).saggital_or_coronal = slicePlane{1};
keys.loc(cc).unit_list = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Bacchus_TaskRest\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
keys.loc(cc).folder_suffix        = selection_lists{listNum};

% Bacchus left pulvinar
cc=cc+1;
keys.loc(cc).tt.choice = NaN;
keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0104\BA_20191115_chamber_normal_L_neurological_0.25mm.vmr';
keys.loc(cc).z_offset_mm = 19.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'BA_';
keys.loc(cc).monkey='Bac';
keys.loc(cc).target_area='dPul_L';
keys.loc(cc).area_color=[0.05 0.65 0.7];
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'ungrouped';
keys.loc(cc).saggital_or_coronal = slicePlane{1};
keys.loc(cc).unit_list = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Bacchus_TaskRest\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
keys.loc(cc).folder_suffix        = selection_lists{listNum};

% % Bacchus left MD
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0104\BA_20191115_chamber_normal_L_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 19.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='MD_L';
% keys.loc(cc).area_color=[1 0 0.6];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = slicePlane{1};
% keys.loc(cc).unit_list = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Bacchus_TaskRest\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
% 
% % Bacchus right MD
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 23.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='MD_R';
% keys.loc(cc).area_color=[1 0 0.6];
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = slicePlane{1};
% keys.loc(cc).unit_list = ['Y:\Projects\Pulv_bodysignal\ECG_triggered_spikes\ECG_Bacchus_TaskRest\' list_folders{listNum} '\unitInfo' selection_lists{listNum} '.mat'];
% keys.loc(cc).folder_suffix        = selection_lists{listNum};
    end
end
