
mainfolder='C:\Users\lschneider\Desktop\penetrations';
dropboxfolder='C:\Users\lschneider\Dropbox';


plot_electrode_localization_tuned([dropboxfolder '\DAG\Sources\chamberlain\db\ephys_microstim_lin_cur\Curius_ephys_microstim_pulv_mat.m'],'memory')
export_fig([mainfolder filesep 'memory_cur_x3' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'memory_cur_x2' ], '-pdf','-transparent')
close gcf


plot_electrode_localization_tuned([dropboxfolder '\DAG\Sources\chamberlain\db\ephys_microstim_lin_cur\Linus_ephys_microstim_pulv_mat.m'],'memory')
export_fig([mainfolder filesep 'memory_lin_x3' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'memory_lin_x2' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'memory_lin_x1' ], '-pdf','-transparent')
close gcf

% plot_electrode_localization_tuned('C:\Users\a.doming\Dropbox\DAG\Sources\chamberlain\db\ephys_microstim_lin_cur\Linus_ephys_microstim_pulv_mat.m','direct')
% 
% 
% plot_electrode_localization_tuned('C:\Users\a.doming\Dropbox\DAG\Sources\chamberlain\db\ephys_microstim_lin_cur\Curius_ephys_microstim_pulv_mat.m','direct')
% export_fig(['C:\Users\a.doming\Desktop\penetrations' filesep 'direct_5' ], '-pdf','-transparent')