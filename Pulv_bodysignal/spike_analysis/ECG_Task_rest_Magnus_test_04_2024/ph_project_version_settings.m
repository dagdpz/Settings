%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Magnus'};
keys.Magnus.date                    ='[20220921 20230623]'; % done for 20220921 20230623
%keys.Magnus.date                    ='[20230623 20230623]'; % done for 20220921 20230623
keys.cal.datasets                   = [6, 7, 8]; %% should probably be renamed to batching instead of cal
keys.batching.targets               ={'dPul','VPL', 'MD'}; % , 'AIP', 'PCC', 'PPC'
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};


keys.tt.avg_stability                   =[3,Inf];       % min and max value accepted
keys.cal.block_stability                =[2,Inf];       % min and max value accepted

%% Localization (chamberlain keys)
cc=0;

% % Magnus right
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_right_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 39+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='AIP_R';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % Magnus left MD
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='MD_L';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% Magnus left VPL
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='VPL_L';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % Magnus left dPul
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_left_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 38.5+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='dPul_L';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% % right dPul
% cc=cc+1;
% keys.loc(cc).tt.choice = NaN;
% keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_bodysignal\scans\MA_20230203_right_chamber_normal_neurological_0.25mm.vmr';
% keys.loc(cc).z_offset_mm = 39+7; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'MA_';
% keys.loc(cc).monkey='Mag';
% keys.loc(cc).target_area='dPul_R';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'ungrouped';
% keys.loc(cc).saggital_or_coronal = 'coronal';
