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
 * @brief Button debounce
 * @param[in] iKey
 * @param[in] iReset
 * @param[in] iClock should be low frequency
 * @return oKey
 * @attention
 */
module ButtonDebounce(
    output reg  oKey,
    input       iKey,
    input       iReset,
    input       iClock
);
always@(posedge iClock or posedge iReset) begin
    if(iReset) oKey <= 1'b0;
    else oKey <= iKey;
end
endmodule
