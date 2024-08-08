module PC_Plus4 (PC , 
            PCPlus4 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] PC;

/********************** output declaration **********************/
output wire [31 : 0] PCPlus4;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

assign PCPlus4 = PC + 4;

endmodule
