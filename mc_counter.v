`timescale 1ns / 1ps


module mc_counter(
input clk,
input rst,
output out,
output [2:0] mc_state
    );
    

    wire Q3, Q4, Q5;
    wire Cout0, Cout2, Cout3;
    wire D0,D1,D2;
    wire comp, temp_rst, comp2;
    
    assign comp = Q5 & Q4 & (~Q3);
    assign comp2 = Q5 & ~Q4 & Q3;
    assign temp_rst = rst | comp;
    
    assign mc_state = {Q5,Q4,Q3}; 

  full_adder FA0(
      .A(Q3),
      .B(1'b1),
      .Cin(1'b0),
      .Y(D0),
      .Cout(Cout0)  
  );
  
  full_adder FA1(
      .A(Q4),
      .B(1'b0),
      .Cin(Cout0),
      .Y(D1), 
      .Cout(Cout1)
  );
  
  full_adder FA2(
      .A(Q5),
      .B(1'b0),
      .Cin(Cout1),
      .Y(D2), 
      .Cout(Cout2)
  );
    
   dff FFD0(
    .clk(clk),
    .rst(temp_rst),
    .D(D0),
    .Q(Q3)
    
  );
  
  dff FFD1(
       .clk(clk),
        .rst(temp_rst),
        .D(D1),
        .Q(Q4)
  );

   dff FFD2(
      .clk(clk),
        .rst(temp_rst),
        .D(D2),
        .Q(Q5)
     ); 
     
     
  dff outp(
      .clk(clk),
      .rst(rst),
      .D(comp2 ^ out),
        .Q(out)
     ); 
   
endmodule
