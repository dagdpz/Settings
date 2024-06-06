%% cell count settings

keys.batching.combine_monkeys       =0;

keys.AN.test_types='permutations'; %% as opposed to 'parametric'/'nonparametric'
keys.AN.check_normality=0;
keys.plot.events=[1:3,5:11,60,90];     % select events that should be plotted (vertical lines) on all PSTH like plots
keys.plot.population_PSTH_legends       =0;

% keys.batching.combine_monkeys       =0;
% 
%% for response timing
% keys.WINDOWS_PER_TYPE{3}={...
%     'Cue',          6,	-0.3,   1;...
%     'Saccade',      60,	-0.52,   0.7;...
%     'Target',       4,	-0.2,   0.5;...
%     };

%% for scatter
keys.Linus.marker      ='o';
keys.Curius.marker     ='o';


keys.colors.EP_EN   =[255 0 64];
keys.colors.EP_SU   =[0 255 255];

keys.colors.in_CS   =[255  65  0];
keys.colors.in_IS   =[0   65 255];
keys.colors.in_AH_CS   =[255  65  0];
keys.colors.in_AH_IS   =[0   65 255];

keys.colors.ch_CS   =[128 0 32];
keys.colors.ch_IS   =[0 128 128];

%% do not use for tun!
keys.EPOCHS_PER_TYPE{3}={...
    'INI',      2,	-0.4,	-0.1,   'INI';...
    'Fhol',     6,	-0.3,	0,      'INI';...
    'Cue',      6,	0.06,   0.16,   'INI';... %% 'Cue',      4,	0.07,	0.17,   'INI';... SHIFTED
    'Mem',     9,	-0.3, 	-0,     'INI';... 
    'Pre',     60,	-0.1, 	-0.01,  'INI';...
    'Peri',     60,	-0.01,  0.05,   'INI';...
    'Post',     10,	0,      0.15,   'INI';...
    };
keys.ANOVAS_PER_TYPE(3).main               ={'INI','Fhol','Cue','Mem','Pre','Peri','Post'}';

cc=0;

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ={'epoch_all','space_position'};
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'Cue','MemL','PreS','PeriS','TIhol'}';

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ={'visuomotor'};
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'INI'}';

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ={'eccentricity_x_angle'};
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'Cue','MemL','PreS','PeriS','TIhol'}';
keys.ccs(cc).separate_multicomparison= 1;
keys.ccs(cc).multicomp_epochs(3).epoch={''}';

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ={'epoch_all'};
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'Cue','MemL','PreS','PeriS','TIhol'}';
keys.ccs(cc).plot_as_pie            =0;

cc=cc+1;
keys.ccs(cc).tt.choice              =0;
keys.ccs(cc).factor                 ={'space_position'};
keys.ccs(cc).conditions_to_plot     ={'Msac'};
keys.ccs(cc).plot_type              ='per_epoch';
keys.ccs(cc).epochs.Msac            ={'Cue','MemL','PreS','PeriS','TIhol'}';
keys.ccs(cc).plot_as_pie            =0;


%% tuning onset settings
cc=0;

cc=cc+1;% 'Msac epoch tuning';
ce=0;
keys.ons(cc).unique_title            = 'Msac epoch tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Msac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
keys.ons(cc).permutation_tests=1; 
keys.ons(cc).PSTH_binwidth=0.01; 
keys.ons(cc).gaussian_kernel=0.01;
keys.ons(cc).kernel_type='gaussian';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Mem';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Mem';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';

cc=cc+1;% 'Msac space tuning';
ce=0;
keys.ons(cc).unique_title            = 'Msac instructed space tuning';
keys.ons(cc).group_parameter         = 'ungrouped';
keys.ons(cc).conditions_to_plot      = {'Msac'};
keys.ons(cc).tt.choice =0; %for cell exclusion
keys.ons(cc).permutation_tests=1; %for cell exclusion
keys.ons(cc).PSTH_binwidth=0.01; 
keys.ons(cc).gaussian_kernel=0.01;
keys.ons(cc).kernel_type='gaussian';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Cue', 0, 0.3};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255]; %calculate label for colors?
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Mem';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
ce=ce+1;
keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
keys.ons(cc).comparisons_per_effector(ce).order_onset={'Target', -0.2, 0.7};
keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Mem';
keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Target';

