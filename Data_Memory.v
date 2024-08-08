module Data_Memory (A , WD , WE , CLK ,
                    RD );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] A;
input wire [31 : 0] WD;
input wire WE , CLK;

/********************** output declaration **********************/
output wire[32-1 : 0] RD;

/********************** Internal Wires **********************/
wire [9:2] A9_2 = A[7:0];

/********************** MEMORY SIMULATION **********************/
reg [31:0] DATA [255:0];


/**********************   descriptin   **********************/
assign RD = DATA[A9_2];

always @ (posedge CLK )
begin
    if (WE == 1'b1) begin DATA[A9_2] = WD; end
    else            begin                 end
end

endmodule
