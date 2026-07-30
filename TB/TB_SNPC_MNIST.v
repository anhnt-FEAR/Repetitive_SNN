`include "../RTL/common.v"
`include "../RTL/LIF.v"
`define CLK_PERIOD 10
`timescale 1 ns/1 ps

module TB_SNPC_MNIST;
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

   ////////////////////////////////////////////////////////////////////////////////
   // Wire/reg declarations
   ////////////////////////////////////////////////////////////////////////////////
   reg clk;
   reg rst_n;

   reg [SPK_ARRAY_WIDTH-1:0] i_spk_arry;
   reg 			     i_svalid;  
   reg 			     i_start;   

   wire [NEURAL_ARRAY_WIDTH-1:0] 					wo_spike_L0;    
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L0;   
   wire 							       	wo_svalid_L0;
   
   wire [NEURAL_ARRAY_WIDTH-1:0] 					wo_spike_L1;    
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L1;   
   wire 							       	wo_svalid_L1;


   wire [OUTPUT_ARRAY_WIDTH-1:0] 				       	wo_spike_L2;    
   wire [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L2;   
   wire 							       	wo_svalid_L2;

`ifdef __REPETITION__
   reg           i_core_ts;
   reg           i_rep_ts;
   reg           i_rep_layer2;
   reg           i_rep_layer3;
   reg 		 i_rep_layer4; 

   reg           i_skip_com;
   reg           i_not_skip_com;
   reg		 i_done;

   integer       count_ts, rep_step;       
`endif

`ifdef __NO_LEARNING__
   reg [WEIGHT_ADDR_WIDTH-1:0] 					       	address_1;
   reg [WEIGHT_ADDR_WIDTH-1:0] 					       	address_2;
   reg [WEIGHT_ADDR_WIDTH-1:0]					        address_3;  
 `ifdef __SPLIT_RAM__
   reg [3:0] 							       i_ram_ena;
 `endif
   reg 								       	cs_1;
   reg 								       	we_1;
   reg 								       	oe_1; 
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 			       	data_1_reg;
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 		       		data_1;
   
   reg 								       	cs_2;
   reg 								       	we_2;
   reg 								       	oe_2; 
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 			       	data_2_reg;
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 		       		data_2;
   
   reg 								       	cs_3;
   reg 								       	we_3;
   reg 								       	oe_3; 
   reg [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 			       	data_3_reg;
   reg [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 		       		data_3;
`else
 `ifdef __EXT_RAM_INF__
   reg [WEIGHT_ADDR_WIDTH-1:0] 					       address_1;
   reg 								       cs_1;
   reg 								       we_1;
   reg 								       oe_1; 
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 			       data_1_reg;
   reg [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] 		      	       data_1;
 `endif
`endif

   wire [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       d1;
   wire [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       d2;	 
   wire [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       d3;
   	

   integer 							       input_file, output_file, i,j, read_num, k, out_spike_file;
   reg [29*8:1]                                                        wo_spike_file;
   // reg [0:SPK_ARRAY_WIDTH-1]					       spike_mem[0:34];
   reg [0:7] 							       spike_mem[0:97];
   reg [80*8:1] 						       input_fname, output_fname;
   integer 							       img_indx;
   integer 							       output_spike_cnt [9:0];
   integer 							       count;

   reg [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       w1_mem [0:SPK_ARRAY_WIDTH-1];
   reg [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       w2_mem [0:NEURAL_ARRAY_WIDTH-1];	
   reg [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0]			       w3_mem [0:NEURAL_ARRAY_WIDTH-1];

   // reg [WEIGHT_WIDTH-1:0]			       w1_mem [0:SPK_ARRAY_WIDTH*NEURAL_ARRAY_WIDTH-1];
   // reg [WEIGHT_WIDTH-1:0]			       w2_mem [0:NEURAL_ARRAY_WIDTH*OUTPUT_ARRAY_WIDTH-1];
   
   ////////////////////////////////////////////////////////////////////////////////
   // Initials 
   ////////////////////////////////////////////////////////////////////////////////
   integer 							       timestep_index, c_indx, r_indx, b_indx, spike_count, timestep;
   reg [63*8:1] 						       input_file_name;
   integer v_i, v_j, max_scnt, gi;
   integer t0, t1, t2, t3, file;
   reg [WEIGHT_WIDTH-1:0] mem_1 [0:SPK_ARRAY_WIDTH-1];
   reg [WEIGHT_WIDTH-1:0] mem_2 [0:NEURAL_ARRAY_WIDTH-1];
   reg [WEIGHT_WIDTH-1:0] mem_3 [0:NEURAL_ARRAY_WIDTH-1];
   initial begin
      $display("Loading SRAM of W1.");
      // $readmemb(INPUT_W1_FILE, w1_mem);
      for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1) begin
	 //input_file_name  = "../DATA/input/RAM/W_L-0000_N-xxxx.bin"; 
         input_file_name    = "../DATA/input/256x256/1000_IMG/RAM/WEIGHT/W_L-0000_N-xxxx.bin";
	 t3 = (v_i/32'd1000) % 32'd10; 
	 t2 = (v_i/32'd100) % 32'd10; 
	 t1 = (v_i/32'd10) % 32'd10; 
	 t0 = v_i % 32'd10; 
	 input_file_name [40:33] = "0" + t0; 
	 input_file_name [48:41] = "0" + t1; 
	 input_file_name [56:49] = "0" + t2; 
	 input_file_name [64:57] = "0" + t3; 

	 #(1);
	 $display("input = %s", input_file_name );
	 #(1);
	 file = $fopen(input_file_name, "rb");
	 i = $fread(mem_1, file);
	 for (v_j = 0; v_j < SPK_ARRAY_WIDTH; v_j=v_j+1) begin
	    w1_mem[v_j][((v_i+1)*WEIGHT_WIDTH-1) -: 8] = mem_1[v_j][(WEIGHT_WIDTH-1) : 0];
	 end 
      end // for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1)
      $display("Loading SRAM of W1 completed.");
      
      $display("Loading SRAM of W2.");
      for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1) begin
	 //input_file_name  = "../DATA/input/RAM/W_L-0001_N-xxxx.bin"; 
	 input_file_name = "../DATA/input/256x256/1000_IMG/RAM/WEIGHT/W_L-0001_N-xxxx.bin";
	 t3 = (v_i/32'd1000) % 32'd10; 
	 t2 = (v_i/32'd100) % 32'd10; 
	 t1 = (v_i/32'd10) % 32'd10; 
	 t0 = v_i % 32'd10; 
	 input_file_name [40:33] = "0" + t0; 
	 input_file_name [48:41] = "0" + t1; 
	 input_file_name [56:49] = "0" + t2; 
	 input_file_name [64:57] = "0" + t3; 

	 #(1);
	 $display("input = %s", input_file_name );
	 #(1);
	 file = $fopen(input_file_name, "rb");
	 i = $fread(mem_2, file);
	 for (v_j = 0; v_j < NEURAL_ARRAY_WIDTH; v_j=v_j+1) begin
	    w2_mem[v_j][((v_i+1)*WEIGHT_WIDTH-1) -: 8] = mem_2[v_j][(WEIGHT_WIDTH-1) : 0];
	 end 
      end // for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1)
      $display("Loading SRAM of W2 completed.");


      $display("Loading SRAM of W3.");
      for (v_i = 0; v_i<OUTPUT_ARRAY_WIDTH; v_i=v_i+1) begin
	 //input_file_name  = "../DATA/input/RAM/W_L-0002_N-xxxx.bin";
	 input_file_name = "../DATA/input/256x256/1000_IMG/RAM/WEIGHT/W_L-0002_N-xxxx.bin";
         
	 t3 = (v_i/32'd1000) % 32'd10; 
	 t2 = (v_i/32'd100) % 32'd10; 
	 t1 = (v_i/32'd10) % 32'd10; 
	 t0 = v_i % 32'd10; 
	 input_file_name [40:33] = "0" + t0; 
	 input_file_name [48:41] = "0" + t1; 
	 input_file_name [56:49] = "0" + t2; 
	 input_file_name [64:57] = "0" + t3; 

	 #(1);
	 $display("input = %s", input_file_name );
	 #(1);
	 file = $fopen(input_file_name, "rb");
	 i = $fread(mem_3, file);
	 for (v_j = 0; v_j < NEURAL_ARRAY_WIDTH; v_j=v_j+1) begin
	    w3_mem[v_j][((v_i+1)*WEIGHT_WIDTH-1) -: 8] = mem_3[v_j][(WEIGHT_WIDTH-1) : 0];
	 end
      end // for (v_i = 0; v_i<OUTPUT_ARRAY_WIDTH; v_i=v_i+1)
      $display("Loading SRAM of W3 completed.");            
   end
   
   initial
     begin
	$display("Loading spike image.");
	// $readmemb(INPUT_SPIKE_FILE, spike_mem);
	input_file = $fopen(INPUT_SPIKE_FILE, "rb");
	read_num = $fread(spike_mem, input_file);
	while (1) begin
	   if (i_svalid) begin
	      @(posedge clk);
	      read_num = $fread(spike_mem, input_file);
	      // $readmemb(INPUT_SPIKE_FILE, spike_mem);	      
	      // spike_count = spike_count + 1;
	   end else begin
	      @(posedge clk);
	   end
	end
	$display("Loading spike image completed.");
     end



   initial begin
      img_indx = 1;
      i = 0;
      i_svalid <= 1'b0;
      i_spk_arry <= 0;
      i_start <= 1'b0;
      timestep = 0; 
 
`ifdef __REPETITION__
      i_core_ts 	= 1'b0;
      i_rep_ts	 	= 1'b0;
      i_rep_layer2 	= 1'b0;
      i_rep_layer3 	= 1'b0;
      i_rep_layer4	= 1'b0; 

      i_skip_com 	= 1'b0;
      i_not_skip_com	= 1'b0; 
      i_done 		= 1'b0;	
      count_ts		= 0;
      rep_step		= 2; 
`endif

`ifdef __NO_LEARNING__
 `ifdef __SPLIT_RAM__
      i_ram_ena <= 4'b1111;
 `endif
      cs_1 <= 1'b0;
      we_1 <= 1'b0;
      oe_1 <= 1'b0;
      address_1 <= 0;
      data_1_reg <= 0;
      
      cs_2 <= 1'b0;
      we_2 <= 1'b0;
      oe_2 <= 1'b0;
      address_2 <= 0;
      data_2_reg <= 0;
   
      cs_3 <= 1'b0;
      we_3 <= 1'b0; 
      oe_3 <= 1'b0;
      address_3 <= 0; 
      data_3_reg <= 0; 
      
`endif
      /////////////////////////////////////////////////////////
      #(2*`CLK_PERIOD);
      #(200*`CLK_PERIOD);
      count <= 0;
      #(2*`CLK_PERIOD);
      /////////////////////////////////////////////////////////

      @(posedge clk);
      #(`CLK_PERIOD/2);
      cs_1 = 1'b1; we_1 = 1'b1; address_1 = count; data_1_reg = 0;
      // while (count < SPK_ARRAY_WIDTH*NEURAL_ARRAY_WIDTH) begin
      while (count < SPK_ARRAY_WIDTH) begin	 
	 @(posedge clk);
	 #(`CLK_PERIOD/2);
	 address_1 = count;
	 @(posedge clk);
	 // for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1) begin
	 //    data_1_reg[v_i*(WEIGHT_WIDTH)+:WEIGHT_WIDTH] = w1_mem[count*NEURAL_ARRAY_WIDTH+v_i];
	 // end
	 #(`CLK_PERIOD/2);	 
	 data_1_reg = w1_mem[count];
	 // $display("%96h", w1_mem[count]);
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 count = count + 1;
	 // count = count + NEURAL_ARRAY_WIDTH;	 
      end
      $display("W1 Initialization Successful.");
      @(posedge clk);
      #(`CLK_PERIOD/2) ;     
      cs_1 = 1'b0; we_1 = 1'b0; address_1 = 0; data_1_reg = 0;
      count = 0;
      
      ////////////////////////////////////////////////////////////
      @(posedge clk);
      #(`CLK_PERIOD/2);
      cs_2 = 1'b1; we_2 = 1'b1; address_2 = count; data_2_reg = 0;
      // while (count < SPK_ARRAY_WIDTH*NEURAL_ARRAY_WIDTH) begin
      while (count < NEURAL_ARRAY_WIDTH) begin	 
	 @(posedge clk);
	 #(`CLK_PERIOD/2);
	 address_2 = count;
	 @(posedge clk);
	 // for (v_i = 0; v_i<NEURAL_ARRAY_WIDTH; v_i=v_i+1) begin
	 //    data_1_reg[v_i*(WEIGHT_WIDTH)+:WEIGHT_WIDTH] = w1_mem[count*NEURAL_ARRAY_WIDTH+v_i];
	 // end
	 #(`CLK_PERIOD/2);	 
	 data_2_reg = w2_mem[count];
	 // $display("%96h", w2_mem[count]);
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 count = count + 1;
	 // count = count + NEURAL_ARRAY_WIDTH;	 
      end
      $display("W2 Initialization Successful.");
      @(posedge clk);
      #(`CLK_PERIOD/2) ;     
      cs_2 = 1'b0; we_2 = 1'b0; address_2 = 0; data_2_reg = 0;
      count = 0;
      
      // $display("Loading SRAM of W2.");
      // $readmemb(INPUT_W2_FILE, w2_mem);
      // $display("Loading SRAM of W2 completed");

      /////////////////////////////////////////////////////////
      @(posedge clk);
      #(`CLK_PERIOD/2);      
      cs_3 = 1'b1; we_3 = 1'b1; address_3 = count; data_3_reg = 0;
      // while (count < NEURAL_ARRAY_WIDTH*OUTPUT_ARRAY_WIDTH) begin
      while (count < NEURAL_ARRAY_WIDTH) begin	 
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 address_3 = count;
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 // for (v_i = 0; v_i<OUTPUT_ARRAY_WIDTH; v_i=v_i+1) begin
	 //    data_2_reg[v_i*(WEIGHT_WIDTH)+:WEIGHT_WIDTH] = w2_mem[count*OUTPUT_ARRAY_WIDTH+v_i];
	 // end
	 data_3_reg = w3_mem[count];
	 // $display("%20h", w2_mem[count]);
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 count = count + 1;
	 // count = count + OUTPUT_ARRAY_WIDTH;	 
      end
      $display("W3 Initialization Successful.");

      @(posedge clk);
      #(`CLK_PERIOD/2);      
      cs_3 = 1'b0; we_3 = 1'b0; address_3 = 0; data_3_reg = 0;      
      count = 0;

      /////////////////////////////////////////////////////////
