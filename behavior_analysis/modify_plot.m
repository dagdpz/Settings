path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = 'Controls_vs_MB\';
file = ' Summary 3,  Looking at hands, accuracy successful only';

export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')


% ACCURACY
axis equal
set(gca,'xlim',[-30 30],'ylim',[-5,5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = '\inactivation_6_vs_6_sessions_instructed\';
file = ' Summary 3,  Looking at hands, accuracy successful only';

export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')



% ACCURACY vertical eye traces
axis equal
set(gca,'xlim',[-25 25],'ylim',[-25,25])

path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = '\Linus_ephys_vertical_saccades\';
file = 'Summary 6,  Looking at gaze, Error raw traces';

export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')


% CDFS
grid on
axis square
set(gca,'xlim',[.1 .5],'ylim',[0,1])

path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = 'inactivation_6_vs_6_sessions_instructed\';
file = ' Summary 2,  Looking at hands, latency difference reach minus saccade';


export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')





% CDFS HANDS
grid minor
set(gca,'xlim',[.2 0.8],'ylim',[0,1])

path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = 'inactivation_6_vs_6_sessions_all\';
file = ' Summary 5,  Looking at hands, Latency of sensor release';


export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')




% CORRELATIONS
grid off
axis square
set(gca,'xlim',[0.2 0.5],'ylim',[.1,.25])

export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')


% % CORRELATIONS RESIDUALS
% grid off
% axis square
% set(gca,'xlim',[-0.2 0.2],'ylim',[-0.2,.25])
% 
% export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
% saveas(gcf,[path, subfolder, file '__mod'], 'fig')
% 
% 


path = 'K:\Projects\Pulv_eye_hand\behavior\Retreat\20160812\';
subfolder = 'inactivation_6_controls_instructed\';
file = ' Summary 4,  Looking at hands, correlation raw saccade reaches';

% CORRELATIONS RAW ALL 
grid off
axis square
set(gca,'xlim',[0.1 0.65],'ylim',[.1,.55])

export_fig([path, subfolder, file '__mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '__mod'], 'fig')

