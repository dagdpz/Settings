%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Magnus'};
keys.Magnus.date                    ='[20220921 20230623]'; % done for 20230511 20230518
keys.cal.datasets                   = [6, 7, 8]; %% should probably be renamed to batching instead of cal
keys.batching.targets               ={'dPul','VPL', 'MD', 'AIP', 'PCC', 'PPC'};
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};

%% Localization (chamberlain keys)
cc=0;

% Linus right
cc=cc+1;
keys.loc(cc).tt.choice = NaN;
keys.loc(cc).tt.tasktypes = {'Fsac_opt','Vsac_opt'};
keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.loc(cc).z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'MA_';
keys.loc(cc).monkey='Mag';
keys.loc(cc).target_area='MD_R';
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'ungrouped';
keys.loc(cc).saggital_or_coronal = 'coronal';
