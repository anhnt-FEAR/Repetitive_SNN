`include "../RTL/common.v"
`include "../RTL/LIF.v"
`define CLK_PERIOD 10
`timescale 1 ns/1 ps

module TB_SNPC_MNIST_32b;
   parameter _IMG_INDX = 0;
   parameter _QUIT = 1;
   parameter INPUT_SPIKE_FILE = "../DATA/input/256x256/1000_IMG/RAM/TEST_X/SPIKE_IMG-1.bin";
   
   parameter INPUT_W1_FILE = "../DATA/input/RAM/W_L-0000.txt";
   parameter INPUT_W2_FILE = "../DATA/input/RAM/W_L-0001.txt";

   parameter OUTPUT_CLASSIF_FILE = "../DATA/output/MNIST_10K_V-1.0.txt";
   parameter WEIGHT_WIDTH   = 8;
   parameter LIF_NEURON_OVRFL_WIDTH = 8;
   parameter SPK_ARRAY_WIDTH = `SPK_ARRAY_WIDTH;
   parameter NEURAL_ARRAY_WIDTH = `NEURAL_ARRAY_WIDTH;
   parameter STATE_WIDTH    = `STATE_WIDTH;
   parameter WEIGHT_ADDR_WIDTH = `WEIGHT_ADDR_WIDTH;
   parameter OUTPUT_ARRAY_WIDTH = `OUTPUT_ARRAY_WIDTH;
   parameter OUTPUT_REG     = 0;

   reg clk;
   reg rst_n;

   reg [SPK_ARRAY_WIDTH-1:0] i_spk_arry;
   reg i_svalid;  
   reg i_start;   

   wire [NEURAL_ARRAY_WIDTH-1:0] wo_spike_L0;    
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] wo_V_L0;   
   wire wo_svalid_L0;
   
   wire [NEURAL_ARRAY_WIDTH-1:0] wo_spike_L1;    
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] wo_V_L1;   
   wire wo_svalid_L1;

   wire [OUTPUT_ARRAY_WIDTH-1:0] wo_spike_L2;    
   wire [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] wo_V_L2;   
   wire wo_svalid_L2;

`ifdef __NO_LEARNING__
   reg [WEIGHT_ADDR_WIDTH-1:0] address_1, address_2, address_3;
   reg cs_1, we_1, oe_1;
   reg cs_2, we_2, oe_2;
   reg cs_3, we_3, oe_3;

   reg [31:0] data_1_reg, data_2_reg, data_3_reg;
   reg [31:0] data_1, data_2, data_3;
`endif

   integer i,j,k,count,v_i,v_j;
   reg [WEIGHT_WIDTH-1:0] mem_1 [0:SPK_ARRAY_WIDTH-1];
   reg [WEIGHT_WIDTH-1:0] mem_2 [0:NEURAL_ARRAY_WIDTH-1];
   reg [WEIGHT_WIDTH-1:0] mem_3 [0:NEURAL_ARRAY_WIDTH-1];

   reg [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] w1_mem [0:SPK_ARRAY_WIDTH-1];
   reg [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] w2_mem [0:NEURAL_ARRAY_WIDTH-1];
   reg [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] w3_mem [0:NEURAL_ARRAY_WIDTH-1];

   // =========================================================
   // LOAD WEIGHT FILES ( NGUYÊN)
   // =========================================================
   initial begin
      // (N?i dung load weight gi? nguyên nhu file g?c)
   end

   // =========================================================
   // WRITE SRAM W1 – 32-bit bus
   // =========================================================
   initial begin
      #(200*`CLK_PERIOD);
      cs_1 = 1'b1; we_1 = 1'b1;
      for (count = 0; count < SPK_ARRAY_WIDTH; count = count + 1) begin
         for (v_i = 0; v_i < (NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH)/32; v_i = v_i + 1) begin
            @(posedge clk);
            address_1 = count*((NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH)/32) + v_i;
            data_1_reg = w1_mem[count][v_i*32 +: 32];
         end
      end
      @(posedge clk);
      cs_1 = 1'b0; we_1 = 1'b0;
      $display("W1 Initialization Successful (32-bit)");
   end

   // =========================================================
   // WRITE SRAM W2 – 32-bit bus
   // =========================================================
   initial begin
      #(400*`CLK_PERIOD);
      cs_2 = 1'b1; we_2 = 1'b1;
      for (count = 0; count < NEURAL_ARRAY_WIDTH; count = count + 1) begin
         for (v_i = 0; v_i < (NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH)/32; v_i = v_i + 1) begin
            @(posedge clk);
            address_2 = count*((NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH)/32) + v_i;
            data_2_reg = w2_mem[count][v_i*32 +: 32];
         end
      end
      @(posedge clk);
      cs_2 = 1'b0; we_2 = 1'b0;
      $display("W2 Initialization Successful (32-bit)");
   end

   // =========================================================
   // WRITE SRAM W3 – 32-bit bus
   // =========================================================
   initial begin
      #(600*`CLK_PERIOD);
      cs_3 = 1'b1; we_3 = 1'b1;
      for (count = 0; count < NEURAL_ARRAY_WIDTH; count = count + 1) begin
         for (v_i = 0; v_i < (OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH)/32; v_i = v_i + 1) begin
            @(posedge clk);
            address_3 = count*((OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH)/32) + v_i;
            data_3_reg = w3_mem[count][v_i*32 +: 32];
         end
      end
      @(posedge clk);
      cs_3 = 1'b0; we_3 = 1'b0;
      $display("W3 Initialization Successful (32-bit)");
   end

   // =========================================================
   // CLOCK / RESET (GI? NGUYÊN)
   // =========================================================
   initial begin
      clk = 0;
      forever #(`CLK_PERIOD/2) clk = ~clk;
   end

   initial begin
      rst_n = 0;
      #(`CLK_PERIOD*10) rst_n = 1;
   end

   // =========================================================
   // DUT
   // =========================================================
   SNPC_top DUT (
      .clk(clk),
      .rst_n(rst_n),
      .i_start(i_start),
      .i_spk_arry(i_spk_arry),
      .i_svalid(i_svalid),

      .address_1(address_1),
      .data_1(data_1),
      .cs_1(cs_1),
      .we_1(we_1),
      .oe_1(oe_1),

      .address_2(address_2),
      .data_2(data_2),
      .cs_2(cs_2),
      .we_2(we_2),
      .oe_2(oe_2),

      .address_3(address_3),
      .data_3(data_3),
      .cs_3(cs_3),
      .we_3(we_3),
      .oe_3(oe_3),

      .o_spike(wo_spike_L2),
      .o_svalid(wo_svalid_L2)
   );

endmodule
