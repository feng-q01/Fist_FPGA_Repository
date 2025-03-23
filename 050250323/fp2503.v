`timescale 1ns / 1ps
//****************************************VSCODE PLUG-IN**********************************//
//----------------------------------------------------------------------------------------
// IDE :                   VSCODE     
// VSCODE plug-in version: Verilog-Hdl-Format-3.5.20250220
// VSCODE plug-in author : Jiang Percy
//----------------------------------------------------------------------------------------
//****************************************Copyright (c)***********************************//
// Copyright(C)            Please Write Company name
// All rights reserved     
// File name:              
// Last modified Date:     2025/03/23 23:14:33
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             Please Write You Name 
// Created date:           2025/03/23 23:14:33
// mail      :             Please Write mail 
// Version:                V1.0
// TEXT NAME:              fp2503.v
// PATH:                   D:\MYCOMPUTER_Proj\Disk_D_FPGADESIGN\CodeHub\Fist_FPGA_Repository\050250323\fp2503.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module fp2503(
    input                               clk                        ,
    input                               rst_n                      ,
    output   reg                        outsig
);

always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        outsig  <= 1'b0;
    else 
        outsig  <= 1'b1;
end
                                                                   
endmodule