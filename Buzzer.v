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
 * @brief Buzzer
 * @param[in] iKey, assuming active LOW
 * @param[in] iClock
 * @return oBeep
 * @implements oBuzz   ``````|______________|```
 * @implements iKey    _____|`|_________________
 * @implements iClock  _|`|_|`|_|`|_|`|_|`|_|`|_
 */
module Buzzer
(
    output reg  oBuzz,    
    input       iKey,
    input       iClock
);
reg[9:0]			 buzz_count;
always@(posedge iClock or posedge iKey) begin
	if(iKey) begin
		oBuzz <= 1'b0;
		buzz_count <= 0;
	end else begin
		if(buzz_count<10'd1023) buzz_count <= buzz_count + 1'b1;
		else oBuzz <= 1'b1;
	end
end
endmodule
