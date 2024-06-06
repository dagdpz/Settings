% plot_SfN2014_electrode_localization_Linus

run('Linus_microstim_beh_electrode_localization_SfN_2014');

vmr_path = 'D:\MRI\Linus\20140221elec\ani_0712\0005\LI_20130614_STEREO-TO-LI_20140221_Rcham_normal.vmr';
for k = 1:length(penetration_date),
	plot_coronal_slice(vmr_path,[xyz(k,1:2)*0.8 xyz(k,3)],26);
end