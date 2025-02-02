/*Design a clock generator using forever statement with 20 ns time period and duty cycle of 75%.
Initial value of clock is 0.*/
//which means the clock signal will be high for 15ns (time units)
module duty_cycle;
  reg clk;
  initial begin
    clk=0;
    forever begin
      clk=0;
      #5 clk=1;
      #15;
    end
  end
  initial begin
    #120;
    $finish;
  end
endmodule
  
