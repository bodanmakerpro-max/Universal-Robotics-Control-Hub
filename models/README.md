# Missing KiCad 3D models

The current PCB stores project-relative 3D model paths, but **no STEP or WRL model files were included in the supplied uploads or this repository**. This does not prevent editing the schematic and board, but it makes the 3D assembly view incomplete.

The saved board refers to these 20 distinct filenames inside this **models/** folder:

- AMASS_XT60-F_1x02_P7.2mm_Vertical.step
- AMASS_XT60-M_1x02_P7.2mm_Vertical.step
- CP_Radial_D10.0mm_P5.00mm.step
- CP_Radial_D12.5mm_P5.00mm.step
- C_1206_3216Metric.step
- D_DO-201AD_P12.70mm_Horizontal.step
- D_DO-41_SOD81_P10.16mm_Horizontal.step
- D_SMB.step
- Fuse_Littelfuse-NANO2-451_453.wrl
- Fuseholder_Blade_Mini_Keystone_3568.step
- LED_D3.0mm.step
- L_Bourns_SRR1260.step
- Mini_10A.wrl
- Mini_25A.wrl
- PinHeader_2x07_P2.54mm_Vertical.step
- PinSocket_2x19_P2.54mm_Vertical.step
- R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal.step
- Relay_Songle_SRD_SPDT.wrl
- TO-220-5_Vertical.step
- TO-92_Inline_Wide.step

**Do not replace these with random shapes just to hide missing-file warnings.** Obtain the correct models, verify dimensions/orientation, and add them here. For standard components, you can alternatively relink the board to matching models from an installed KiCad 3D library. Some models, especially custom carrier and connector parts, may need to be supplied separately.

The saved PCB embeds its footprint geometry, including the custom Carrier_Custom footprints. The original independent custom footprint library was not supplied; restoring it is separate from restoring the 3D models.