% 
% cc=cc+1;% 'Vsac epoch tuning';
% ce=0;
% keys.ons(cc).unique_title       = 'Vsac epoch tuning';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Vsac'};
% keys.ons(cc).tt.choice =0; %for cell exclusion
% keys.ons(cc).tt.hands=0; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.3};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[-1 1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=[0];
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=[0];
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.EP_EN/255; keys.colors.EP_SU/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade';
% 
% 
% cc=cc+1;% 'Vsac space tuning';
% ce=0;
% keys.ons(cc).unique_title       = 'Vsac instructed space tuning';
% keys.ons(cc).group_parameter         = 'ungrouped';
% keys.ons(cc).conditions_to_plot      = {'Vsac'};
% keys.ons(cc).tt.choice =0; %for cell exclusion
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Visual onset', 0, 0.3};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Cue';
% ce=ce+1;
% keys.ons(cc).comparisons_per_effector(ce).hemifield{1}=[-1];
% keys.ons(cc).comparisons_per_effector(ce).hemifield{2}=[1];
% keys.ons(cc).comparisons_per_effector(ce).choice{1}=0;
% keys.ons(cc).comparisons_per_effector(ce).choice{2}=0;
% keys.ons(cc).comparisons_per_effector(ce).order_onset={'Saccade', -0.2, 0.7};
% keys.ons(cc).comparisons_per_effector(ce).colors=[keys.colors.in_AH_IS/255; keys.colors.in_AH_CS/255];
% keys.ons(cc).comparisons_per_effector(ce).baseline_epoch='Fhol';
% keys.ons(cc).comparisons_per_effector(ce).title='Aligned to Saccade'; 


%% population PSTH settings
cc=0;

%% Visuo(pre-)motor categories
cc=cc+1;% visual response only
keys.pop(cc).group_parameter         = 'visual_preS_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

cc=cc+1;% motor output only
keys.pop(cc).group_parameter         = 'motor_preS_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Pre';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

cc=cc+1;% visuomotor - pref in Pre
keys.pop(cc).group_parameter         = 'visuomotor_preS_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Pre';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

%% Categories Visuo(pre-)motor  : preferred position (enhanced/suppressed separately)
cc=cc+1;% Visual units - Cue enhancement/suppression
keys.pop(cc).tt.selection            = {'visual_preS_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Visuomotor units - Cue enhancement/suppression
keys.pop(cc).tt.selection            = {'visuomotor_preS_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Visuomotor units - Presaccadic enhancement/suppression
keys.pop(cc).tt.selection            = {'visuomotor_preS_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_PreS_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Pre';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Motor units - Presaccadic enhancement/suppression
keys.pop(cc).tt.selection            = {'motor_preS_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_PreS_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Pre';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

%% Visuo(post-)motor categories
cc=cc+1;% visual response only
keys.pop(cc).group_parameter         = 'visual_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

cc=cc+1;% motor output only
keys.pop(cc).group_parameter         = 'motor_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Post';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

cc=cc+1;% visuomotor - pref in cue
keys.pop(cc).group_parameter         = 'visuomotor_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

cc=cc+1;% visuomotor - pref in TIHol
keys.pop(cc).group_parameter         = 'visuomotor_Msac_opt';
keys.pop(cc).group_excluded          = {'0'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Post';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 2];

%% Categories Visuo(post-)motor : preferred position (enhanced/suppressed separately)
cc=cc+1;% Visual units - Cue enhancement/suppression
keys.pop(cc).tt.selection            = {'visual_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Visuomotor units - Cue enhancement/suppression
keys.pop(cc).tt.selection            = {'visuomotor_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Visuomotor units - Postsaccadic enhancement/suppression
keys.pop(cc).tt.selection            = {'visuomotor_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_TIhol_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Post';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

cc=cc+1;% Motor units - Postsaccadic enhancement/suppression
keys.pop(cc).tt.selection            = {'motor_Msac_opt','1'};
keys.pop(cc).group_parameter         = 'in_TIhol_epoch_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Post';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).unpref_def              = 'minimum';
keys.pop(cc).y_lim                   = [0 4];

%% Subcategories Visuo(post-)motor : combined en/su and Ipsi/Contra
cc=cc+1;% Visual units - Cue en/su & IP/CP
keys.pop(cc).tt.selection               = {'visual_Msac_opt','1'};
keys.pop(cc).group_parameter            = 'SubsetV';
keys.pop(cc).conditions_to_plot         = {'Msac'};
keys.pop(cc).cal.choice                 = 0;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).epoch_PF                   = 'Cue';
keys.pop(cc).epoch_DN                   = 'Fhol'; 
keys.pop(cc).unpref_def                 = 'minimum';
keys.pop(cc).link_y_lim                 = 0;
keys.pop(cc).tt.combine_tuning_properties  = {'SubsetV','in_Cue_epoch_Msac_opt','in_Cue_hemifield_Msac_opt'};

cc=cc+1;% Visuomotor units - Cue en/su & IP/CP
keys.pop(cc).tt.selection               = {'visuomotor_Msac_opt','1'};
keys.pop(cc).group_parameter            = 'SubsetV';
keys.pop(cc).group_excluded             = 'suIS';
keys.pop(cc).conditions_to_plot         = {'Msac'};
keys.pop(cc).cal.choice                 = 0;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).epoch_PF                   = 'Cue';
keys.pop(cc).epoch_DN                   = 'Fhol'; 
keys.pop(cc).unpref_def                 = 'minimum';
keys.pop(cc).link_y_lim                 = 0;
keys.pop(cc).tt.combine_tuning_properties  = {'SubsetV','in_Cue_epoch_Msac_opt','in_Cue_hemifield_Msac_opt'};

cc=cc+1;% Visuomotor units - TIhol en/su & IP/CP
keys.pop(cc).tt.selection               = {'visuomotor_Msac_opt','1'};
keys.pop(cc).group_parameter            = 'SubsetM';
keys.pop(cc).group_excluded             = 'suCS';
keys.pop(cc).conditions_to_plot         = {'Msac'};
keys.pop(cc).cal.choice                 = 0;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).epoch_PF                   = 'Post';
keys.pop(cc).epoch_DN                   = 'Fhol'; 
keys.pop(cc).unpref_def                 = 'minimum';
keys.pop(cc).link_y_lim                 = 0;
keys.pop(cc).tt.combine_tuning_properties  = {'SubsetM','in_TIhol_epoch_Msac_opt','in_TIhol_hemifield_Msac_opt'};

cc=cc+1;% Visuomotor units - TIhol en/su & IP/CP
keys.pop(cc).tt.selection               = {'motor_Msac_opt','1'};
keys.pop(cc).group_parameter            = 'SubsetM';
keys.pop(cc).group_excluded             = 'suIS';
keys.pop(cc).conditions_to_plot         = {'Msac'};
keys.pop(cc).cal.choice                 = 0;
keys.pop(cc).tt.choice                  = 0;
keys.pop(cc).normalization              = 'by_effector';
keys.pop(cc).epoch_PF                   = 'Post';
keys.pop(cc).epoch_DN                   = 'Fhol'; 
keys.pop(cc).unpref_def                 = 'minimum';
keys.pop(cc).link_y_lim                 = 0;
keys.pop(cc).tt.combine_tuning_properties  = {'SubsetM','in_TIhol_epoch_Msac_opt','in_TIhol_hemifield_Msac_opt'};

%% Delay period activity : perisaccadic enhancement/suppression, and memory hemifield/enhancement/suppression tuning
cc=cc+1;% instructed, subtracting INI,dividing by Fhol ??? --> comparison to microstim
keys.pop(cc).group_parameter         = 'ungrouped';
keys.pop(cc).group_excluded          ={};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'none';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_BL                = 'INI';  %%Fhol???

cc=cc+1;% 1 Peri-saccadic enhancement (relative to INI, subtraction)
keys.pop(cc).group_parameter         = 'in_Peri2_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector'; 
keys.pop(cc).epoch_PF                = 'Peri';
keys.pop(cc).epoch_BL                = 'INI'; %%Fhol???
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).separate_multicomparison= 1;
keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','PreS','Peri2','TIhol'}';

cc=cc+1;% 2 Peri-saccadic enhancement (relative to Fhol)
keys.pop(cc).group_parameter         = 'in_Peri2_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Peri';
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).separate_multicomparison= 1;
keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','PreS','Peri2','TIhol'}';

cc=cc+1;% 3 Peri-saccadic enhancement (relative to MeML)
keys.pop(cc).group_parameter         = 'in_PeriS_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Mem';
keys.pop(cc).epoch_PF                = 'Peri';
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;


cc=cc+1;% 3 Pre-saccadic enhancement (relative to MeML)
keys.pop(cc).group_parameter         = 'in_PreS_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Mem';
keys.pop(cc).epoch_PF                = 'PreS';
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;

cc=cc+1;% 4 memory enhancement
keys.pop(cc).group_parameter         = 'in_MemL_epoch_Msac_opt';
keys.pop(cc).group_excluded          = {'','-'};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Mem';
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;

cc=cc+1;% 5 memory space preference
keys.pop(cc).group_parameter         = 'in_MemL_hemifield_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Mem';
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;

%% choice
cc=cc+1;% memory space preference (including choices)
keys.pop(cc).group_parameter         = 'in_MemL_hemifield_Msac_opt';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).epoch_PF                = 'Mem';
keys.pop(cc).cal.choice              = [0 1];
keys.pop(cc).tt.choice               = [0 1];


%% Supplemental !
cc=cc+1;% instructed, divisive normalization in Fhol
keys.pop(cc).group_parameter         = 'ungrouped';
keys.pop(cc).group_excluded          = {};
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_DN                = 'Fhol'; 
keys.pop(cc).epoch_PF                = 'Cue';

cc=cc+1;% cue preference for enhanced only
keys.pop(cc).tt.selection            = {'in_Cue_epoch_Msac_opt','en'};
keys.pop(cc).group_parameter         = 'ungrouped';
keys.pop(cc).normalization           = 'by_effector';
keys.pop(cc).epoch_PF                = 'Cue';
keys.pop(cc).epoch_DN                = 'Fhol';
keys.pop(cc).conditions_to_plot      = {'Msac'};
keys.pop(cc).cal.choice              = 0;
keys.pop(cc).tt.choice               = 0;

%% Not used
% % %% gaze cells (?)
% % cc=cc+1;% gaze cells???
% % keys.pop(cc).group_parameter         = 'in_Thol_hemifield_Msac_opt';
% % keys.pop(cc).conditions_to_plot      = {'Msac'};
% % keys.pop(cc).cal.choice              = 0;
% % keys.pop(cc).tt.choice               = 0;
% % keys.pop(cc).normalization           = 'by_effector';
% % keys.pop(cc).epoch_DN                = 'Fhol';
% % keys.pop(cc).epoch_PF                = 'Thol';
%
% %% Visuo(pre2-)motor categories
% cc=cc+1;% visual response only
% keys.pop(cc).group_parameter         = 'visual_pre2_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 2];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% cc=cc+1;% motor output only
% keys.pop(cc).group_parameter         = 'motor_pre2_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 2];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% cc=cc+1;% visuomotor - pref in TIHol
% keys.pop(cc).group_parameter         = 'visuomotor_pre2_Msac_opt';
% keys.pop(cc).group_excluded          = {'0'};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 2];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% %% Categories Visuo(pre2-)motor  : preferred position (enhanced/suppressed separately)
% cc=cc+1;% Visual units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visual_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% cc=cc+1;% Visuomotor units - Cue enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_Cue_epoch_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Cue';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% cc=cc+1;% Visuomotor units - Presaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'visuomotor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_Pre2_epoch_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% 
% cc=cc+1;% Motor units - Presaccadic enhancement/suppression
% keys.pop(cc).tt.selection            = {'motor_pre2_Msac_opt','1'};
% keys.pop(cc).group_parameter         = 'in_Pre2_epoch_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_PF                = 'Pre';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).unpref_def              = 'minimum';
% keys.pop(cc).y_lim                   = [0 4];
% keys.pop(cc).separate_multicomparison= 1;
% keys.pop(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';


%  
% cc=cc+1;% enhancement/suppression, POS-NEG
% keys.pop(cc).epoch_PF                = 'Thol';
% keys.pop(cc).epoch_RF                = 'Thol';
% keys.pop(cc).epoch_BL                = 'Fhol';
% keys.pop(cc).epoch_GB                = 'none';
% keys.pop(cc).epoch_DN                = 'Thol'; % for percent change, use this isntead!
% keys.pop(cc).normalization           = 'percent_change';
% keys.pop(cc).group_parameter         = 'in_AH_Thol_position_Msac_opt';
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).position_and_plotting_arrangements      = {'options'};
% keys.pop(cc).FR_subtract_baseline    = 0;
% keys.pop(cc).ylim                    = [];
% keys.pop(cc).plot_per_position       = 1;
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).plot_RF                 = 0;
% keys.pop(cc).plot_posneg             = 1;
% 
% cc=cc+1;% enhancement/suppression, POS-NEG
% keys.pop(cc).epoch_PF                = 'Thol';
% keys.pop(cc).epoch_RF                = 'Thol';
% keys.pop(cc).epoch_BL                = 'Fhol';
% keys.pop(cc).epoch_GB                = 'none';
% keys.pop(cc).epoch_DN                = 'Thol'; % for percent change, use this isntead!
% keys.pop(cc).normalization           = 'percent_change';
% keys.pop(cc).group_parameter         = 'in_AH_Thol_position_Msac_opt';
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).position_and_plotting_arrangements      = {'options'};
% keys.pop(cc).FR_subtract_baseline    = 0;
% keys.pop(cc).ylim                    = [];
% keys.pop(cc).plot_per_position       = 1;
% keys.pop(cc).cal.choice              = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).plot_RF                 = 0;
% keys.pop(cc).plot_posneg             = 1;
% 
% 
% 
% %% Vsac vs Msac, choice & instructed
% 
% cc=cc+1;% instructed, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).cal.choice               = 0;
% keys.pop(cc).tt.choice               = 0;
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol'; 
% keys.pop(cc).epoch_PF                = 'Cue';
% 
% cc=cc+1;% instructed & choice, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Msac'};
% keys.pop(cc).cal.choice              = [0, 1];
% keys.pop(cc).tt.choice               = [0, 1];
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Cue';
% 
% cc=cc+1;% instructed & choice, divisive normalization in Fhol
% keys.pop(cc).group_parameter         = 'ungrouped';
% keys.pop(cc).group_excluded          = {};
% keys.pop(cc).conditions_to_plot      = {'Vsac'};
% keys.pop(cc).cal.choice              = [0, 1];
% keys.pop(cc).tt.choice               = [0, 1];
% keys.pop(cc).normalization           = 'by_effector';
% keys.pop(cc).epoch_DN                = 'Fhol';
% keys.pop(cc).epoch_PF                = 'Cue';


