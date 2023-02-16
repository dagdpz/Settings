clear list

dataset = 'ina'; % ina ephys

effector = 'reaches'; % 'saccades'
 p = {'lat', 'dur', 'accuracy_x','accuracy_y','successful'}; %

% effector = 'saccades'; % 'saccades'
% p = {'lat', 'dur', 'accuracy_x','accuracy_y','successful','velocity'};

% p = {'accuracy_xy'}; %
% precision=1;

switch dataset
    case 'ephys'
        switch effector
            case 'reaches'
                e = {'t_4_e_6_L_IN_LH', 't_4_e_6_L_IN_RH', 't_4_e_6_R_IN_LH', 't_4_e_6_R_IN_RH' ...
                    't_4_e_4_L_IN_LH', 't_4_e_4_L_IN_RH', 't_4_e_4_R_IN_LH', 't_4_e_4_R_IN_RH',};
                eff='reaches';
            case 'saccades'
                e = {'t_4_e_6_L_IN_LH', 't_4_e_6_L_IN_RH', 't_4_e_6_R_IN_LH', 't_4_e_6_R_IN_RH' ...
                    't_4_e_3_L_IN_LH', 't_4_e_3_L_IN_RH', 't_4_e_3_R_IN_LH', 't_4_e_3_R_IN_RH',...
                    't_4_e_0_L_IN', 't_4_e_0_R_IN'};
                eff='saccades';
                
        end
        
    case 'ina'
        switch effector
            case 'reaches'
                e = {'t_2_e_6_L_IN_LH', 't_2_e_6_L_IN_RH', 't_2_e_6_R_IN_LH', 't_2_e_6_R_IN_RH' ...
                    't_2_e_4_L_IN_LH', 't_2_e_4_L_IN_RH', 't_2_e_4_R_IN_LH', 't_2_e_4_R_IN_RH',};
                eff='reaches';
            case 'saccades'
                e = {'t_2_e_6_L_IN_LH', 't_2_e_6_L_IN_RH', 't_2_e_6_R_IN_LH', 't_2_e_6_R_IN_RH' ...
                    't_2_e_3_L_IN_LH', 't_2_e_3_L_IN_RH', 't_2_e_3_R_IN_LH', 't_2_e_3_R_IN_RH',...
                    't_2_e_0_L_IN', 't_2_e_0_R_IN'};
                eff='saccades';
        end
end

g = {'Control', 'Experimental'};
counter = 0;

if ~ismember('accuracy_xy',p) || (ismember('accuracy_xy',p) && ~precision)
    for i_p = 1:numel(p)
        for i_e= 1:numel(e)
            c2= 0;
            for i_g = 1:numel(g)
                counter=counter+1;
                list{counter,1} = [g{i_g} ' ' p{i_p} ' ' e{i_e} ' Mean SE Effect P T df:'];
                list{counter,2+c2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).(eff).(p{i_p}).(e{i_e}).mean_of_mean));
                list{counter,3+c2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).(eff).(p{i_p}).(e{i_e}).sem_of_mean));
                c2=c2+2;
            end
            list{counter,6} = str2num(sprintf('%.4f',((batch.out_stru_ext.Experimental.(eff).(p{i_p}).(e{i_e}).mean_of_mean)-(batch.out_stru_ext.Control.(eff).(p{i_p}).(e{i_e}).mean_of_mean))));
            list{counter,7} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_mean{4}));
            list{counter,8} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_mean{5}.tstat));
            list{counter,9} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_mean{5}.df));
            
        end
    end
elseif (strcmp('accuracy_xy',p) && precision)
    for i_p = 1:numel(p)
        for i_e= 1:numel(e)
            c2= 0;
            for i_g = 1:numel(g)
                counter=counter+1;
                list{counter,1} = [g{i_g} ' ' p{i_p} ' ' e{i_e} ' ALL_from_STDs_Mean SE Effect P T df:'];
                list{counter,2+c2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).(eff).(p{i_p}).(e{i_e}).mean_of_std));
                list{counter,3+c2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).(eff).(p{i_p}).(e{i_e}).sem_of_std));
                c2=c2+2;
            end
            list{counter,6} = str2num(sprintf('%.4f',((batch.out_stru_ext.Experimental.(eff).(p{i_p}).(e{i_e}).mean_of_std)-(batch.out_stru_ext.Control.(eff).(p{i_p}).(e{i_e}).mean_of_std))));
            list{counter,7} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_std{4}));
            list{counter,8} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_std{5}.tstat));
            list{counter,9} = str2num(sprintf('%.3f',batch.stat.groups.(eff).(p{i_p}).(e{i_e}).raw_of_std{5}.df));
            
        end
    end
end

% if strcmp('endpoints_per_position_s',p)
% num_p = 4;
%
% counter = 0;
% for n=1:num_p
%     for i_p = 1:numel(p)
%         for i_e= 1:numel(e)
%             for i_g = 1:numel(g)
%                 counter=counter+1;
%                 list{counter,1} = [p{i_p} ' ' e{i_e} ' position' num2str(n) ' px tx py ty:'];
%                 list{counter,2} = str2num(sprintf('%.4f',real(batch.stat.groups.reaches.(p{i_p})(n).(e{i_e}).raw_of_mean{4})));
%                 list{counter,3} = str2num(sprintf('%.4f',batch.stat.groups.reaches.(p{i_p})(n).(e{i_e}).raw_of_mean{5}));
%                 list{counter,4} = str2num(sprintf('%.4f',imag(batch.stat.groups.reaches.(p{i_p})(n).(e{i_e}).raw_of_mean{4})));
%                 list{counter,5} = str2num(sprintf('%.4f',batch.stat.groups.reaches.(p{i_p})(n).(e{i_e}).raw_of_mean{6}));
%                 list{counter,6} = str2num(sprintf('%.4f',mean(real(batch.stat.groups.reaches.(p{i_p})(n).(e{i_e}).raw_of_mean{1}))));
%
%             end
%         end
%     end
% end

