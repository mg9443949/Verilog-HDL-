module mux2t01(s,i,y);
  input [1:0]i;
  output reg y;
  input s;
  always @ (*) begin
    if(!s) begin
      y=i[0];
    end
    else if(s) begin
      y=i[1];
    end
  end
endmodule