%% Scatter keys
cs=0;  


%% Cue significant in any
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='tun';
keys.sct(cs).Y_sig='tun';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];
keys.sct(cs).tt.combine_tuning_properties       = {'tun','in_Cue_hemifield_Msac_opt','ch_Cue_hemifield_Msac_opt'};
keys.sct(cs).tt.replace_tuning                  = {'tun','--','-'};
keys.sct(cs).unique_title='any tuning';

%% Visually guided CUE - INDEX
% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Vsac_opt'};
keys.sct(cs).X='in_CueG_hemifield_IX_Vsac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_IX_Vsac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

%% Visually guided CUE
% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Vsac_opt'};
keys.sct(cs).X='in_CueG_hemifield_Vsac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_Vsac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% %% comparison choice and instructed tuning - Index
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % MemL
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_MemL_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_MemL_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PreS_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_PreS_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % PeriS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_PeriS_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % TIhol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_TIhol_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_TIhol_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% %% comparison choice and instructed tuning - Raw FR differences
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_Cue_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % MemL
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_MemL_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_MemL_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PreS_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_PreS_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % PeriS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_PeriS_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % TIhol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_TIhol_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_TIhol_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% 
% %% SU comparison choice and instructed tuning - Indexes
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % MemL
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_MemL_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_MemL_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PreS_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_PreS_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % PeriS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_PeriS_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % TIhol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_TIhol_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_TIhol_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% %% SU comparison choice and instructed tuning - Raw FR differences
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_Cue_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % MemL
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_MemL_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_MemL_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PreS_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_PreS_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % PeriS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_PeriS_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
% 
% % TIhol
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_TIhol_hemifield_DF_Msac_opt';
% keys.sct(cs).Y='ch_TIhol_hemifield_DF_Msac_opt';
% keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.SNR_rating=[1,2];
% keys.sct(cs).tt.stability_rating=1;
% keys.sct(cs).tt.Single_rating=1;
% keys.sct(cs).unique_title='SU';
 
