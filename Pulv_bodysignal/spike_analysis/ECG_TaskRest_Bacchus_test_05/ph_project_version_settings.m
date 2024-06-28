%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Bacchus'};
keys.Bacchus.date                   = '[20210715 20220322]';% 20210715
%keys.Bacchus.date                   = '[20220322 20220322]';% 20210715
keys.cal.datasets                   = [5,6,7];
keys.batching.targets               ={'dPul','VPL', 'MD'}; 
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};

keys.tt.avg_stability                   =[3,Inf];       % min and max value accepted
keys.cal.block_stability                =[3,Inf];       % min and max value accepted
% %% Localization (chamberlain keys)
cc=0;

% % Bacchus right VPL
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 23.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='VPL_R';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % % Bacchus right pulvinar
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 23.25+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='dPul_R';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % Bacchus left pulvinar
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0104\BA_20191115_chamber_normal_L_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 19.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='dPul_L';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % Bacchus left MD
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0104\BA_20191115_chamber_normal_L_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 19.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'BA_';
% keys.loc(cc).monkey='Bac';
% keys.loc(cc).target_area='MD_L';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% Bacchus right MD
cc=cc+1;
keys.loc(cc).tt.choice = NaN;
keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
keys.loc(cc).vmr_path = 'Y:\MRI\Bacchus\20191115_anatomy\dicom\0103\BA_20191115_chamber_normal_R_neurological_0.25mm.vmr';
keys.loc(cc).z_offset_mm = 23.25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'BA_';
keys.loc(cc).monkey='Bac';
keys.loc(cc).target_area='MD_R';
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'ungrouped';
keys.loc(cc).saggital_or_coronal = 'coronal';
