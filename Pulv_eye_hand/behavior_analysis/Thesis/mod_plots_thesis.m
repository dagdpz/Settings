% CDFS close duration
grid on
axis square
set(gca,'xlim',[.05 .5],'ylim',[0,1.01])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161201\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_closer_targets\';
file = ' Summary 2, Looking at hands, duration close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% CDFS far duration
grid on
axis square
set(gca,'xlim',[.05 .5],'ylim',[0,1.01])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161201\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_father_targets\';
file = ' Summary 2, Looking at hands, duration far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim duration hands
set(gca,'ylim',[0.12,0.24])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161201\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_all_inactivations_of_each_day\';
file = ' Summary 1, duration hands scaled';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')




% ylim latency hands
set(gca,'ylim',[0.3,0.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161201\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_all_inactivations_of_each_day\';
file = ' Summary 1, latency hands scaled';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%


% ylim duration gaze
set(gca,'ylim',[0.035,.055])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, duration eyes scaled';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim euclidean cloud gaze
set(gca,'ylim',[0.5,3.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, euclidean cloud eyes scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim euclidean distance gaze
set(gca,'ylim',[2,6])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, euclidean dist eyes scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim latency  gaze
set(gca,'ylim',[.14,.21])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, latency  eyes scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim success  gaze
set(gca,'ylim',[.8,1.05])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, success  eyes scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim velocity  gaze
set(gca,'ylim',[500,620])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, velocity  eyes scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



%%


% ylim duration hands
set(gca,'ylim',[0.12,.24])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, duration hands scaled';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim euclidean cloud hands
set(gca,'ylim',[0.5,4.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, euclidean cloud hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim euclidean distance hands
set(gca,'ylim',[0,3.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, euclidean dist hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

% K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\inactivation_6_vs_6_acc_all_SCALED

% ylim correlation intercept residuals  hands
set(gca,'ylim',[-0.005,0.005])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, corr int res hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim correlation slope residuals  hands
set(gca,'ylim',[-1.5,2.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, corr slo res hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim correlation latency residuals  hands
set(gca,'ylim',[-1,1])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, corr lat res hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')


% ylim latency difference rea-sac  hands
set(gca,'ylim',[0.15,0.35])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, lat diff rea_sac scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim latency  hands
set(gca,'ylim',[.3,.5])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, latency  hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim success  hands
set(gca,'ylim',[.2,1.1])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, success  hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')



% ylim velocity  hands
set(gca,'ylim',[500,620])

path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'inactivation_6_vs_6_sessions_all_sessions_as_retreat_ALL_SCALED\';
file = ' Summary 1, velocity  hands scaled';

export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')
