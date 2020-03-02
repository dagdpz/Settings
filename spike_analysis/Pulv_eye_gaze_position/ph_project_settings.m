keys.project_version='20180527';
%keys.project_version='20180212';
%% to check carefully
keys.task_types             ={'mem'};
keys.datasets               ={'Msac'};
keys.position_and_plotting_arrangements         ={'fixation','movement vectors','target location by origin'};
keys.plot.vertical_positons_PSTH        =1;
keys.plot.average_heat_maps             =1;

%% computation settings
keys.cal.stablity                   =[0.5,1];
keys.cal.single_rating              =[1,2,3];                   % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.SNR_rating                 =[1,2,3];
keys.cal.effectors                  =[0];
keys.cal.reach_hand                 =[0];
keys.cal.types                      =[3];
keys.cal.datasets                   =[];

%% batching
keys.batching.combine_monkeys       =1;                        % for population analysis
keys.batching.targets               ={'dPulv'};
keys.batching.monkeys               ={'Linus','Curius'};
keys.Linus.date                     ='[20151119 20151216]';%keys.date='[20151118 20151216]';??
keys.Curius.date                    ='[20151204 20160115]';

% %% cell count settings
% keys.cc.plot_types                  ={'gaze','fixation_x_position','gaze_and_fixation_x_position'};%,'gaze_modulation''
% keys.cc.conditions_to_plot          ={'Msac'};
% keys.cc.factors                     ={'epoch','space'};

%% epochs
keys.EPOCHS_PER_TYPE{2}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	0.05,	0.15,   'INI';...
    'Fhol',     4,	-0.3,	0,      'INI';...
    'Cue',      4,	0.05,	0.15,   'INI';...
    'PreS',     60,	-0.1,	-0.01,  'INI';...
    'PeriS',    60,	-0.01,	0.05,   'INI';...
    'Tacq',     5,	0,      0.15,   'INI';...
    'Thol',     20,	-0.3,	0,      'INI';...
    };

keys.ANOVAS_PER_TYPE(2).epoch={'INI' 'Facq';...
    'INI' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'PreS';...
    'Fhol' 'PeriS';...
    'Fhol' 'Tacq';...
    'Fhol' 'Thol'};

keys.WINDOWS_PER_TYPE{2}={...
    'Initiation',   2,	-0.5,	0;...
    'Visual onset', 4,	-0.8,   0.17;...
    'Saccade',      60,	-0.01,  0.22;...
    'T hold',       20,	-0.3,   0.1;...
    };

keys.ANOVAS_PER_TYPE(2).spaceLR            ={'Cue','PreS','PeriS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).positions          ={'Fhol','Cue','PreS','PeriS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).hands              ={'Facq','Fhol','Cue','PreS','PeriS','Tacq','Thol'}';
keys.ANOVAS_PER_TYPE(2).SxH                ={'Cue','PreS','PeriS','Tacq','Thol'}';

keys.EPOCHS_PER_TYPE{3}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	0.05,	0.15,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.05,   0.15,   'INI';...
    'MemE',     7, 	0,      0.2,    'INI';...
    'MemL',     9,	-0.3, 	0,      'INI';...
    'PreS',     60,	-0.1, 	-0.01,  'INI';...
    'PeriS',	60,	-0.01, 	0.05,   'INI';...
    'TIhol',	10,	0,      0.2,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };

keys.WINDOWS_PER_TYPE{3}={...
    'Initiation',   2,	-0.5,	0;...
    'Cue',          6,	-0.8,   0.8;...
    'Saccade',      60,	-0.7,   0.05;...
    'T hold',       20,	-0.75,   0;...
    };

keys.ANOVAS_PER_TYPE(3).epoch={'INI' 'Facq';...
    'INI' 'Fhol';...
    'Fhol' 'Cue';...
    'Fhol' 'MemE';...
    'Fhol' 'MemL';...
    'Fhol' 'PreS';...
    'Fhol' 'PeriS';...
    'Fhol' 'TIhol';...
    'Fhol' 'Thol';...
    };

keys.ANOVAS_PER_TYPE(3).spaceLR            ={'Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}';
keys.ANOVAS_PER_TYPE(3).positions          ={'Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}';
keys.ANOVAS_PER_TYPE(3).hands              ={'Facq','Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}';
keys.ANOVAS_PER_TYPE(3).SxH                ={'Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}';
% 
% %% population PSTH settings
% keys.limit_conditions.hands=0;
% cc=0;

% cc=cc+1;% 1 ungrouped raw
% keys.pop(cc).normalization           = 'none';
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).conditions_to_plot      = {'Vsac','Msac'};
% keys.pop(cc).ylim                    = [-0.5 3.5];
% 
% cc=cc+1;% 1 ungrouped baseline subtraction
% keys.pop(cc).normalization           = 'none';
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).FR_subtract_baseline    = 1;
% keys.pop(cc).ylim                    = [];
% 
% cc=cc+1;% 2 Cue spacial tuning
% keys.pop(cc).normalization              = 'none';
% keys.pop(cc).group_parameter            = 'in_Cue_spaceLR_Msac_mov';
% keys.pop(cc).conditions_to_plot         = {'Msac'};
% keys.pop(cc).FR_subtract_baseline       = 1;
% keys.pop(cc).combine_tuning_properties  = {'S_ExS','in_spaceLR_main_Msac_mov','in_ExS_Msac_mov'};
% keys.pop(cc).unselect                   = {'S_ExS','-0'};
% keys.pop(cc).y_lim                      = [];