% %% VMI
% 
% % VMI ipsi versus contra POST
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='VMI_postEN_IS_Msac_opt';
% keys.sct(cs).Y='VMI_postEN_CS_Msac_opt';
% keys.sct(cs).X_sig='VMI_postEN_Msac_opt';
% keys.sct(cs).Y_sig='VMI_postEN_Msac_opt';
% keys.sct(cs).hist_column='VMI_postEN_Msac_opt';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% keys.sct(cs).color_option='FR_as_color';
% keys.sct(cs).tt.choice =0;
% 
% % IPSI post vs cue enhancement, VMI as colors
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_IS_Cue_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_AH_IS_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_Cue_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_TIhol_epoch_Msac_opt';
% keys.sct(cs).VMI='VMI_postEN_IS_Msac_opt';
% keys.sct(cs).hist_column='VMI_postEN_IS_Msac_opt';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% keys.sct(cs).color_option='VMI_as_color';
% keys.sct(cs).logarithmic_scale=1;
% keys.sct(cs).tt.choice =0;
% 
% % CONTRA post vs cue enhancement, VMI as colors
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_CS_Cue_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_AH_CS_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_Cue_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_TIhol_epoch_Msac_opt';
% keys.sct(cs).VMI='VMI_postEN_CS_Msac_opt';
% keys.sct(cs).hist_column='VMI_postEN_CS_Msac_opt';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% keys.sct(cs).color_option='VMI_as_color';
% keys.sct(cs).logarithmic_scale=1;
% keys.sct(cs).tt.choice =0;

