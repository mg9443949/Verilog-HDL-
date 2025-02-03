module srff(clk,rst,s,r,q,qn);
  input clk,rst,s,r;
  output reg q;
  output qn;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      q<=0;
    end
    else begin
    if({s,r}== 2'b00) begin
      q<=q;
    end
    else if({s,r}==2'b01) begin
      q=0;
    end
    else if({s,r}==2'b10) begin
      q<=1;
    end
    else if({s,r}==2'b11) begin
      q<=1'bx;
    end
  end
  end
  assign qn=~q;
endmodule
  
