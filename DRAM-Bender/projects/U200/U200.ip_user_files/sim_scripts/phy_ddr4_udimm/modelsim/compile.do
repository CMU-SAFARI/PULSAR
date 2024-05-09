vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_4
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lmb_v10_v3_0_11
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_19
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/iomodule_v3_1_6

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_4 modelsim_lib/msim/microblaze_v11_0_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lmb_v10_v3_0_11 modelsim_lib/msim/lmb_v10_v3_0_11
vmap lmb_bram_if_cntlr_v4_0_19 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_19
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap iomodule_v3_1_6 modelsim_lib/msim/iomodule_v3_1_6

vlog -work xilinx_vip -64 -incr -sv -L xdma_v4_1_8 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L xdma_v4_1_8 "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_4 -64 -93 \
"../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_0/sim/bd_ba6a_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_1/sim/bd_ba6a_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_11 -64 -93 \
"../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_2/sim/bd_ba6a_ilmb_0.vhd" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_3/sim/bd_ba6a_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_19 -64 -93 \
"../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_4/sim/bd_ba6a_dlmb_cntlr_0.vhd" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_5/sim/bd_ba6a_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_6/sim/bd_ba6a_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_7/sim/bd_ba6a_second_dlmb_cntlr_0.vhd" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_8/sim/bd_ba6a_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_9/sim/bd_ba6a_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_6 -64 -93 \
"../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/ip/ip_10/sim/bd_ba6a_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/bd_0/sim/bd_ba6a.v" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_0/sim/phy_ddr4_udimm_microblaze_mcs.v" \

vlog -work xil_defaultlib -64 -incr -sv -L xdma_v4_1_8 "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/map" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top" "+incdir+../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/phy/phy_ddr4_udimm_phy_ddr4.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/ip_1/rtl/ip_top/phy_ddr4_udimm_phy.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top/phy_ddr4_udimm_ddr4.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/cal/phy_ddr4_udimm_ddr4_cal_riu.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/rtl/ip_top/phy_ddr4_udimm.sv" \
"../../../../U200.srcs/sources_1/ip/phy_ddr4_udimm/tb/microblaze_mcs_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

