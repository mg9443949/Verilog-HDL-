module tff(clk,rst,t,q,qn);
  input clk,rst,t;
  output reg q;
  output qn;
  always @ (posedge clk or posedge rst) begin
    if(rst) begin
      q<=0;
    end
    else  begin
      if (t) begin
        q<=~q;
      end
      else if (!t) begin
        q<=q;
      end
    end
  end
  assign qn=~q;
endmodule
