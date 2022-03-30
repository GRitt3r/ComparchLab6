 `timescale 1ns / 1ps
 
 module ROMTB();
 
 reg [6:0]InstNum;
 wire [31:0]Dout;
 
 ROM a (Dout,InstNum);
 
 
 
 initial begin
	InstNum=0;
 
	repeat(18) #20 InstNum = InstNum+4;

   #50 $stop;
	end
	
	
	endmodule