`ifdef __SPLIT_RAM__
      i_ram_ena = 4'b1111;
`endif

      @(posedge clk);
      #(`CLK_PERIOD/2);	 
      /////////////////////////////////////////////////////////
      for (j = 0; j<40; j=j+1) begin
      `ifdef __REPETITION__
         i_rep_layer2 	= 1'b1;
         i_rep_layer3 	= 1'b0;
	 i_rep_layer4	= 1'b0;

         i_skip_com 	= 1'b1;
         i_not_skip_com = 1'b0;

         i_done 	= 1'b1; 
         count_ts 	= j % rep_step;
 
         if (count_ts != 0) begin 
            i_rep_ts = 1'b1;
         end
         else begin
            i_core_ts = 1'b1; 
         end 
      `endif
         i_start = 1'b1;
         //wo_spike_file = {"wo_spike_L0_", INPUT_SPIKE_FILE[15:5], ".log"}; 

         //out_spike_file = $fopen (wo_spike_file, "a");

         if (i_start == 1'b1) begin
           timestep = timestep +1;
           $display("output spikes of SNPC0 at timestep %d", timestep); 
           $display("%64h", wo_spike_L0);
           $display("output spikes of SNPC1 at timestep %d", timestep); 
           $display("%64h", wo_spike_L1); 
           $display("output spikes of SNPC2 at timestep %d", timestep); 
           $display("%10b", wo_spike_L2);  
           //$fwrite(out_spike_file, "%h\n", wo_spike_L0);
           //$fclose(out_spike_file);
         end
      
           
	 //i_start = 1'b1;
	 @(posedge clk);
	 // #(`CLK_PERIOD/4);	 
	 i_start = 1'b0;
         if (i_core_ts) begin
	   for (v_i = 0; v_i<98; v_i=v_i+1) begin
	     for (v_j = 0; v_j<8; v_j=v_j+1) begin
               i_spk_arry[v_i*8+v_j] = spike_mem[v_i][7-v_j];
	     end
	   end
         end 
	 $display("%196h", i_spk_arry);
         // i_spk_arry = spike_mem[j];
	 i_svalid <= 1'b1;
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 	 
	 i_svalid <= 1'b0;
	 // i_spk_arry = 0;
	 for (i=0; i <1600; i=i+1)
	   @(posedge clk);  
	 i_core_ts = 1'b0; 
         i_rep_ts = 1'b0;
    	 //i_svalid <= 1'b1;
    	 
      end
      
      v_j = -1;
      max_scnt = 0;
      for (v_i = 0; v_i<10; v_i=v_i+1) begin
	 if (output_spike_cnt[v_i] > max_scnt) begin
            max_scnt = output_spike_cnt[v_i];
            v_j = v_i;
	 end
      end
      output_fname = OUTPUT_CLASSIF_FILE;
      output_file = $fopen(output_fname, "a"); // append mode
      $display("Output spikes after all timestep of %s: %p", INPUT_SPIKE_FILE, output_spike_cnt);
      $display("Output is number %d with %d spikes", v_j, max_scnt);
      $fwrite(output_file,"%s, %1d, %p\n", INPUT_SPIKE_FILE, v_j, output_spike_cnt);
      $fclose(output_file);  

      //
      // >> 
      /////////////////////////////////////////////////////////
      if (_QUIT == 1)
	$finish;
      else 
	$stop;
   end


   always @(posedge clk or negedge rst_n) begin
      if (rst_n == 0) begin
	 for (k = 0; k<10; k=k+1) begin
	    output_spike_cnt[k] = 0;
	 end
      end else begin

	 for (k = 0; k<10; k=k+1) begin
	    if (wo_svalid_L2 == 1'b1 && wo_spike_L2[k] == 1'b1) 
              output_spike_cnt[k] = output_spike_cnt[k]+1;
	 end
      end
   end

   ////////////////////////////////////////////////////////////////////////////////
   // Wire assignements 
   ////////////////////////////////////////////////////////////////////////////////
`ifdef __NO_LEARNING__
   initial begin
      while (1) begin
	 @(posedge clk);
	 #(`CLK_PERIOD/2);	 
	 data_1 = (cs_1 && we_1) ? data_1_reg:8'bZ;
	 data_2 = (cs_2 && we_2) ? data_2_reg:8'bZ;
         data_3 = (cs_3 && we_3) ? data_3_reg:8'bZ; 	 
      end
   end
