//`include "module1.v"
//`include "module2.v"
`timescale 1ns/1ns

module mod31(input [31:0] num,
            input rin,
            output reg [31:0] num_o,
            output reg rout);

    mod1 m1();
    module2 m2();

    reg [4:0] index1;
    //reg [4:0] index2;

    always@(rin) begin
        #1;
        if (rin == 0)begin
            rout <= 0;
        end
        else begin
            for(integer i = 0; i <15; i+=1) begin
                if(m2.val[i] == num) begin
                    index1 <= m2.i1[i];
                    //index2 <= m2.i2[i];
                end
            end

            if(m1.table1_filled[index1] == 1) begin
                num_o <= m1.table1[index1];
                m1.table1[index1] <= num;
                rout <= 1;
            end
            else begin
                m1.table1_filled[index1] <= 1;
                m1.table1[index1] <= num;
                rout <= 0;
            end
        end
    end

endmodule