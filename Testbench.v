`timescale 1ns/1ps
module Testbench;
reg [3:0] I = 4'b0000;  //4bit 暫存器
wire [3:1] O = 4'b000;   //3bit 暫存器

voter_if UUT (.I(I),.O(O));      //用變數UTT來接收輸入和輸出
initial
begin       //將輸入的所有可能，按時間一一輸入
    #50 I = 4'b0000;
    #50 I = 4'b0001;
    #50 I = 4'b0010;
    #50 I = 4'b0011;
    #50 I = 4'b0100;
    #50 I = 4'b0101;
    #50 I = 4'b0110;
    #50 I = 4'b0111;
    #50 I = 4'b1000;
    #50 I = 4'b1001;
    #50 I = 4'b1010;
    #50 I = 4'b1011;
    #50 I = 4'b1100;
    #50 I = 4'b1101;
    #50 I = 4'b1110;
    #50 I = 4'b1111;
    #50 $finish;
end

initial
begin
    $dumpfile("simple.vcd");    //將指定資訊匯入 VCD 檔案
    $dumpvars(0, UUT);          //紀錄UTT變數接收的所有信號
end
endmodule
