
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
// Last modified Date:     2025/03/23 23:24:08
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             Please Write You Name 
// Created date:           2025/03/23 23:24:08
// mail      :             Please Write mail 
// Version:                V1.0
// TEXT NAME:              pwm.v
// PATH:                   D:\MYCOMPUTER_Proj\Disk_D_FPGADESIGN\CodeHub\Fist_FPGA_Repository\050250323\pwm.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module pwm  #
(
    parameter  PRIOD =   16'd25000   ,
    parameter  DUTY  =   16'd12500
) 
(
    input                               clk                        ,
    input                               rst_n                      ,

    output                              pwm 
);

reg [15:0]      pwm_cnt;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        pwm_cnt[15:0] <= 16'h00;
    else if(pwm_cnt[15:0] == PRIOD)
        pwm_cnt[15:0] <= 16'h00;
    else 
        pwm_cnt[15:0] <= pwm_cnt[15:0] + 1'b1;
end

assign  pwm = (pwm_cnt[15:0] > DUTY) ? 1'b0 : 1'b1;

                                                                   
                                                                   
endmodule