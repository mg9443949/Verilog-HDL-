module dff(clk,rst,d,q,qn);
  input clk,rst,d;
  output q,qn;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      q<=0;
    end
    else begin
      q<=d;
    end
  end
endmodule
