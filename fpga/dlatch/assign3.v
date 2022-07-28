module assignment3 (d,q,clock);
output reg q,clock;
input wire d;

wire clk;

qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
   .Sys_Clk0 (clk),
    );

    reg[26:0] delay;
     reg	led;
always@(posedge clk) begin
delay = delay+1; 
if(delay > 30000000) //blink delay in decimal
begin
delay=27'b0;
clock = !clock; //reset the led
end
end
always @( clock)
begin
case({d})
{1'b0} : q <= 0;
{1'b1} : q <= 1;
endcase
end
 
endmodule
