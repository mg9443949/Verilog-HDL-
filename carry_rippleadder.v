//behavioural modelling
module carry_rippe_adder(a,b,cin,sum,cout);
  input [3:0] a,b;
  input cin;
  assign cin=1'b0;
  output [3:0] sum;
  output cout;
  wire c[3:0];
  full_adder f0 (a[0],b[0],cin,sum[0],c[0]);
  full_adder f1 (a[1],b[1],c[0],sum[1],c[1]);
  full_adder f2 (a[2],b[2],c[1],sum[2],c[2]);
  full_adder f3 (a[3],b[3],c[2],sum[3],c[3]);
  assign cout = c[3];
endmodule

  module full_adder(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    assign sum = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
  endmodule
    
