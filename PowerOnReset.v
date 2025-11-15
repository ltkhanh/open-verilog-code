/*****************************************************************************/
// File            : Open Verilog Code
// Author          : Trung-Khanh Le
// Contact         : - ltkhanh@hcmus.edu.vn
//                   - ltkhanh@bigdolphin.com.vn
// Version         : 0.1
// Date            : 2025/11/15
// Modified Date   : 2025/11/15
// License         : GPL-3.0
/*****************************************************************************/
/**
 * @brief Power-on Reset
 * @param[in] iReset
 * @param[in] iClock
 * @return oReset
 * @attention
 */
module PowerOnReset
(
    output reg  oReset,    
    input       iReset,
    input       iClock
);
reg [15:0]      counter;
always@(posedge iClock or posedge iReset) begin
    if(!iReset) begin
        oReset <= 1'b1;
        counter <= 0;
    end else begin
        if(counter<16'd65535) begin
            oReset <= 1'b1;
            counter <= counter + 1'b1;
        end else oReset <= 1'b0;
    end
end
endmodule
