
keys.condition_parameters={'choice','reach_hand','perturbation'};
%keys.condition_parameters={'choice','perturbation'};

%% computation settings
keys.cal.datasets                   =[70]; %% [10]; for bacchus somehow
keys.cal.effectors                  =[0];
keys.cal.reach_hand                 =[0];
keys.cal.types                      =[4];


% %% batching
% keys.batching.combine_monkeys           =0;
% keys.batching.targets                   ={'MIP'};
% keys.batching.monkeys                   ={'Linus','Tesla','Bacchus'};
% %keys.Tesla.date                        ='[20160603 20180101]';
% keys.Tesla.date                         ='[20160527 20160527]';
% keys.Linus.date                         ='[20161103 20180101]';
% % keys.Linus.sorted_neurons_sheetname     ='Linus';
% %  keys.Bacchus.sorted_neurons_sheetname     ='final_sorting';
% %  keys.Bacchus.sorted_neurons_filename      ='Bac_sorted_neurons';



%% criterions to exclude trials and units
keys.cal.stablity                       =[1];           % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the table
keys.cal.single_rating                  =[1,2,3];       % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.SNR_rating                     =[1,2,3];       % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.perturbation_groups            ={0,[2]};       % which perturbation values from excel table will be assigned to control and perturbation for comparisons and population analysis

%% batching
keys.batching.combine_monkeys       =0;
keys.batching.monkeys               ={'Linus'}; %% Bacchus
% keys.Tesla.date                   ='[20160217 20180101]';
%keys.Linus.date                    ='[20161103 20180101]';
%keys.Linus.date                       ='[20210520 20211208]';
keys.Linus.date                     ='[20211201 20211208]';
keys.Bacchus.date                   ='[20201112 20210311]';
keys.batching.targets               = {'LIP_L','LIP_R'};
keys.contra_ipsi_relative_to        ='perturbation_site';

keys.tt.tasktypes                   ={'Dsac_han'}; % typically only one tasktype defines
keys.tt.type_effectors              ={'Dsac'}; % typically only one tasktype defines
keys.tt.reach_hand                  =[];
keys.tt.choice                      =[0 1]; %IMPORTANT: and also not really perfect, for choice trials trial criterion is applied by hemifield, not by position.
% Each unique combination of the above parameters has to contain at least keys.cal.min_trials_per_condition trials, if not the cell is excluded in ph_reduce_tuning_table
keys.tt.selection                   ={};                         % easy to use if there is a parameter in the tuning table for which you want your cells to have the same value
%                                       'in_NH_TIhol_position_Msac_opt','true'};  % each row in the cell arryáy will be used to exclude cells that don't have the specifie characteristic
keys.tt.unselect                    ={}; % easy to use if there is a parameter in the tuning table for which your cells shouldn't have a specific value
keys.tt.combine_tuning_properties   ={'hand_tuning','in_IH_Facq_epoch_Ddsa_han','in_CH_Facq_epoch_Ddsa_han'}; % results in enen/ensu/suen/en-/-en/su-/-su/--
% ph_load_extended_tuning_table will create an additional column from combining existing columns: 
% 1st entry is the name of the new column (to refer to it), and the following entries specify the columns which should be combined.
% this additional column can be used for grouping, specific selection and/or unselection ph_load_extended_tuning_table also creates new columns which can be used
% for multicomparison correction (sort of) by excluding cells that did not show certain combination of ANOVA effects (this is ONLY used in cell_counts so far



%% tuning table selection
% Most important parameter to understand how cell seleciton works in the population analysis, is the trial criterion per condition:
% units with less than this amount of trials for one of the conditions will be excluded. 
keys.cal.min_trials_in                  =5;                   % minimum number of trials instructed
keys.cal.min_trials_ch                  =5;                   % minimum number of trials choice
keys.tt.trial_criterion_in          = 'per_hemifield';
keys.tt.trial_criterion_ch          = 'per_hemifield';
% This criterion is applied every time the tuning table is loaded via ph_load_extended_tuning_table and ph_reduce_tuning_table. 
% The tricky part here is to define the conditions in which we ask for a specific number of trials. 
% Each condition is defined by tasktype(contains type,effector,and
% position_arrangement),position (depends on arrangement),hand used and choice/instruced trial (MISSING HERE: PERTURBATION)

cc=0;
cc=cc+1;
keys.ndt(cc).decoding_parameters={'hemifield','choice','perturbation'};
keys.ndt(cc).conditions_to_plot={'Dsac'};

