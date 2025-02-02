module jkff(clk,rst,j,k,q,qn);
  input clk,rst,j,k;
  output reg q;
  output qn;
  always @ (posedge clk or posedge rst) begin
    if(rst)  begin
      q<=0;
    end
    else begin
      case ({j,k})
        2'b00 : q<=q;
        2'b01 : q<=0;
        2'b10 : q<=1;
        2'b11 : q<=~q;
      endcase
    end
  end
  assign qn=~q;
endmodule
