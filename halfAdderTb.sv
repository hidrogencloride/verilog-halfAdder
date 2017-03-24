/*
Authors: Bryan Pesquera
Description: Half adder test bench simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 2, 2017.
*/

module halfAdderTestbench;
  wire sum, cout;
  reg a, b, c, d;
  
  halfAdder inst1(.a(a),.b(b),.sum(sum),.cout(cout));
  
  initial
  begin  
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
  
    a = 1'b0; b = 1'b0; //a = 0, b = 0
#10 a = 1'b0; b = 1'b1;	//a = 0, b = 1
#10 a = 1'b1; b = 1'b0;	//a = 1, b = 0
#10 a = 1'b1; b = 1'b1;	//a = 1, b = 1
  end
  
  initial #50 $finish;
endmodule
