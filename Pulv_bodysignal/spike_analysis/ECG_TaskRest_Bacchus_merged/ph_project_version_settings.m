%% batching and input selection
% these 3 are only relevant for ph_initiation, population analysis will
% always take all population files in the respective folder
keys.batching.monkeys               ={'Bacchus'};
keys.Bacchus.date                   = '[20210715 20220322]';% 20210715
keys.cal.datasets                   = [5,6,7];
keys.batching.targets               ={'dPul','VPL', 'MD'}; 
keys.tt.tasktypes                   ={'Fsac_opt','Vsac_opt'};

% %% Localization (chamberlain keys)
% cc=0;
% 
% % Linus right
% cc=cc+1;
% keys.loc(cc).tt.choice = 0;
% keys.loc(cc).tt.tasktypes = {'Msac_opt'};
% keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
% keys.loc(cc).z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
% keys.loc(cc).monkey_prefix = 'LI_';
% keys.loc(cc).monkey='Lin';
% keys.loc(cc).target_area='dPulv_r';
% keys.loc(cc).grid_id = 'GRID.22.2';
% keys.loc(cc).significance_to_plot = 'visuomotor';
% keys.loc(cc).saggital_or_coronal = 'coronal';

% %% population PSTH settings
% 1

