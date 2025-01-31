module jkff(clk,rst,j,k,q,qn);
  input clk,rst,j,k;
  output reg q,qn;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      q<=0;
    end
    else begin
      if(j==0 && k==0) begin
        q<=q;
      end
      else if(j==0 && k==1) begin
        q<=0;
      end
      else if (j==1 && k==0) begin
        q<=1;
      end
      else if(j==1 && k==1) begin
        q<= ~q;
      end
    end
    assign qn=~q;
  end
endmodule