%  %% visually guided versus memory guided Cue/presaccadic
% % supra or sublinear CONTRA
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='PreCueSum_CS_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% keys.sct(cs).separate_multicomparison= 1;
% keys.sct(cs).multicomp_epochs(2).epoch={''}';
% 
% % supra or sublinear IPSI
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='PreCueSum_IS_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% keys.sct(cs).separate_multicomparison= 1;
% keys.sct(cs).multicomp_epochs(2).epoch={''}';
% 
% % visually guided versus memory guided FR CONTRA CUE
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_CS_CueG_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% 
% % visually guided versus memory guided FR IPSI CUE
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_IS_CueG_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% 
% % visually guided versus memory guided FR CONTRA PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_CS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_CS_PreG_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_PreG_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% % visually guided versus memory guided FR IPSI PreS
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).tt.choice = 0;
% keys.sct(cs).X='in_AH_IS_CueG_epoch_DF_Vsac_opt';
% keys.sct(cs).Y='in_AH_IS_PreG_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_PreG_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};

% %% Supplementary cue stuff 
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).X_sig='enha';
% keys.sct(cs).Y_sig='enha';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.combine_tuning_properties       = {'enha','in_AH_Cue_epoch_Msac_opt','ch_AH_Cue_epoch_Msac_opt'};
% keys.sct(cs).tt.replace_tuning                  = {'enha','susu','-';'enha','-su','-';'enha','su-','-'};
% keys.sct(cs).tt.choice =[0,1];


% %% double check validity of POstsaccadic epoch
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_TIhol_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_all_separated';
% keys.sct(cs).tt.choice =0;
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PreS_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_TIhol_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PreS_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_TIhol_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_all_separated';
% keys.sct(cs).tt.choice =0;
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_PeriS_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_PreS_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_PeriS_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_PreS_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_all_separated';
% keys.sct(cs).tt.choice =0;

%% UNTIL HERE

% %% Supplementary cue stuff -- TEMPORARY
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.replace_tuning                  = {'in_AH_Cue_prefH_Msac_opt','ch','-';'ch_AH_Cue_prefH_Msac_opt','in','-'};
% keys.sct(cs).tt.choice =[0,1];

% %% RF centers and sizes - NOT used AFAIK
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='in_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.replace_tuning                  = {'in_AH_Cue_prefH_Msac_opt','ch','-';'ch_AH_Cue_prefH_Msac_opt','in','-'};

%keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','in'};

% keys.sct(cs).tt.replace_tuning                  = {'enha','susu','-';'enha','-su','-';'enha','su-','-'};

% %% RF centers and sizes - NOT used AFAIK
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='in_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','in'};
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='in_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','ch'};
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_center_x_Msac_opt';
% keys.sct(cs).Y='in_Cue_size_x_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.selection={'in_AH_Cue_prefH_Msac_opt','-'};



% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_color';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.combine_tuning_properties       = {'en','in_AH_Cue_epoch_Msac_opt','ch_AH_Cue_epoch_Msac_opt'};
% keys.sct(cs).tt.unselect={'en','susu';'en','su-';'en','-su';'en','--'};
% 
% %% unselect two most significant units
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).Y='ch_AH_Cue_prefH_FR_Msac_opt';
% keys.sct(cs).X_sig='in_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).Y_sig='ch_AH_Cue_prefH_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_color';
% keys.sct(cs).tt.choice =[0,1];
% keys.sct(cs).tt.unselect={'unit_ID','Lin_20150916_05';'unit_ID','Lin_20151028_18'};
% 
% 
% % CueG
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Vsac_opt'};
% keys.sct(cs).X='in_CueG_hemifield_DF_Vsac_opt';
% keys.sct(cs).Y='ch_CueG_hemifield_DF_Vsac_opt';
% keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
% keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];




