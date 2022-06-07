module mod1  ;
// output  reg [31:0] table1 [19:0],
// output reg table1_filled [19:0],
// output reg [31:0] table2 [19:0],
// output reg table2_filled [19:0]

// );


reg [31:0] table1 [19:0];
reg table1_filled [19:0];
reg [31:0] table2 [19:0];
reg table2_filled [19:0];


integer i;


initial begin
    for (i=0 ; i<20 ; i++) begin
    table1_filled [i]= 1'b0 ;
    table2_filled [i]= 1'b0 ;
end;

table1 [4] = 14 ;  table1_filled [4]=1;
table1 [9] = 89;  table1_filled [9]=1;
table1 [12]=48 ;  table1_filled [12]=1;
table1 [16]=76;  table1_filled [16]=1;
table1 [17]=13;  table1_filled [17]=1;

table2 [18] = 14 ;  table2_filled [18]=1;
table2 [9] = 89 ;  table2_filled [9]=1;
table2 [8]=48 ;  table2_filled [8]=1;
table2 [16]=76 ;  table2_filled [16]=1;
table2 [5]=13;  table2_filled [5]=1;

    for (i=0 ; i<20 ;i++) begin
        $display("%d : %b %b", i , table1_filled[i] , table1[i]);

    end;

    
end


    
endmodule