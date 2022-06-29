% CDFS eye  duration
grid off
axis square
set(gca,'xlim',[0.02 .085],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at eye, duration close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at eye, duration far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%%




% CDFS eye  velocity
grid off
axis square
set(gca,'xlim',[250 900],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at eye, velocity close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at eye, velocity far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')







%%

% CDFS hand  duration
grid off
axis square
set(gca,'xlim',[0.05 .4],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at hand, duration close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at hand, duration far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')




%%






% CDFS hand  latency difference
grid off
axis square
set(gca,'xlim',[0 0.5],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at handeye latency diff close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at handeye latency diff far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')




%%






% CDFS hand  latency 
grid off
axis square
set(gca,'xlim',[0.2 0.6],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at hand latency close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at hand latency far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')




%%






% CDFS eye  latency 
grid off
axis square
set(gca,'xlim',[0.1 0.45],'ylim',[0,1.01])


%% close
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'close_SCALED\';
file = ' Summary 2, Looking at eye latency close';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% far
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'far_SCALED\';
file = ' Summary 2, Looking at eye latency far';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')










%%



% Accuracy 2D plot
grid off
axis equal
set(gca,'xlim',[-28 28],'ylim',[-4,8])


%% hands
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'all_SCALED\';
file = ' Summary 2, Looking at hand accuracy2D';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')

%% eyes
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'all_SCALED\';
file = ' Summary 2, Looking at eye accuracy2D';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')




%%




% Latency of sensor release error
grid off
set(gca,'ylim',[0.35 0.52])


grid off
axis square
set(gca,'xlim',[0.2 1],'ylim',[0,1.01])

%% hands
path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'all_SCALED\';
file = ' Summary 2, Looking at hand sensor latency';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')






%%





% Scatterplots_eye_hand raw
grid off
axis square
set(gca,'xlim',[0.2 0.72],'ylim',[0.12 0.22])



path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'all_SCALED\';
file = ' Summary 2, Looking at eye_hand raw correlation RT';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')






%%


% Scatterplots_eye_hand residual
grid off
axis square
set(gca,'xlim',[-0.13 0.23],'ylim',[-0.045 0.043])



path = 'K:\Projects\Pulv_eye_hand\behavior\Thesis\20161203\';
subfolder = 'all_SCALED\';
file = ' Summary 2, Looking at eye_hand residual correlation RT';


export_fig([path, subfolder, file '_mod'], '-pdf','-transparent') % pdf by run
saveas(gcf,[path, subfolder, file '_mod'], 'fig')






%%

