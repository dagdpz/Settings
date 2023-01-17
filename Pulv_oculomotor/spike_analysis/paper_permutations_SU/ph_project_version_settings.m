keys.filelist_formatted={};
keys.plot.single_cells                  =0;         % perform single cell plotting
keys.cal.stablity                       =[1];                     % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the table
keys.cal.single_rating                  =[1];                   % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.cal.SNR_rating                     =[1,2];                   % not assigning sorting table information if criterion is not met. Therefore only excludes when taking only units in the tabl
keys.AN.test_types='permutations'; %% as opposed to 'parametric'/'nonparametric'
keys.AN.check_normality=0;

%% Scatter keys
cs=0;  

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% CueG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_CueG_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemE
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemE_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_MemE_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_MemE_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemE_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemL
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemL_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_MemL_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreS_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PreS_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreG_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PreG_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PreG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PeriS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PeriS_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_PeriS_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% TIhol
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_TIhol_hemifield_IX_Msac_opt';
keys.sct(cs).Y='ch_TIhol_hemifield_IX_Msac_opt';
keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

%% FR differences

% Cue
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_Cue_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_Cue_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_Cue_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_Cue_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% CueG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_CueG_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_CueG_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_CueG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_CueG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemE
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemE_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_MemE_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_MemE_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemE_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% MemL
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_MemL_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_MemL_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_MemL_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_MemL_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreG
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreG_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PreG_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PreG_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreG_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PreS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PreS_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PreS_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PreS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PreS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% PeriS
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_PeriS_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_PeriS_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_PeriS_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_PeriS_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];

% TIhol
cs=cs+1;
keys.sct(cs).tt.tasktypes={'Msac_opt'};
keys.sct(cs).X='in_TIhol_hemifield_DF_Msac_opt';
keys.sct(cs).Y='ch_TIhol_hemifield_DF_Msac_opt';
keys.sct(cs).X_sig='in_TIhol_hemifield_Msac_opt';
keys.sct(cs).Y_sig='ch_TIhol_hemifield_Msac_opt';
keys.sct(cs).color_option='monkeys_by_marker';
keys.sct(cs).tt.choice =[0,1];


