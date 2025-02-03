module srff(clk,rst,s,r,q,qn);
  input clk,rst,s,r;
  output reg q;
  output qn;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q<=0;
    end
    else begin
      case ({s,r})
        2'b00 : q<=q;
        2'b01 : q<=0;
        2'b10 : q<=1;
        2'b11 : q<=1'bx;
      endcase
    end
  end
  assign qn = ~q;
endmodule
  
