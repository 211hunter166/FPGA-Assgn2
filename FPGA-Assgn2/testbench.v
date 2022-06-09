`include "module3.v"
`timescale 1ns/1ns
module tb;

reg [31:0] num;
reg [4:0] i1,i2;
reg clk;
reg reset;

mod3 uut (.num(num)  ,  .index1(i1)  ,  .index2(i2), .clk(clk), .reset(reset));

always begin
    #1;
    clk <= ~clk;
end

initial begin
    clk <= 1;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    num <=38;  i1 <=12;   i2 <=18;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    reset <= ~reset;
    num <=84;  i1 <=4;   i2 <=4;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    reset <= ~reset;
    num <=76;  i1 <=16;   i2 <=16;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    reset <= ~reset;
    num <=93;  i1 <=17;   i2 <=13;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    reset <= ~reset;
    num <=8;  i1 <=12;   i2 <=4;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    $finish;
end
endmodule