clear list
% % PHYSIOLOGY
%  p = {'accuracy_xy'}; % change parameter to raw_of_std!!
p = {'dur','lat'}; % change parameter to raw_of_mean!!
% e = {   't_4_e_4_L_IN_LH', 't_4_e_4_L_IN_RH', 't_4_e_4_R_IN_LH', 't_4_e_4_R_IN_RH', ...
%     't_4_e_6_L_IN_LH', 't_4_e_6_L_IN_RH', 't_4_e_6_R_IN_LH', 't_4_e_6_R_IN_RH', };
%
%
% e = {   't_4_e_4_L_IN_LH', 't_4_e_4_L_IN_RH', 't_4_e_4_R_IN_LH', 't_4_e_4_R_IN_RH'};
% e = {   't_4_e_6_L_IN_LH', 't_4_e_6_L_IN_RH', 't_4_e_6_R_IN_LH', 't_4_e_6_R_IN_RH' };


%% iNACTIVATION 
e = {   't_2_e_4_L_IN_LH', 't_2_e_4_L_IN_RH', 't_2_e_4_R_IN_LH', 't_2_e_4_R_IN_RH', ...
    't_2_e_6_L_IN_LH', 't_2_e_6_L_IN_RH', 't_2_e_6_R_IN_LH', 't_2_e_6_R_IN_RH', };


% e = {   't_2_e_4_L_IN_LH', 't_2_e_4_L_IN_RH', 't_2_e_4_R_IN_LH', 't_2_e_4_R_IN_RH'};
% e = {   't_2_e_6_L_IN_LH', 't_2_e_6_L_IN_RH', 't_2_e_6_R_IN_LH', 't_2_e_6_R_IN_RH' };

counter = 0;

for i_p = 1:numel(p)
    for i_e= 1:numel(e)
        for i_g = 1:numel(g)
            counter=counter+1;
            list{counter,1} = [p{i_p} ' ' e{i_e} ' p t:'];
            list{counter,2} = str2num(sprintf('%.4f',batch.stat.groups.reaches.(p{i_p}).(e{i_e}).raw_of_mean{4})); % or raw_of_std of "accuracy_xy" for  precision
            list{counter,3} = str2num(sprintf('%.4f',batch.stat.groups.reaches.(p{i_p}).(e{i_e}).raw_of_mean{5}));
        end
    end
    
end

% %%
% clear list
% 
% p = {'endpoints_per_position_s'};
% num_p = 4;
%
%
%
% PHYSIOLOGY
%  e = {   't_4_e_4_IN_LH', 't_4_e_4_IN_RH'};
% % e = {   't_4_e_6_IN_LH', 't_4_e_6_IN_RH'};
%
%
%
%
% INACTIVATION
%  e = {   't_2_e_4_IN_LH', 't_2_e_4_IN_RH'};
% % e = {   't_2_e_6_IN_LH', 't_2_e_6_IN_RH'};
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