% 
% 
% % to test
% % 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
% keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
% keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_CS_Cue_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_AH_CS_MemL_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_MemL_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_MemL_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% 
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_IS_Cue_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_AH_IS_MemL_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_MemL_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_MemL_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% 
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Msac_opt'};
% keys.sct(cs).X='in_AH_Cue_epoch_DF_Msac_opt';
% keys.sct(cs).Y='in_AH_MemL_epoch_DF_Msac_opt';
% keys.sct(cs).X_sig='in_AH_MemL_epoch_Msac_opt';
% keys.sct(cs).Y_sig='in_AH_MemL_epoch_Msac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% %% visually guided versus memory
% % 
% 
% %% uNCOMMENT

% % visually guided versus memory guided FR CONTRA CUE
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).X='in_AH_CS_CueG_epoch_FR_Vsac_opt';
% keys.sct(cs).Y='PreCueMean_CS_Msac_opt';
% keys.sct(cs).X_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_CS_CueG_epoch_Vsac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};
% 
% % visually guided versus memory guided FR IPSI CUE
% cs=cs+1;  
% keys.sct(cs).tt.tasktypes={'Msac_opt','Vsac_opt'};
% keys.sct(cs).X='in_AH_IS_CueG_epoch_FR_Vsac_opt';
% keys.sct(cs).Y='PreCueMean_IS_Msac_opt';
% keys.sct(cs).X_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).Y_sig='in_AH_IS_CueG_epoch_Vsac_opt';
% keys.sct(cs).color_option='ENSU_as_color';
% keys.sct(cs).categories={'visual_Msac_opt';'visuomotor_Msac_opt';'motor_Msac_opt'};


% %% now same for Visually guided - not used
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Vsac_opt'};
% keys.sct(cs).X='in_CueG_hemifield_DF_Vsac_opt';
% keys.sct(cs).Y='ch_CueG_hemifield_DF_Vsac_opt';
% keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
% keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% % Cue
% cs=cs+1;
% keys.sct(cs).tt.tasktypes={'Vsac_opt'};
% keys.sct(cs).X='in_CueG_hemifield_IX_Vsac_opt';
% keys.sct(cs).Y='ch_CueG_hemifield_IX_Vsac_opt';
% keys.sct(cs).X_sig='in_CueG_hemifield_Vsac_opt';
% keys.sct(cs).Y_sig='ch_CueG_hemifield_Vsac_opt';
% keys.sct(cs).color_option='monkeys_by_marker';
% keys.sct(cs).tt.choice =[0,1];
% 
% 
% 


%% classification
cc=0;

cc=cc+1;
keys.clf(cc).tt.IC_for_criterion                = 'in';
keys.clf(cc).conditions_to_plot                 = {'Msac'};
keys.clf(cc).position_and_plotting_arrangements = {'options'};
keys.clf(cc).tt.hands                           = 0;
keys.clf(cc).tt.choice                          = 0;
keys.clf(cc).tt.perturbations                   = 0;

%% behavior
cc=0;

cc=cc+1;
keys.beh(cc).tt.IC_for_criterion='in';
keys.beh(cc).conditions_to_plot={'Msac'};
keys.beh(cc).position_and_plotting_arrangements={'options'};
keys.beh(cc).tt.hands=0;
keys.beh(cc).tt.choice =0;
keys.beh(cc).tt.perturbations=0;

cc=cc+1;
keys.beh(cc).tt.IC_for_criterion='in';
keys.beh(cc).conditions_to_plot={'Vsac'};
keys.beh(cc).position_and_plotting_arrangements={'options'};
keys.beh(cc).tt.hands=0;
keys.beh(cc).tt.choice =0;
keys.beh(cc).tt.perturbations=0;

