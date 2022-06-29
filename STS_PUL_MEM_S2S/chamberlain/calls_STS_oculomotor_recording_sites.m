
mainfolder='Y:\Projects\STS_memory_saccades\ephys\20171214';
dropboxfolder='C:\Users\lschneider\Dropbox';

plot_electrode_localization_categories([dropboxfolder '\DAG\Sources\chamberlain\db\STS_ephys\Cornelius_ephys_oculomotor_pulv_mat.m'],'visuomotor')
export_fig([mainfolder filesep 'visuomotor_cor_x3' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'visuomotor_cor_x2' ], '-pdf','-transparent')
close gcf
export_fig([mainfolder filesep 'visuomotor_cor_x1' ], '-pdf','-transparent')
close gcf



