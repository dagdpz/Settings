% plot_SfN2014_electrode_localization_Curius

run('Curius_microstim_beh_electrode_localization_SfN_2014');

vmr_path = 'Z:\MRI\Curius\CUclean_20130627_ACPC-TO-CU_20140828_T2_chamber_normal_smoothed.vmr';
for k = 1:length(penetration_date),
	plot_coronal_slice(vmr_path,[xyz(k,1:2)*0.8 xyz(k,3)],25);
end