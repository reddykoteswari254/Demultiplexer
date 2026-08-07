# 1x4 Demultiplexer using Verilog

## Project Overview

This project implements a **1-to-4 Demultiplexer (DEMUX)** using Verilog HDL. A demultiplexer routes a single input to one of several outputs based on the select lines.

## Truth Table

| S1 | S0 | Input | Y0 | Y1 | Y2 | Y3 |
|----|----|-------|----|----|----|----|
| 0 | 0 | D | D | 0 | 0 | 0 |
| 0 | 1 | D | 0 | D | 0 | 0 |
| 1 | 0 | D | 0 | 0 | D | 0 |
| 1 | 1 | D | 0 | 0 | 0 | D |

## Features

- Verilog implementation
- Testbench included
- Simulation waveform
- Easy to understand

## Software Used

- ModelSim
- Vivado
- Icarus Verilog
- GTKWave

## Files

- `demux_1x4.v` - Verilog source code
- `demux_tb.v` - Testbench
- `waveform.png` - Simulation output

## Expected Output

When the select lines change, the input is routed to the selected output while all other outputs remain 0.

## Author

Your Name