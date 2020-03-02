clear list

%p = {'lat', 'dur'};
p = {'accuracy_xy'};
e = {'t_4_e_6_L_IN_LH', 't_4_e_6_L_IN_RH', 't_4_e_6_R_IN_LH', 't_4_e_6_R_IN_RH' ...
    't_4_e_4_L_IN_LH', 't_4_e_4_L_IN_RH', 't_4_e_4_R_IN_LH', 't_4_e_4_R_IN_RH',};
g = {'Control', 'Experimental'};
counter = 0;

for i_p = 1:numel(p)
    for i_e= 1:numel(e)
        for i_g = 1:numel(g)
            counter=counter+1;
%             list{counter,1} = [g{i_g} ' ' p{i_p} ' ' e{i_e} ' mean  +- sem:'];
%             list{counter,2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).reaches.(p{i_p}).(e{i_e}).mean_of_mean));
%             list{counter,3} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).reaches.(p{i_p}).(e{i_e}).sem_of_mean));
%         end
%         list{counter,4} = str2num(sprintf('%.4f',((batch.out_stru_ext.Experimental.reaches.(p{i_p}).(e{i_e}).mean_of_mean)-(batch.out_stru_ext.Control.reaches.(p{i_p}).(e{i_e}).mean_of_mean))));
%         list{counter,5} = str2num(sprintf('%.3f',batch.stat.groups.reaches.(p{i_p}).(e{i_e}).raw_of_mean{4}));
%     end
            list{counter,1} = [g{i_g} ' ' p{i_p} ' ' e{i_e} ' mean_of_std  +- sem:'];
            list{counter,2} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).reaches.(p{i_p}).(e{i_e}).mean_of_std));
            list{counter,3} = str2num(sprintf('%.4f',batch.out_stru_ext.(g{i_g}).reaches.(p{i_p}).(e{i_e}).sem_of_std));
        end
        list{counter,4} = str2num(sprintf('%.4f',((batch.out_stru_ext.Experimental.reaches.(p{i_p}).(e{i_e}).mean_of_std)-(batch.out_stru_ext.Control.reaches.(p{i_p}).(e{i_e}).mean_of_std))));
        list{counter,5} = str2num(sprintf('%.3f',batch.stat.groups.reaches.(p{i_p}).(e{i_e}).raw_of_std{4}));
    end
%     
end


