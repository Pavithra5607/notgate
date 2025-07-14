module tb_not_gate;
  reg a;
  wire y;
  
  not_gate_dataflow uut (.a(a), .y(y));
  
  initial begin
    $dumpfile("not_gate_dataflow.vcd");
    $dumpvars;
    $monitor("Time = %0t | a = %b | y = %b", $time, a, y);
    
    a = 0; #10;
    a = 1; #10;
    
    $finish;
  end
endmodule
    