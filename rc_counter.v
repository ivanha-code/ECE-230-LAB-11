`timescale 1ns / 1ps


module rc_counter
(
    input clk, 
    input rst,
    output [2:0] rc_state
);
    
    
    wire Q0;
    wire Q1;
    wire Q2;

  tff FF0(
      .clk(clk),
      .rst(rst),
      .T(1'b1),
      .Q(Q0)
  );
  
  tff FF1(
      .clk(Q0),
      .rst(rst),
      .T(1'b1),
      .Q(Q1)
  );
  
  tff FF2(
      .clk(Q1),
      .rst(rst),
      .T(1'b1),
      .Q(Q2)
  );  
   
  assign rc_state = {Q2,Q1,Q0};
  
endmodule