%% copy single units
cc=0;
% 
% 
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreSU PeriSU';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'preperi','susu'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'preperi','in_PreS_epoch_Msac_opt','in_PeriS_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreSU PeriEN';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'preperi','suen'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'preperi','in_PreS_epoch_Msac_opt','in_PeriS_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreEN PeriEN';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'preperi','enen'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'preperi','in_PreS_epoch_Msac_opt','in_PeriS_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreEN PeriSU';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'preperi','ensu'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'preperi','in_PreS_epoch_Msac_opt','in_PeriS_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'Presu Postsu';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'prepost','susu'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'prepost','in_PreS_epoch_Msac_opt','in_TIhol_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'Perisu Postsu';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'peripost','susu'};
% keys.cpy(cc).tt.combine_tuning_properties   = {'peripost','in_PeriS_epoch_Msac_opt','in_TIhol_epoch_Msac_opt'};
% keys.cpy(cc).tt.choice                      = 0;
% 
% 
% 
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreSaccadic choice tuning contra';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'ch_PreS_hemifield_Msac_opt','CS'};
% keys.cpy(cc).tt.choice                      = [0,1];
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PreSaccadic choice tuning ipsi';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'ch_PreS_hemifield_Msac_opt','IS'};
% keys.cpy(cc).tt.choice                      = [0,1];
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PeriSaccadic choice tuning contra';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'ch_PeriS_hemifield_Msac_opt','CS'};
% keys.cpy(cc).tt.choice                      = [0,1];
% cc=cc+1;
% keys.cpy(cc).foldername                     = 'PeriSaccadic choice tuning ipsi';
% keys.cpy(cc).conditions_to_plot             = {'Msac'};
% keys.cpy(cc).tt.selection                   = {'ch_PeriS_hemifield_Msac_opt','IS'};
% keys.cpy(cc).tt.choice                      = [0,1];
cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_hemifield_pref_IN_butnot_CH';
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.selection                   = {'in_Cue_epoch_Msac_opt','en'};
keys.cpy(cc).tt.selection                   = {};
keys.cpy(cc).tt.combine_tuning_properties   = {'hemi','in_Cue_hemifield_Msac_opt','ch_Cue_hemifield_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'hemi','--';'hemi','-IS';'hemi','-CS';'hemi','ISIS';'hemi','ISCS';'hemi','CSIS';'hemi','CSCS'};
keys.cpy(cc).tt.choice                      = [0,1];
cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_hemifield_pref_IN_and_CH';
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.selection                   = {'in_Cue_epoch_Msac_opt','en';'ch_Cue_epoch_Msac_opt','en'};
keys.cpy(cc).tt.selection                   = {};
keys.cpy(cc).tt.combine_tuning_properties   = {'hemi','in_Cue_hemifield_Msac_opt','ch_Cue_hemifield_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'hemi','--';'hemi','-IS';'hemi','-CS';'hemi','IS-';'hemi','CS-'};
keys.cpy(cc).tt.choice                      = [0,1];
cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_hemifield_pref_CH_butnot_IN';
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.selection                   = {'ch_Cue_epoch_Msac_opt','en'};
keys.cpy(cc).tt.selection                   = {};
keys.cpy(cc).tt.combine_tuning_properties   = {'hemi','in_Cue_hemifield_Msac_opt','ch_Cue_hemifield_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'hemi','--';'hemi','IS-';'hemi','CS-';'hemi','ISIS';'hemi','ISCS';'hemi','CSIS';'hemi','CSCS'};
keys.cpy(cc).tt.choice                      = [0,1];
cc=cc+1;
keys.cpy(cc).foldername                     = 'Cue_enhanced_wo_HP';
keys.cpy(cc).conditions_to_plot             = {'Msac'};
keys.cpy(cc).tt.selection                   = {'in_Cue_epoch_Msac_opt','en';'ch_Cue_epoch_Msac_opt','en'};
keys.cpy(cc).tt.selection                   = {};
keys.cpy(cc).tt.combine_tuning_properties   = {'hemi','in_Cue_hemifield_Msac_opt','ch_Cue_hemifield_Msac_opt'};
keys.cpy(cc).tt.unselect                    = {'hemi','-IS';'hemi','-CS';'hemi','IS-';'hemi','CS-';'hemi','ISIS';'hemi','ISCS';'hemi','CSIS';'hemi','CSCS'};
keys.cpy(cc).tt.choice                      = [0,1];

%% Single cell plotting keys!
cc=0;

cc=cc+1;
keys.uni(cc).line_labelling                ='contra/ipsi';
keys.uni(cc).anova_main    ={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_effector={'E','in_epoch_main','','S','in_hemifield_main','','C','ch_hemifield_main','','H','in_hands_main','','ExS','in_ExS','','ExH','in_ExH','','SxH','in_SxH',''};
keys.uni(cc).anova_epoch1  ={'E','in_AH','epoch','S','in','hemifield','C','ch','hemifield','H','in','hands','SxH','in','SxH'};
keys.uni(cc).anova_epoch2  ={'II','in_IH_IS','PT','CI','in_IH_CS','PT','IC','in_CH_IS','PT','CC','in_CH_CS','PT'};


%% Localization (chamberlain keys)
cc=0;

% Linus right
cc=cc+1;
keys.loc(cc).tt.choice = 0;
keys.loc(cc).tt.tasktypes = {'Msac_opt'};
keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Linus\LI_20130614_STEREO_neurological-TO-LI_20150619_chamR_normal_128.vmr';
keys.loc(cc).z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'LI_';
keys.loc(cc).monkey='Lin';
keys.loc(cc).target_area='dPulv_r';
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'visuomotor';
keys.loc(cc).saggital_or_coronal = 'coronal';

% Linus left
cc=cc+1;
keys.loc(cc).tt.choice = 0;
keys.loc(cc).tt.tasktypes = {'Msac_opt'};
keys.loc(cc).vmr_path = 'Y:\MRI\Linus\20130614anat\LI_20130614_ACPC_neurological-TO-LI_20150619_chamL_normal_128.vmr';
keys.loc(cc).z_offset_mm = 26; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'LI_';
keys.loc(cc).monkey='Lin';
keys.loc(cc).target_area='dPulv_l';
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'visuomotor';
keys.loc(cc).saggital_or_coronal = 'coronal';

% Curius right
cc=cc+1;
keys.loc(cc).tt.choice = 0;
keys.loc(cc).tt.tasktypes = {'Msac_opt'};
keys.loc(cc).vmr_path = 'Y:\Projects\Pulv_microstim_behavior\behavior\electrode_localization\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
keys.loc(cc).z_offset_mm = 25; % mm, distance from chamber top to "brain entry", should be different from 0 if z is from top of the chamber
keys.loc(cc).monkey_prefix = 'CU_';
keys.loc(cc).monkey='Cur';
keys.loc(cc).target_area='dPulv_r';
keys.loc(cc).grid_id = 'GRID.22.2';
keys.loc(cc).significance_to_plot = 'visuomotor';
keys.loc(cc).saggital_or_coronal = 'coronal';

%% Response fields
cc=0;

cc=cc+1;% cue response fields 
keys.rfs(cc).normalization                  = 'by_effector';
keys.rfs(cc).group_parameter                = 'in_Cue_epoch_Msac_opt';
keys.rfs(cc).group_excluded                 = {'-'};
keys.rfs(cc).epoch_PF                       = 'Cue';
keys.rfs(cc).epoch_RF                       = 'Cue';
keys.rfs(cc).epoch_BL                       = 'Fhol';
keys.rfs(cc).epoch_DN                       = 'none';
%keys.rfs(cc).baseline_per_trial             = 1;
keys.rfs(cc).conditions_to_plot             = {'Msac'};
keys.rfs(cc).tt.combine_tuning_properties   = {'tuning','in_Cue_hemifield_Msac_opt','in_AH_Cue_position_Msac_opt'};
keys.rfs(cc).cal.choice                     = 0;
keys.rfs(cc).tt.choice                      = 0;
keys.rfs(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
keys.rfs(cc).RF_frame_entries               = {'CSYE','CSNO','ISYE','ISNO','-YE','-NO'};
keys.rfs(cc).RF_frame_parameter             = 'tuning';
keys.rfs(cc).RF_columns                     = 16;
keys.rfs(cc).RF_rows                        = 10;
keys.rfs(cc).fittypes                       = {'gaussian1','gaussian15'}; 

cc=cc+1;% PostS response fields 
keys.rfs(cc).normalization                  = 'by_effector'; %by_effector??
keys.rfs(cc).group_parameter                = 'in_TIhol_epoch_Msac_opt';
keys.rfs(cc).group_excluded                 = {'-'};
keys.rfs(cc).epoch_PF                       = 'Post';
keys.rfs(cc).epoch_RF                       = 'Post';
keys.rfs(cc).epoch_BL                       = 'Mem';
keys.rfs(cc).epoch_DN                       = 'none';
%keys.rfs(cc).baseline_per_trial             = 1;
keys.rfs(cc).conditions_to_plot             = {'Msac'};
keys.rfs(cc).tt.combine_tuning_properties   = {'tuning','in_TIhol_hemifield_Msac_opt','in_AH_TIhol_position_Msac_opt'};
keys.rfs(cc).cal.choice                     = 0;
keys.rfs(cc).tt.choice                      = 0;
keys.rfs(cc).RF_frame_colors                = {keys.colors.in_CS,keys.colors.ch_CS,keys.colors.in_IS,keys.colors.ch_IS,[0 255 0],[127 127 127]};
keys.rfs(cc).RF_frame_entries               = {'CSYE','CSNO','ISYE','ISNO','-YE','-NO'};
keys.rfs(cc).RF_frame_parameter             = 'tuning';
keys.rfs(cc).RF_columns                     = 16;
keys.rfs(cc).RF_rows                        = 10;
keys.rfs(cc).fittypes                       = {'gaussian1','gaussian15'}; 

%% tuning table excel keys
cc=0;  

cc=cc+1;
keys.tun(cc).redo_statistics=1;
keys.tun(cc).conditions_to_plot = {'Msac';'Vsac'};
keys.tun(cc).unique_title='Multicomp_standard';
keys.tun(cc).tt.tasktypes = {'Msac','Vsac'}; %% why is this needed ??

% 
% cc=cc+1;
% keys.tun(cc).redo_statistics=0;
% keys.tun(cc).conditions_to_plot = {'Msac';'Vsac'};
% keys.tun(cc).unique_title='Multicomp_standard';
% keys.tun(cc).tt.tasktypes = {};  %% effectively removes trial criterion
% 
% cc=cc+1;
% keys.tun(cc).redo_statistics=0;
% keys.tun(cc).conditions_to_plot = {'Msac';'Vsac'};
% keys.tun(cc).unique_title='Multicomp_Pre2';
% keys.tun(cc).separate_multicomparison= 1;
% keys.tun(cc).multicomp_epochs(3).epoch={'Cue','MemL','Pre2','Peri','TIhol'}';
% keys.tun(cc).tt.tasktypes = {}; %% effectively removes trial criterion

% 
% cc=cc+1;
% keys.tun(cc).redo_statistics=0;
% keys.tun(cc).conditions_to_plot = {'Msac';'Vsac'};
% keys.tun(cc).unique_title='Multicomp_Peri2';
% keys.tun(cc).separate_multicomparison= 1;
% keys.tun(cc).multicomp_epochs(3).epoch={'Cue','MemL','PreS','Peri2','TIhol'}';
% keys.tun(cc).tt.tasktypes = {}; %% effectively removes trial criterion
