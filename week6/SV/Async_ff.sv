`timescale 1ns / 1ps

module async_ff(
    input logic clk,       // Clock input
    input logic reset,     // Asynchronous reset input
    input logic d,         // Data input
    output logic q         // Output
);

    // Always block for the flip-flop behavior
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;     // Reset the output to 0 asynchronously
        end else begin
            q <= d;        // Update the output with input 'd' on clock edge
        end
    end

endmodule