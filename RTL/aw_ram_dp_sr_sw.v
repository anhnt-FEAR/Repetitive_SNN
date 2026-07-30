//-----------------------------------------------------
// Design Name : ram_dp_sr_sw
// File Name   : ram_dp_sr_sw.v
// Function    : Synchronous read write RAM
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module ram_dp_sr_sw
  (
   clk       , // Clock Input
   address_0 , // address_0 Input
   data_0    , // data_0 bi-directional
   cs_0      , // Chip Select
   we_0      , // Write Enable/Read Enable
   oe_0      , // Output Enable
   address_1 , // address_1 Input
   data_1    , // data_1 bi-directional
   cs_1      , // Chip Select
   we_1      , // Write Enable/Read Enable
   oe_1        // Output Enable
   ); 

   parameter LAYER_INDX    = 0;
   parameter NEURON_INDX   = 0;
   parameter data_0_WIDTH  = 8 ;
   parameter ADDR_WIDTH    = 8 ;
   parameter RAM_DEPTH     = 1 << ADDR_WIDTH;
   parameter INIT_RAM_FILE = "../DATA/input/RAM/TEST_X/SPIKE_IMG-123.bin";

   //--------------Input Ports----------------------- 
   input clk ;
   input [ADDR_WIDTH-1:0] address_0 ;
   input 		  cs_0 ;
   input 		  we_0 ;
   input 		  oe_0 ; 
   input [ADDR_WIDTH-1:0] address_1 ;
   input 		  cs_1 ;
   input 		  we_1 ;
   input 		  oe_1 ; 

   //--------------Inout Ports----------------------- 
   inout [data_0_WIDTH-1:0] data_0 ; 
   inout [data_0_WIDTH-1:0] data_1 ;

   //--------------Internal variables---------------- 
   reg [data_0_WIDTH-1:0]   data_0_out ; 
   reg [data_0_WIDTH-1:0]   data_1_out ;
   reg [data_0_WIDTH-1:0]   mem [0:RAM_DEPTH-1];

   // sysnopsy synthesis_off
   integer 		    file, i;
   // reg [80*8:1] 	    file_name;

   // integer 		    t0, t1, t2, t3; 
   initial begin 
      // input_file_name  = INIT_RAM_FILE;
      // t3 = (NEURON_INDX/32'd1000) % 32'd10; 
      // t2 = (NEURON_INDX/32'd100) % 32'd10; 
      // t1 = (NEURON_INDX/32'd10) % 32'd10; 
      // t0 = NEURON_INDX % 32'd10; 
      // input_file_name [40:33] = "0" + t0; 
      // input_file_name [48:41] = "0" + t1; 
      // input_file_name [56:49] = "0" + t2; 
      // input_file_name [64:57] = "0" + t3; 

      // t3 = (LAYER_INDX/32'd1000) % 32'd10; 
      // t2 = (LAYER_INDX/32'd100) % 32'd10; 
      // t1 = (LAYER_INDX/32'd10) % 32'd10; 
      // t0 = LAYER_INDX % 32'd10; 
      // input_file_name [96:89] = "0" + t0; 
      // input_file_name [104:97] = "0" + t1; 
      // input_file_name [112:105] = "0" + t2; 
      // input_file_name [120:113] = "0" + t3; 
      // open input_file_name , etc. 
      #(1);
      // $display("input = %s", input_file_name );
   end 


   initial
     begin
	file = $fopen(INIT_RAM_FILE, "rb");
	// $display("%s\n", INIT_RAM_FILE);	
	i = $fread(mem, file);
	// i = $fcloser(file);
     end

   // sysnopsy synthesis_on

   //--------------Code Starts Here------------------ 
   // Memory Write Block 
   // Write Operation : When we_0 = 1, cs_0 = 1
   always @ (posedge clk)
     begin : MEM_WRITE
	if ( cs_0 && we_0 ) begin
	   mem[address_0] <= data_0;
	end else if (cs_1 && we_1) begin 
	   mem[address_1] <= data_1;
	end
     end


   // Tri-State Buffer control 
   // output : When we_0 = 0, oe_0 = 1, cs_0 = 1
   assign data_0 = (cs_0 && oe_0 && !we_0) ? data_0_out : 8'bz; 

   // Memory Read Block 
   // Read Operation : When we_0 = 0, oe_0 = 1, cs_0 = 1
   always @ (posedge clk)
     begin : MEM_READ_0
	if (cs_0 && !we_0 && oe_0) begin
	   data_0_out <= mem[address_0]; 
	end else begin
	   data_0_out <= 0; 
	end  
     end 

   //Second Port of RAM
   // Tri-State Buffer control 
   // output : When we_0 = 0, oe_0 = 1, cs_0 = 1
   assign data_1 = (cs_1 && oe_1 && !we_1) ? data_1_out : 8'bz; 
   // Memory Read Block 1 
   // Read Operation : When we_1 = 0, oe_1 = 1, cs_1 = 1
   always @ (posedge clk)
     begin : MEM_READ_1
	if (cs_1 && !we_1 && oe_1) begin
	   data_1_out <= mem[address_1]; 
	end else begin
	   data_1_out <= 0;
	end
     end

endmodule // End of Module ram_dp_sr_sw
