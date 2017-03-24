/*
Authors: Bryan Pesquera
Description: Half adder design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 9, 2017.
*/

module halfAdder(a, b, sum, cout);
  input a, b;
  output sum, cout;
  assign sum = a^b;
  assign cout = a&b;
endmodule
