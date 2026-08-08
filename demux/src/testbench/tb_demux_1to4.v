`timescale 1ns/1ps

module demux_1to4_tb;

    reg din;
    reg [1:0] sel;
    wire [3:0] y;

    // Instantiate the DUT
    demux_1to4 uut (
        .din(din),
        .sel(sel),
        .y(y)
    );

    initial begin

        // Create waveform file
        $dumpfile("demux_1to4.vcd");
        $dumpvars(0, demux_1to4_tb);

        $display("======================================");
        $display("      1-to-4 DEMULTIPLEXER TEST");
        $display("======================================");
        $display("Time\tDin\tSel\tOutput");
        $monitor("%0t\t%b\t%b\t%b", $time, din, sel, y);

        // Test 1
        din = 1'b0;
        sel = 2'b00;
        #10;

        // Test 2
        din = 1'b1;
        sel = 2'b00;
        #10;

        // Test 3
        din = 1'b1;
        sel = 2'b01;
        #10;

        // Test 4
        din = 1'b1;
        sel = 2'b10;
        #10;

        // Test 5
        din = 1'b1;
        sel = 2'b11;
        #10;

        // Test 6
        din = 1'b0;
        sel = 2'b01;
        #10;

        // Test 7
        din = 1'b0;
        sel = 2'b10;
        #10;

        // Test 8
        din = 1'b0;
        sel = 2'b11;
        #10;

        $display("======================================");
        $display("        SIMULATION COMPLETED");
        $display("======================================");

        $finish;
    end

endmodule