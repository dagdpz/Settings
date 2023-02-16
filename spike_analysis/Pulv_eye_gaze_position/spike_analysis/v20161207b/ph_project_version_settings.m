keys.project_version='v20161207b'; 
 
%% to check carefully 
keys.task_types             ={'mem'}; 
keys.datasets               ={'Msac'}; 
keys.position_and_plotting_arrangements         ={'fixation','movement vectors','target location by origin'}; 
 
%% computation settings 
keys.cal.stablity                   =[1]; 
keys.cal.single_rating              =[1,2]; 
keys.cal.effectors                  =[0]; 
keys.cal.reach_hand                 =[0]; 
keys.cal.types                      =[3]; 
 
%% batching 
keys.batching.targets               ={'dPulv'}; 
keys.batching.monkeys               ={'Linus','Curius'}; 
keys.Linus.date                     ='[20151119 20151216]';%keys.date='[20151118 20151216]';?? 
keys.Curius.date                    ='[20151204 20160115]'; 
 
%% cell count settings 
keys.cc.conditions_to_plot          ={'Msac'}; 
keys.cc.factors                     ={'epoch','space'}; 
 
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
keys.ANOVAS_PER_TYPE(2).positions          ={'Cue','PreS','PeriS','Tacq','Thol'}'; 
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
'TIhol',	10,	0,      0.1,    'INI';... 
'Thol',     20,	-0.3,   0,      'INI';... 
}; 
 
keys.WINDOWS_PER_TYPE{3}={... 
'Initiation',   2,	-0.5,	0;... 
'Cue',          6,	-0.8,   0.78;... 
'Saccade',      60,	-0.7,   0.05;... 
'T hold',       20,	-0.7,   0;... 
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
keys.ANOVAS_PER_TYPE(3).positions             ={'Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}'; 
keys.ANOVAS_PER_TYPE(3).hands              ={'Facq','Fhol','Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}'; 
keys.ANOVAS_PER_TYPE(3).SxH                ={'Cue','MemE','MemL','PreS','PeriS','TIhol','Thol'}'; 
 
 
