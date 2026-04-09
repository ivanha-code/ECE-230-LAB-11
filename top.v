module top(
    input btnU,
    input btnC,
    output [6:0] led
    );
  
  
    mc_counter cir1
    (
        .clk(btnC),
        .rst(btnU),
        .mc_state(led[5:3]),
        .out(led[6])
    );
  
    rc_counter cir2
    (
        .clk(btnC),
        .rst(btnU),
        .rc_state(led[2:0])
    );
  
endmodule
