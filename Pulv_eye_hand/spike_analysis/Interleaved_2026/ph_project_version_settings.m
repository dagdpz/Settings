keys.cal.datasets                   =[3];
keys.batching.targets               ={'dPulv'};
keys.batching.monkeys               ={'Linus','Flaffus'};
keys.Flaffus.date                   ='[20160203 20161206]';
keys.Linus.date                     ='[20160201 20160606]';


% different versions of excel tables (?)
cc=0;  
cc=cc+1;
keys.tun(cc).redo_statistics=1;
keys.tun(cc).conditions_to_plot = {'Ddre';'Ddsa';'Dcfr'}; 
keys.tun(cc).unique_title='Multicomp_standard';
keys.tun(cc).tt.tasktypes = {'Fsac','Vsac'}; %% why is this needed ??