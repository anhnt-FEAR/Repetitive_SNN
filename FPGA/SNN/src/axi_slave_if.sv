`define log2(VALUE) ((VALUE) < ( 1 ) ? 0 : (VALUE) < ( 2 ) ? 1 : (VALUE) < ( 4) ? 2 : (VALUE) < ( 8 ) ? 3 : (VALUE) < ( 16 )  ? 4 : (VALUE) < ( 32 )  ? 5 : (VALUE) < ( 64 )  ? 6 : (VALUE) < ( 128 ) ? 7 : (VALUE) < ( 256 ) ? 8 : (VALUE) < ( 512 ) ? 9 : (VALUE) < ( 1024 ) ? 10 : (VALUE) < ( 2048 ) ? 11 : (VALUE) < ( 4096 ) ? 12 : (VALUE) < ( 8192 ) ? 13 : (VALUE) < ( 16384 ) ? 14 : (VALUE) < ( 32768 ) ? 15 : (VALUE) < ( 65536 ) ? 16 : (VALUE) < ( 131072 ) ? 17 : (VALUE) < ( 262144 ) ? 18 : (VALUE) < ( 524288 ) ? 19 : (VALUE) < ( 1048576 ) ? 20 : (VALUE) < ( 1048576 * 2 ) ? 21 : (VALUE) < ( 1048576 * 4 ) ? 22 : (VALUE) < ( 1048576 * 8 ) ? 23 : (VALUE) < ( 1048576 * 16 ) ? 24 : 25) 

`define OKAY   2'b00
`define EXOKAY 2'b01
`define SLVERR 2'b10
`define DECERR 2'b11

`define REG_STATUS  4'h0
`define REG_CONFIG  4'h1

module axi_slave_if 
  #(
    parameter AXI4_ADDR_WIDTH = 32,
    parameter AXI4_DATA_WIDTH = 32,
    parameter AXI4_USER_WIDTH = 4,
    parameter AXI4_ID_WIDTH   = 16
    ) (
       input logic			   s_axi_aclk,
       input logic			   s_axi_aresetn,

       output logic			   o_snn_config,
       input logic [AXI4_DATA_WIDTH-1:0]   i_snn_status,
       input logic			   i_snn_rvalid,
       
       input logic			   s_axi_awvalid,
       input logic [AXI4_ID_WIDTH-1:0]	   s_axi_awid,
       input logic [7:0]		   s_axi_awlen,
       input logic [AXI4_ADDR_WIDTH-1:0]   s_axi_awaddr,
       input logic [AXI4_USER_WIDTH-1:0]   s_axi_awuser,
       output logic			   s_axi_awready,

       input logic			   s_axi_wvalid,
       input logic [AXI4_DATA_WIDTH-1:0]   s_axi_wdata,
       input logic [AXI4_DATA_WIDTH/8-1:0] s_axi_wstrb,
       input logic			   s_axi_wlast,
       input logic [AXI4_USER_WIDTH-1:0]   s_axi_wuser,
       output logic			   s_axi_wready,

       output logic			   s_axi_bvalid,
       output logic [AXI4_ID_WIDTH-1:0]	   s_axi_bid,
       output logic [1:0]		   s_axi_bresp,
       output logic [AXI4_USER_WIDTH-1:0]  s_axi_buser,
       input logic			   s_axi_bready,

       input logic			   s_axi_arvalid,
       input logic [AXI4_ID_WIDTH-1:0]	   s_axi_arid,
       input logic [7:0]		   s_axi_arlen,
       input logic [AXI4_ADDR_WIDTH-1:0]   s_axi_araddr,
       input logic [AXI4_USER_WIDTH-1:0]   s_axi_aruser,
       output logic			   s_axi_arready,

       output logic			   s_axi_rvalid,
       output logic [AXI4_ID_WIDTH-1:0]	   s_axi_rid,
       output logic [AXI4_DATA_WIDTH-1:0]  s_axi_rdata,
       output logic [1:0]		   s_axi_rresp,
       output logic			   s_axi_rlast,
       output logic [AXI4_USER_WIDTH-1:0]  s_axi_ruser,
       input logic			   s_axi_rready,

       /* May be no need signal */
       input logic [2:0]		   s_axi_awsize,
       input logic [1:0]		   s_axi_awburst,

       input logic			   s_axi_awlock,
       input logic [3:0]		   s_axi_awcache,
       input logic [2:0]		   s_axi_awprot,
       input logic [3:0]		   s_axi_awregion,
       input logic [3:0]		   s_axi_awqos,

       input logic [2:0]		   s_axi_arsize,
       input logic [1:0]		   s_axi_arburst,

       input logic			   s_axi_arlock,
       input logic [3:0]		   s_axi_arcache,
       input logic [2:0]		   s_axi_arprot,
       input logic [3:0]		   s_axi_arregion,
       input logic [3:0]		   s_axi_arqos

       );

   //localparam ADDR_CMP = `log2(AXI4_DATA_WIDTH/8)-1;
   //Address Offset: OFFSET IS 32bit--> 2bit; 64bit--> 3bit; 128bit--> 4bit and so on
   localparam OFFSET_BIT  =  ( `log2(AXI4_DATA_WIDTH-1) - 3 );
   localparam ADDR_CMP = 0;

   logic [5:0] 				   wr_addr;
   logic [5:0] 				   rd_addr;

   logic [5:0] 				   read_address;
   logic 				   sample_ar;
   logic [5:0] 				   araddr_q;
   logic [7:0] 				   arlen_q;
   logic 				   decr_ARLEN;
   logic [7:0] 				   countburstCS;
   logic [7:0] 				   countburstNS;
   logic [AXI4_ID_WIDTH-1:0] 		   arid_q;
   logic [AXI4_USER_WIDTH-1:0] 		   aruser_q;

   logic 				   write_req;
   logic [5:0] 				   write_address;
   logic 				   sample_aw;
   logic [5:0] 				   awaddr_q;
   logic [7:0] 				   awlen_q;
   logic 				   decr_AWLEN;
   logic [7:0] 				   countburst_AW_CS;
   logic [7:0] 				   countburst_AW_NS;
   logic [AXI4_ID_WIDTH-1:0] 		   awid_q;
   logic [AXI4_USER_WIDTH-1:0] 		   awuser_q;

   enum logic [2:0] { IDLE, SINGLE, BURST, WAIT_WDATA_BURST,
		      WAIT_WDATA_SINGLE, BURST_RESP } 
	ar_cs, ar_ns, aw_cs, aw_ns;
   // enum logic [2:0] {SNN_IDLE, SNN_SRC_DMA, SNN_LOAD_DATA, 
   // 		     SNN_DES_DMA, SNN_WAIT, SNN_FINISH} 
   // 	snn_ctrl_ns, snn_ctrl_cs;

   /* Registers */
   logic [AXI4_DATA_WIDTH - 1 : 0]         snn_status;
   logic [AXI4_DATA_WIDTH - 1 : 0] 	   snn_config;
      
   /* READ/WRITE to REGS -----------------------------------------------*/

   assign wr_addr = s_axi_awaddr[OFFSET_BIT + 4 : OFFSET_BIT] ;
   assign rd_addr = s_axi_araddr[OFFSET_BIT + 4 : OFFSET_BIT];

   assign o_snn_config = snn_config[0];
   
   /* ------------------------------------------------------------------*/
   /* READ FSM */
   
   always_ff @(posedge s_axi_aclk, negedge s_axi_aresetn)
     begin
        if(s_axi_aresetn == 1'b0) begin
           ar_cs        <= IDLE;
           araddr_q     <= '0;
           countburstCS <= '0;
           arid_q       <= '0;
           aruser_q     <= '0;
	   arlen_q      <= '0;
        end
        else begin
           ar_cs <= ar_ns;
           countburstCS <= countburstNS;

           if(sample_ar)
             arlen_q  <=  s_axi_arlen;
           else if(decr_ARLEN)
             arlen_q  <=  arlen_q -1'b1;

           if(sample_ar) begin
              arid_q   <=  s_axi_arid;
              araddr_q <=  read_address;
              aruser_q <=  s_axi_aruser;
           end
        end
     end // always_ff @ (posedge s_axi_aclk, negedge s_axi_aresetn)

   always_comb
     begin
        /* Init stage */
        s_axi_arready = 1'b0;
        read_address  = '0;
        sample_ar     = 1'b0;
        decr_ARLEN    = 1'b0;
        countburstNS  = countburstCS;
        s_axi_rvalid  = 1'b0;
        s_axi_rresp   = `OKAY;
        s_axi_ruser   = '0;
        s_axi_rlast   = 1'b0;
        s_axi_rid     = '0;
        ar_ns         = ar_cs;

        case(ar_cs)
          IDLE: /* Ready and choose next mode  */
            begin
               s_axi_arready        = 1'b1;

               if(s_axi_arvalid) begin
                  sample_ar      = 1'b1;
                  read_address   = rd_addr;

                  if(s_axi_arlen == 0) begin /* SINGLE */
                     ar_ns        = SINGLE;
                     countburstNS = '0;
                  end
                  else begin
                     ar_ns        = BURST;
                     countburstNS = countburstCS + 1'b1;
                  end
               end
               else begin /* if not valid, return IDLE */
                  ar_ns        = IDLE;
                  countburstNS = '0;
               end
            end //~ IDLE

          SINGLE:
            begin
               s_axi_rresp  = `OKAY;
               s_axi_rid    = arid_q;
               s_axi_ruser  = aruser_q;
               s_axi_rlast  = 1'b1;
               read_address = araddr_q;
               s_axi_rvalid = 1'b1;
               s_axi_arready = 1'b1;

               if( (s_axi_rready)) begin

                  if(s_axi_arvalid) begin
                     sample_ar      = 1'b1;
                     read_address   =  rd_addr;

                     if(s_axi_arlen == 0) begin
                        ar_ns          = SINGLE;
                        countburstNS   = '0;
                     end
                     else begin
                        ar_ns          = BURST;
                        countburstNS   = countburstCS + 1'b1;
                     end
                  end
                  else begin
                     ar_ns        = IDLE;
                     countburstNS = '0;
                  end
               end
               else begin // NOt ready: stay here untile RR RADY is OK
                  ar_ns          = SINGLE;
                  read_address   =  araddr_q;
                  countburstNS   = '0;
               end
            end //~ SINGLE

          BURST:
            begin
               s_axi_rresp  = `OKAY;
               s_axi_rid    = arid_q;
               s_axi_ruser  = aruser_q;
               read_address = araddr_q;
               s_axi_rvalid = 1'b1;

               if((s_axi_rready)) begin
                  if(arlen_q > 0) begin
                     ar_ns         = BURST;
                     decr_ARLEN    = 1'b1;
                     read_address  = araddr_q + countburstCS ;
                     s_axi_rlast   = 1'b0;
                     s_axi_arready = 1'b0;
                  end
                  else begin //BURST_LAST
                     s_axi_rlast         = 1'b1;
                     s_axi_arready       = 1'b1;

                     if(s_axi_arvalid) begin
                        sample_ar      = 1'b1;

                        read_address   = rd_addr;

                        if(s_axi_arlen == 0) begin
                           ar_ns        = SINGLE;
                           countburstNS = 0;
                        end
                        else begin
                           ar_ns        = BURST;
                           countburstNS = 1;
                        end
                     end
                     else begin
                        ar_ns        = IDLE;
                        countburstNS = 0;
                     end
                  end
               end
               else begin
                  ar_ns         = BURST;
                  decr_ARLEN    = 1'b0;
                  read_address  = araddr_q + countburstCS;
                  s_axi_arready = 1'b0;
               end
            end //~ BURST
          default : begin
          end //~default
        endcase
     end

   /* Write FSM */
   always_ff @(posedge s_axi_aclk, negedge s_axi_aresetn)
     begin
        if(s_axi_aresetn == 1'b0) begin
           aw_cs            <= IDLE;
           awaddr_q         <= '0;
           countburst_AW_CS <= '0;
           awid_q           <= '0;
           awuser_q         <= '0;
	   awlen_q          <= '0;
        end
        else begin
           aw_cs            <= aw_ns;
           countburst_AW_CS <= countburst_AW_NS;

           if(sample_aw) begin
              awlen_q  <=  s_axi_awlen;
              awaddr_q <=  wr_addr;
              awid_q   <=  s_axi_awid;
              awuser_q <=  s_axi_awuser;
           end
           else if(decr_AWLEN) begin
              awlen_q  <=  awlen_q -1'b1;
           end
        end
     end

   always_comb
     begin
        s_axi_awready    = 1'b0;
        s_axi_wready     = 1'b0;
        write_address    = '0;
        write_req        = 1'b0;
        sample_aw        = 1'b0;
        decr_AWLEN       = 1'b0;
        countburst_AW_NS = countburst_AW_CS;
        s_axi_bid        = '0;
        s_axi_bresp      = `OKAY;
        s_axi_buser      = '0;
        s_axi_bvalid     = 1'b0;
        aw_ns            = aw_cs;

        case(aw_cs)
          IDLE:
            begin
               s_axi_awready = 1'b1;

               if(s_axi_awvalid) begin
                  sample_aw = 1'b1;

                  if(s_axi_wvalid) begin
                     s_axi_wready  = 1'b1;
                     write_req     = 1'b1;
                     write_address = wr_addr;

                     if(s_axi_awlen == 0) begin
                        aw_ns            = SINGLE;
                        countburst_AW_NS = 0;
                     end
                     else begin
                        aw_ns            = BURST;
                        countburst_AW_NS = 1;
                     end
                  end
                  else begin // GOT ADDRESS WRITE, not DATA
                     s_axi_wready    = 1'b1;
                     write_req       = 1'b0;
                     write_address   = '0;

                     if(s_axi_awlen == 0) begin
                        aw_ns             =  WAIT_WDATA_SINGLE;
                        countburst_AW_NS  = 0;
                     end
                     else begin
                        aw_ns            = WAIT_WDATA_BURST;
                        countburst_AW_NS = 0;
                     end
                  end
               end
               else begin
                  s_axi_wready     = 1'b1;
                  aw_ns            = IDLE;
                  countburst_AW_NS = '0;
               end
            end //~ IDLE


          WAIT_WDATA_BURST :
            begin
               s_axi_awready        = 1'b0;

               if(s_axi_wvalid) begin
                  s_axi_wready     = 1'b1;
                  write_req        = 1'b1;
                  write_address    = awaddr_q;
                  aw_ns            = BURST;
                  countburst_AW_NS = 1;
                  decr_AWLEN       = 1'b1;
               end
               else begin
                  s_axi_wready     = 1'b1;
                  write_req        = 1'b0;
                  aw_ns            = WAIT_WDATA_BURST; // wait for data
                  countburst_AW_NS = '0;
               end
            end //~WAIT_WDATA_BURST

          WAIT_WDATA_SINGLE :
            begin
               s_axi_awready        = 1'b0;
               countburst_AW_NS = '0;

               if(s_axi_wvalid)
                 begin
                    s_axi_wready  = 1'b1;
                    write_req     = 1'b1;
                    write_address = awaddr_q;
                    aw_ns         = SINGLE;
                 end
               else
                 begin
                    s_axi_wready = 1'b1;
                    write_req    = 1'b0;
                    aw_ns        = WAIT_WDATA_SINGLE; // wait for data
                 end
            end

          SINGLE: begin
             s_axi_bid    = awid_q;
             s_axi_bresp  = `OKAY;
             s_axi_buser  = awuser_q;
             s_axi_bvalid = 1'b1;

             // we have a valid response here, waiting to be delivered
             if(s_axi_bready) begin
                s_axi_awready = 1'b1;

                if(s_axi_awvalid) begin
                   sample_aw       =   1'b1;
                   write_req       =   1'b1;
                   write_address   =   wr_addr;

                   if(s_axi_awlen == 0) begin
                      aw_ns            = SINGLE;
                      countburst_AW_NS = '0;
                   end
                   else begin
                      aw_ns            = BURST;
                      countburst_AW_NS = countburst_AW_CS + 1'b1;
                   end
                end
                else begin
                   aw_ns            = IDLE;
                   countburst_AW_NS = '0;
                end
             end
             else begin // NOt ready: stay here untile RR RADY is OK
                aw_ns            = SINGLE;
                countburst_AW_NS = '0;
                s_axi_awready    = 1'b0;
             end
          end //~ SINGLE

          BURST:
            begin
               countburst_AW_NS = countburst_AW_CS;
               s_axi_awready    = 1'b0;
               //write_address  = AWADDR_Q + CountBurst_AW_CS ;
               write_address    = awaddr_q; //TODO check burst type

               if(s_axi_wvalid) begin
                  s_axi_wready     = 1'b1;
                  write_req        = 1'b1; // read the previous address
                  decr_AWLEN       = 1'b1;
                  countburst_AW_NS = countburst_AW_CS + 1'b1;
               end
               else begin
                  s_axi_wready = 1'b1;
                  write_req    = 1'b0; // read the previous address
                  decr_AWLEN   = 1'b0;
               end

               if(awlen_q > 0) begin
                  aw_ns          = BURST;
                  //    AWREADY        = 1'b0;
               end
               else begin
                  aw_ns          = BURST_RESP;
                  //    AWREADY        = 1'b1;
               end
            end //~ BURST

          BURST_RESP :
            begin
               s_axi_bvalid  = 1'b1;
               s_axi_bid     = awid_q;
               s_axi_bresp   = `OKAY;
               s_axi_buser   = awuser_q;

               if(s_axi_bready) begin
                  s_axi_awready = 1'b1;
                  // Check if there are any pending request
                  if(s_axi_awvalid) begin
                     sample_aw = 1'b1;

                     if(s_axi_wvalid) begin
                        s_axi_wready  = 1'b1;
                        write_req     = 1'b1;
                        write_address = wr_addr;

                        if(s_axi_awlen == 0) begin
                           aw_ns            = SINGLE;
                           countburst_AW_NS = 0;
                        end
                        else begin
                           aw_ns            = BURST;
                           countburst_AW_NS = 1;
                        end
                     end
                     else begin // GOT ADDRESS WRITE, not DATA
                        s_axi_wready  = 1'b1;
                        write_req     = 1'b0;
                        write_address = '0;

                        if(s_axi_awlen == 0) begin
                           aw_ns             = WAIT_WDATA_SINGLE;
                           countburst_AW_NS  = 0;
                        end
                        else begin
                           aw_ns            = WAIT_WDATA_BURST;
                           countburst_AW_NS = 0;
                        end
                     end
                  end
                  else begin
                     s_axi_wready     = 1'b1;
                     aw_ns            = IDLE;
                     countburst_AW_NS = '0;
                  end
               end
               else  begin//~BREADY
                  aw_ns         = BURST_RESP;
                  s_axi_awready = 1'b0;
                  s_axi_wready  = 1'b0;
               end
            end
        endcase
     end

   always_ff @( posedge s_axi_aclk or negedge s_axi_aresetn )
     begin
	if ( s_axi_aresetn == 1'b0 ) begin
	   snn_status <= '0;
	end
	else begin
	   if (i_snn_rvalid) begin
	      snn_status <= i_snn_status;
	   end
	end
     end
   
   /* Read from REG */
   always_comb
     begin
        s_axi_rdata = '0;
        case(read_address)
          `REG_STATUS     : s_axi_rdata = snn_status;
        endcase
     end // SLAVE_REG_READ_PROC

   /* Write to REG */
   always_ff @( posedge s_axi_aclk or negedge s_axi_aresetn )
     begin
        if ( s_axi_aresetn == 1'b0 ) begin
           snn_config  <= '0;
        end
        else if (write_req) begin
           case(write_address)
             `REG_CONFIG  : begin
		snn_config  <= s_axi_wdata;
	     end
           endcase
        end
	else begin
	   snn_config <= '0;
	end
     end // SLAVE_REG_WRITE_PROC
endmodule
