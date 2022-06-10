`include "topmodule.v"
`timescale 1ns/1ns
module tb;

reg [31:0] num;

top uut (.num(num));

initial begin
    $dumpfile("dump_new.vcd");
    $dumpvars(0,tb);
    
    num <=38;
    #100;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    #100;
    /*
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
    */
    $finish;
end
endmodule