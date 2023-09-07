/*-----------------------------------------------------------------
File name     : lab06run.f
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif simulator run file
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2019
-----------------------------------------------------------------*/
// 64 bit option required for AWS labs
-64

//-uvmhome $UVMHOME

// include directories, starting with UVM src directory
//-incdir ../sv

//-incdir ../../yapp/sv            // incude directory for YAPP UVC
//-incdir ../../channel/sv         // include directory for channel UVC
//-incdir ../../hbus/sv            // include directory for HBUS UVC
//-incdir ../../clock_and_reset/sv // include directory for clock_and_reset UVC


// options
//+UVM_VERBOSITY=UVM_HIGH
//+UVM_TESTNAME=base_test
//+UVM_TESTNAME=short_yapp_012
//+UVM_TESTNAME=incr_payload_test
//+UVM_TESTNAME=short_packet_test
//+UVM_TESTNAME=exhaustive_seq_test
//+SVSEED=random

// uncomment for gui
//-gui
//+access+rwc

// default timescale
//-timescale 1ns/1ns

// compile files
// UVC YAPP package + interface
// ../../assignment1-integ/sv/yapp_pkg.sv
// ../../assignment1-integ/sv/yapp_if.sv


// UVC channel package + interface
//../rtl/ibex_top_tracing.sv
// ../../channel/sv/channel_if.sv
// // UVC hbus package + interface
// ../../hbus/sv/hbus_pkg.sv
// ../../hbus/sv/hbus_if.sv
// // UVC clk-resert package + interface
// ../../clock_and_reset/sv/clock_and_reset_pkg.sv
// ../../clock_and_reset/sv/clock_and_reset_if.sv

// //complete
// // clock generator module
// clkgen.sv
// // top module for UVM test environment
conv.v
tb.sv
conv_layer_1.v
// tb_top.sv
// // accelerated top module for interface instance
// //hw_top_no_dut.sv
// hw_top_dut.sv
// // router RTL
// //../../router_rtl/yapp_router.sv