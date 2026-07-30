`include "common.v"
`include "LIF.v"

module SNN_top
  #(
    parameter LIF_NEURON_OVRFL_WIDTH = 8,
    parameter SPK_ARRAY_WIDTH = 784,
    parameter NEURAL_ARRAY_WIDTH = 48,
    parameter OUTPUT_ARRAY_WIDTH = 10,
    parameter WEIGHT_ADDR_WIDTH = 10,
    parameter WEIGHT_WIDTH = 8,
    parameter AXI4_ADDR_WIDTH = 32,
    parameter AXI4_DATA_WIDTH = 32,
    parameter AXI4_USER_WIDTH = 4,
    parameter AXI4_ID_WIDTH = 16
    )(
      input					  clk,
      input					  rst_n,

      input [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_1,
      input [WEIGHT_ADDR_WIDTH-1:0]		  address_1,
      input					  cs_1,
      input					  we_1,
      input					  oe_1,
  
      input [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_2,
      input [WEIGHT_ADDR_WIDTH-1:0]		  address_2,
      input					  cs_2,
      input					  we_2,
      input					  oe_2,

      input [SPK_ARRAY_WIDTH-1:0]		  i_spk_arry,
      input					  i_svalid,
      output					  o_start, 
      
      input					  s_axi_awvalid,
      input [AXI4_ID_WIDTH-1:0]			  s_axi_awid,
      input [7:0]				  s_axi_awlen,
      input [AXI4_ADDR_WIDTH-1:0]		  s_axi_awaddr,
      input [AXI4_USER_WIDTH-1:0]		  s_axi_awuser,
      output					  s_axi_awready,

      input					  s_axi_wvalid,
      input [AXI4_DATA_WIDTH-1:0]		  s_axi_wdata,
      input [AXI4_DATA_WIDTH/8-1:0]		  s_axi_wstrb,
      input					  s_axi_wlast,
      input [AXI4_USER_WIDTH-1:0]		  s_axi_wuser,
      output					  s_axi_wready,
      
      output					  s_axi_bvalid,
      output [AXI4_ID_WIDTH-1:0]		  s_axi_bid,
      output [1:0]				  s_axi_bresp,
      output [AXI4_USER_WIDTH-1:0]		  s_axi_buser,
      input					  s_axi_bready,

      input					  s_axi_arvalid,
      input [AXI4_ID_WIDTH-1:0]			  s_axi_arid,
      input [7:0]				  s_axi_arlen,
      input [AXI4_ADDR_WIDTH-1:0]		  s_axi_araddr,
      input [AXI4_USER_WIDTH-1:0]		  s_axi_aruser,
      output					  s_axi_arready,

      output					  s_axi_rvalid,
      output [AXI4_ID_WIDTH-1:0]		  s_axi_rid,
      output [AXI4_DATA_WIDTH-1:0]		  s_axi_rdata,
      output [1:0]				  s_axi_rresp,
      output					  s_axi_rlast,
      output [AXI4_USER_WIDTH-1:0]		  s_axi_ruser,
      input					  s_axi_rready,

       /* May be no need signal */
      input [2:0]				  s_axi_awsize,
      input [1:0]				  s_axi_awburst,

      input					  s_axi_awlock,
      input [3:0]				  s_axi_awcache,
      input [2:0]				  s_axi_awprot,
      input [3:0]				  s_axi_awregion,
      input [3:0]				  s_axi_awqos,

      input [2:0]				  s_axi_arsize,
      input [1:0]				  s_axi_arburst,

      input					  s_axi_arlock,
      input [3:0]				  s_axi_arcache,
      input [2:0]				  s_axi_arprot,
      input [3:0]				  s_axi_arregion,
      input [3:0]				  s_axi_arqos
      );

   wire				    w_start;
   wire [AXI4_DATA_WIDTH-1:0]	    w_spike;
   wire				    w_svalid;

   assign o_start = w_start;
   
   axi_slave_if
     #(
       .AXI4_ADDR_WIDTH(AXI4_ADDR_WIDTH),
       .AXI4_DATA_WIDTH(AXI4_DATA_WIDTH),
       .AXI4_USER_WIDTH(AXI4_USER_WIDTH),
       .AXI4_ID_WIDTH(AXI4_ID_WIDTH)
       )
   slave_if_0
     (
      .s_axi_aclk(clk),
      .s_axi_aresetn(rst_n),
      .s_axi_awvalid(s_axi_awvalid),
      .o_snn_config(w_start),
      .i_snn_status(w_spike),
      .i_snn_rvalid(w_svalid),
      
      .s_axi_awid(s_axi_awid),
      .s_axi_awlen(s_axi_awlen),
      .s_axi_awaddr(s_axi_awaddr),
      .s_axi_awuser(s_axi_awuser),
      .s_axi_awready(s_axi_awready),

      .s_axi_wvalid(s_axi_wvalid),
      .s_axi_wdata(s_axi_wdata),
      .s_axi_wstrb(s_axi_wstrb),
      .s_axi_wlast(s_axi_wlast),
      .s_axi_wuser(s_axi_wuser),
      .s_axi_wready(s_axi_wready),
      
      .s_axi_bvalid(s_axi_bvalid),
      .s_axi_bid(s_axi_bid),
      .s_axi_bresp(s_axi_bresp),
      .s_axi_buser(s_axi_buser),
      .s_axi_bready(s_axi_bready),

      .s_axi_arvalid(s_axi_arvalid),
      .s_axi_arid(s_axi_arid),
      .s_axi_arlen(s_axi_arlen),
      .s_axi_araddr(s_axi_araddr),
      .s_axi_aruser(s_axi_aruser),
      .s_axi_arready(s_axi_arready),

      .s_axi_rvalid(s_axi_rvalid),
      .s_axi_rid(s_axi_rid),
      .s_axi_rdata(s_axi_rdata),
      .s_axi_rresp(s_axi_rresp),
      .s_axi_rlast(s_axi_rlast),
      .s_axi_ruser(s_axi_ruser),
      .s_axi_rready(s_axi_rready),

      .s_axi_awsize(s_axi_awsize),
      .s_axi_awburst(s_axi_awburst),

      .s_axi_awlock(s_axi_awlock),
      .s_axi_awcache(s_axi_awcache),
      .s_axi_awprot(s_axi_awprot),
      .s_axi_awregion(s_axi_awregion),
      .s_axi_awqos(s_axi_awqos),

      .s_axi_arsize(s_axi_arsize),
      .s_axi_arburst(s_axi_arburst),

      .s_axi_arlock(s_axi_arlock),
      .s_axi_arcache(s_axi_arcache),
      .s_axi_arprot(s_axi_arprot),
      .s_axi_arregion(s_axi_arregion),
      .s_axi_arqos(s_axi_arqos));

   SNN_wrapper
     #(
       .LIF_NEURON_OVRFL_WIDTH(LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH(SPK_ARRAY_WIDTH),
       .NEURAL_ARRAY_WIDTH(NEURAL_ARRAY_WIDTH),
       .OUTPUT_ARRAY_WIDTH(OUTPUT_ARRAY_WIDTH),
       .WEIGHT_ADDR_WIDTH(WEIGHT_ADDR_WIDTH),
       .WEIGHT_WIDTH(WEIGHT_WIDTH)
       )
   SNN0
     (
      .clk(clk),
      .rst_n(rst_n),
      .i_start(w_start),
      .data_1(data_1),
      .address_1(address_1),
      .cs_1(cs_1),
      .we_1(we_1),
      .oe_1(oe_1),
      .data_2(data_2),
      .address_2(address_2),
      .cs_2(cs_2),
      .we_2(we_2),
      .oe_2(oe_2),
      .i_spk_arry(i_spk_arry),
      .i_svalid(i_svalid),
      .o_spike(w_spike),
      .o_svalid(w_svalid)
      );
   
endmodule

	 
