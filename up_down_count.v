module up_down_count(rst,clk,up_count,down_count,count);
  input rst,clk,up_count,down_count;
  parameter N=4;
  output reg [N-1:0] count;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      count<=4'b0000;
    end
    else if(up_count) begin
      count<=count+1;
    end
    else if(down_count) begin
      count<=count-1;
    end
    end
endmodule



