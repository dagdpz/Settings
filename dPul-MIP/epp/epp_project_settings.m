% Minimal project settings for epp_initiation_units.
% Project: TDT_brain

cfg.datasets = [31];

% cfg.CONDITIONS = struct( ...
%     'name', {'Ipsi', 'Contra'}, ...
%     'color', {[200 55 12], [100 55 22]}, ...
%     'parameters', num2cell(struct('choice',{0,0},'hemifield',{-1,1})));
% 


k=0;

k=k+1;
cfg.CONDITIONS(k).name='IHIS_control';
cfg.CONDITIONS(k).color=[0 128 255];
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=-1;
cfg.CONDITIONS(k).parameters.reach_hand=-1;
cfg.CONDITIONS(k).parameters.perturbation=0;
k=k+1;
cfg.CONDITIONS(k).name='IHCS_control';
cfg.CONDITIONS(k).color=[255 0 255];
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=1;
cfg.CONDITIONS(k).parameters.reach_hand=-1;
cfg.CONDITIONS(k).parameters.perturbation=0;
k=k+1;
cfg.CONDITIONS(k).name='CHIS_control';
cfg.CONDITIONS(k).color=[0 255 0];
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=-1;
cfg.CONDITIONS(k).parameters.reach_hand=1;
cfg.CONDITIONS(k).parameters.perturbation=0;
k=k+1;
cfg.CONDITIONS(k).name='CHCS_control';
cfg.CONDITIONS(k).color=[255 128 0];
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=1;
cfg.CONDITIONS(k).parameters.reach_hand=1;
cfg.CONDITIONS(k).parameters.perturbation=0;

k=k+1;
cfg.CONDITIONS(k).name='IHIS_inactivation';
cfg.CONDITIONS(k).color=[0 128 255]/2;
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=-1;
cfg.CONDITIONS(k).parameters.reach_hand=-1;
cfg.CONDITIONS(k).parameters.perturbation=[1 2 3];
k=k+1;
cfg.CONDITIONS(k).name='IHCS_inactivation';
cfg.CONDITIONS(k).color=[255 0 255]/2;
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=1;
cfg.CONDITIONS(k).parameters.reach_hand=-1;
cfg.CONDITIONS(k).parameters.perturbation=[1 2 3];
k=k+1;
cfg.CONDITIONS(k).name='CHIS_inactivation';
cfg.CONDITIONS(k).color=[0 255 0]/2;
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=-1;
cfg.CONDITIONS(k).parameters.reach_hand=1;
cfg.CONDITIONS(k).parameters.perturbation=[1 2 3];
k=k+1;
cfg.CONDITIONS(k).name='CHCS_inactivation';
cfg.CONDITIONS(k).color=[255 128 0]/2;
cfg.CONDITIONS(k).parameters.choice=0;
cfg.CONDITIONS(k).parameters.hemifield=1;
cfg.CONDITIONS(k).parameters.reach_hand=1;
cfg.CONDITIONS(k).parameters.perturbation=[1 2 3];



cfg.EPOCHS = { ...
    'INI',   2,  -0.4,  -0.1; ...
    'Facq',  3,  -0.4,  -0.1; ...
    'Fhol',  6,  -0.3,   0; ...
    'Cue',   6,   0.06,  0.12; ...
    'Del',   4,  -0.3,   0; ...
    'PreR',  62, -0.4,  -0.1; ...
    'PeriR', 62, -0.05,  0.25; ...
    'PostR', 63,  0.1,   0.4; ...
    'Thol',  20, -0.3,   0; ...
    };


cfg.statistics.within_epoch = { ...
    'PreSpace',  'PreR', [1 2], [3 4]; ...
    'PeriSpace', 'PeriR', [1 2], [3 4]; ...
    };

cfg.statistics.across_epochs = { ...
    'Cue_vs_INI',  'Cue',   [1 2], 'INI'; ...
    'PeriR_vs_INI','PeriR', [1 2], 'INI'; ...
    };

cfg.statistics.within_epoch_test = 'unpaired_ttest';
cfg.statistics.across_epochs_test = 'paired_ttest';

cfg.WINDOWS = struct( ...
    'name', {'Cue','Delay Period', 'Reach'}, ...
    'align_state', {3, 6, 62}, ...
    't_start_s', {-0.2, -0.2, -0.5}, ...
    't_end_s', {0.5, 0.5, 0.5});
