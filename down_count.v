module down_count(clk,rst,count);
  input clk,rst;
  parameter N = 4;
  output reg[N-1:0] count;
  always @ (posedge clk or posedge rst) begin
    if (rst) begin
      count<=4'b1111;
    end
    else begin
      count <= count-1;
    end
  end
endmodule
  
