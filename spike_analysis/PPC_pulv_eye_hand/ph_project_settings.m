keys.project_versions={''};
keys.project_version='singlecells';
keys.filelist_formatted={};

% keys.cc.perturbations       = [0 1];
% keys.tt.perturbations       = [0 1];
keys.tt.trial_criterion_in ='per_congruent_hand_hemifield';
keys.tt.trial_criterion_ch ='per_congruent_hand_hemifield';
%% to check carefully
keys.position_and_plotting_arrangements             ={'hands_inactivation'};

%% computation settings
keys.cal.effectors                  =[3,4,6];
keys.cal.reach_hand                 =[1,2];
keys.cal.types                      =[4]; 
keys.cal.min_trials_per_condition   = 4;

%% batching
keys.batching.combine_monkeys           =0;
keys.batching.targets                   ={'MIP'};
keys.batching.monkeys                   ={'Linus','Tesla','Bacchus'};
%keys.Tesla.date                        ='[20160603 20180101]';
keys.Tesla.date                         ='[20160527 20160527]';
keys.Linus.date                         ='[20161103 20180101]';
% keys.Linus.sorted_neurons_sheetname     ='Linus';
%  keys.Bacchus.sorted_neurons_sheetname     ='final_sorting';
%  keys.Bacchus.sorted_neurons_filename      ='Bac_sorted_neurons';



%% cell count settings
keys.cc.hands               =[1 2];
keys.cc.choices             =[0];
keys.cc.perturbations       = [0 1];
keys.cc.factors                         ={'epoch','space','hand'};
keys.cc.conditions_to_plot              ={'Dcfr','Ddre','Ddsa'};
keys.cc.instructed_choice           ={'in'}; %to loop through them
keys.cc.plot_types          ={'per_epoch','space_x_hand','space_and_epoch'};


%% epochs
keys.EPOCHS_PER_TYPE{4}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Facq',     3,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.05,   0.15,   'INI';...
    'EDel',     8, 	0.3,    0.6,   'INI';...
    'Del',      4, 	-0.3,   0,      'INI';...
    'PreS',     60,	-0.1, 	-0.01,  'INI';...
    'PeriS',	60,	-0.01, 	0.05,   'INI';...
    'PostS',	61,	0.05,   0.2,    'INI';...
    'PreR',     62,	-0.3, 	-0.01,  'INI';...
    'PeriR',	62,	-0.05, 	0.15,   'INI';...
    'PostR',	63,	0.05,   0.2,    'INI';...
    'Thol',     20,	-0.3,   0,      'INI';...
    };
% keys.EPOCHS_PER_TYPE{4}={...
%     'INI',      2,	-0.5,	0.4,    -0.4,	-0.1,   'INI';...
%     'Facq',     3,	-1.2,   0.3,	-0.4,	-0.1,   'INI';...
%     'Fhol',     6,	-0.33,	0,      -0.3,	0,      'INI';...
%     'Cue',      6,	-0.6,   1,      0.05,   0.15,   'INI';...
%     'EDel',     4, 	-0.6,   -0.3,   -0.7,   -0.4,   'INI';...
%     'Del',      4, 	-0.3,   0,      -0.3,   0,      'INI';...
%     'PreS',     60,	-0.2,   0,      -0.1, 	-0.01,  'INI';...
%     'PeriS',	60,	-0.5,   0.6,	-0.01, 	0.05,   'INI';...
%     'PostS',	61,	0,      0.2,	0.05,   0.2,    'INI';...
%     'PreR',     62,	-0.3,   0,      -0.3, 	-0.01,  'INI';...
%     'PeriR',	62,	-0.7,  0.7,    -0.05, 	0.15,   'INI';...
%     'PostR',	63,	0,      0.2,	0.05,   0.2,    'INI';...
%     'Thol',     20,	-0.3,   0,      -0.3,   0,      'INI';...
%     };