`endif
   initial begin
      clk = 1'b0;
      forever #(`CLK_PERIOD/2) clk = ~clk;
   end

   initial begin
      rst_n = 1'b0;
      #(`CLK_PERIOD*10) rst_n = 1'b1;
   end

   ////////////////////////////////////////////////////////////////////////////////
   // Module
   ////////////////////////////////////////////////////////////////////////////////
   SNPC_top
     `ifdef __NON_SYN__
     #(
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH (SPK_ARRAY_WIDTH),
       .NEURAL_ARRAY_WIDTH (NEURAL_ARRAY_WIDTH),
       .OUTPUT_ARRAY_WIDTH (OUTPUT_ARRAY_WIDTH),
       .WEIGHT_ADDR_WIDTH (WEIGHT_ADDR_WIDTH),
       .WEIGHT_WIDTH (WEIGHT_WIDTH)
       )
     `endif
   DUT
     (
      .clk (clk),
      .rst_n (rst_n),
      .i_start (i_start),
      .i_spk_arry (i_spk_arry),
      .i_svalid (i_svalid),

   `ifdef __REPETITION__
      .i_core_ts (i_core_ts),
      .i_rep_ts (i_rep_ts),
      .i_rep_layer2 (i_rep_layer2), 
      .i_rep_layer3 (i_rep_layer3),
      .i_rep_layer4 (i_rep_layer4),

      .i_skip_com (i_skip_com),
      .i_not_skip_com (i_not_skip_com),
      .i_done (i_done), 
   `endif

      .address_1 (address_1),
      .data_1 (data_1),
      .cs_1 (cs_1),
      .we_1 (we_1),
      .oe_1 (oe_1),
      
      .address_2 (address_2),
      .data_2 (data_2),
      .cs_2 (cs_2),
      .we_2 (we_2),
      .oe_2 (oe_2),
      
      .address_3 (address_3), 
      .data_3 (data_3), 
      .cs_3 (cs_3),
      .we_3 (we_3), 
      .oe_3 (oe_3), 
      
      //.o_spike_SNPC0 (wo_spike_L0), 
      //.o_spike_SNPC1 (wo_spike_L1), 
      //.o_svalid_SNPC0 (wo_svalid_L0),
      //.o_svalid_SNPC1 (wo_svalid_L1), 

      .o_spike (wo_spike_L2),
      .o_svalid (wo_svalid_L2)
      );

endmodule
