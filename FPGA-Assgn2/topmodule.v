`include "module31.v"
`include "module32.v"
`include "module1.v"
`include "module2.v"
`timescale 1ns/1ns

module top(input [31:0] num);

    wire i;
    assign i = 1;
    wire [31:0] w1[19:0];
    wire w2[19:0];

    mod1 m1();
    module2 m2();

    mod31 m310 (.num(num), .num_o(w1[0]), .rin(i), .rout(w2[0]));
    mod32 m320 (.num(w1[0]), .num_o(w1[1]), .rin(w2[0]), .rout(w2[1]));
    
    mod31 m311 (.num(w1[1]), .num_o(w1[2]), .rin(w2[1]), .rout(w2[2]));
    mod32 m321 (.num(w1[2]), .num_o(w1[3]), .rin(w2[2]), .rout(w2[3]));

    mod31 m312 (.num(w1[3]), .num_o(w1[4]), .rin(w2[3]), .rout(w2[4]));
    mod32 m322 (.num(w1[4]), .num_o(w1[5]), .rin(w2[4]), .rout(w2[5]));
    
    mod31 m313 (.num(w1[5]), .num_o(w1[6]), .rin(w2[5]), .rout(w2[6]));
    mod32 m323 (.num(w1[6]), .num_o(w1[7]), .rin(w2[6]), .rout(w2[7]));

    mod31 m314 (.num(w1[7]), .num_o(w1[8]), .rin(w2[7]), .rout(w2[8]));
    mod32 m324 (.num(w1[8]), .num_o(w1[9]), .rin(w2[8]), .rout(w2[9]));
    
    mod31 m315 (.num(w1[9]), .num_o(w1[10]), .rin(w2[9]), .rout(w2[10]));
    mod32 m325 (.num(w1[10]), .num_o(w1[11]), .rin(w2[10]), .rout(w2[11]));
    
    mod31 m316 (.num(w1[11]), .num_o(w1[12]), .rin(w2[11]), .rout(w2[12]));
    mod32 m326 (.num(w1[12]), .num_o(w1[13]), .rin(w2[12]), .rout(w2[13]));
    
    mod31 m317 (.num(w1[13]), .num_o(w1[14]), .rin(w2[13]), .rout(w2[14]));
    mod32 m327 (.num(w1[14]), .num_o(w1[15]), .rin(w2[14]), .rout(w2[15]));
    
    mod31 m318 (.num(w1[15]), .num_o(w1[16]), .rin(w2[15]), .rout(w2[16]));
    mod32 m328 (.num(w1[16]), .num_o(w1[17]), .rin(w2[16]), .rout(w2[17]));
    
endmodule