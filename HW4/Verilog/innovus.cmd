#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Mar 22 01:19:07 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/raid7_2/user12/r2945050/ICDLab/HW4/DBS/coreFiller.dat CHIP
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
saveNetlist CHIP.v
setAnalysisMode -analysisType bcwc
write_sdf -max_view av_func_mode_max -min_view av_func_mode_min -edges noedge -splitsetuphold -remashold -splitrecrem -min_period_edges none CHIP.sdf
set dbgLefDefOutVersion 5.8
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -scanChain -routing CHIP.def
set dbgLefDefOutVersion 5.8
set dbgLefDefOutVersion 5.8
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_0 -loc 192.09 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_1 -loc 306.68 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_2 -loc 421.27 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_3 -loc 535.86 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_CoreVSS2 -loc 650.44 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_CoreVDD2 -loc 765.02 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_4 -loc 879.6 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_5 -loc 994.19 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_6 -loc 1108.78 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_7 -loc 1223.37 -56.92 -ori R0
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_8 -loc 1478.08 191.27 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_9 -loc 1478.08 305.03 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_10 -loc 1478.08 418.79 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_11 -loc 1478.08 532.55 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_IOVDD2 -loc 1478.08 646.31 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_IOVSS2 -loc 1478.08 760.07 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_12 -loc 1478.08 873.83 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_13 -loc 1478.08 987.59 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_14 -loc 1478.08 1101.35 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_o_15 -loc 1478.08 1215.11 -ori R90
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_4 -loc 1241 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_3 -loc 1144.04 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_2 -loc 1047.08 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_1 -loc 950.12 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_0 -loc 853.16 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_CoreVSS1 -loc 756.21 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_CoreVDD1 -loc 659.26 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_inst_i_2 -loc 562.3 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_inst_i_1 -loc 465.34 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_inst_i_0 -loc 368.38 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_reset_n_i -loc 271.42 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_clk_p_i -loc 174.46 1469 -ori R180
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_7 -loc -56.92 1239.49 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_6 -loc -56.92 1150.1 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_5 -loc -56.92 1060.71 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_4 -loc -56.92 971.33 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_3 -loc -56.92 881.95 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_2 -loc -56.92 792.57 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_IOVSS1 -loc -56.92 703.19 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_IOVDD1 -loc -56.92 613.81 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_1 -loc -56.92 524.43 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_b_i_0 -loc -56.92 435.05 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_7 -loc -56.92 345.67 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_6 -loc -56.92 256.28 -ori R270
addInst -physical -cell BONDPADD_m -inst BPad_ipad_data_a_i_5 -loc -56.92 166.89 -ori R270
setDrawView place
redraw
add_text -layer metal5 -pt 1435 640 -label IOVDD -height 10
add_text -layer metal5 -pt 1435 750 -label IOVSS -height 10
saveDesign DBS/Finish
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
violationBrowserClose
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report CHIP.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyProcessAntenna -reportfile CHIP.antenna.rpt -error 1000
verifyConnectivity -nets {VCC GND} -type special -noUnroutedNet -error 1000 -warning 50
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report CHIP.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
