/*
Authors: Bryan Pesquera
Description: Half adder design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 9, 2017.
*/

module decoder(x, y, z, d);
  input x, y, z;
  output[7:0] d;
  
  //all combinations for 3 inputs to 8 outputs
  assign d[0] = (~x & ~y & ~z);
  assign d[1] = (~x & ~y & z);
  assign d[2] = (~x & y & ~z);
  assign d[3] = (~x & y &z);
  assign d[4] = (x & ~y &~z);
  assign d[5] = (x & ~y & z);
  assign d[6] = (x & y & ~z);
  assign d[7] = (x & y & z);
  
endmodule