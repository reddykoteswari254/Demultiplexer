# 1-to-4 Demultiplexer using Verilog

## 📌 Project Description

This project implements a **1-to-4 Demultiplexer (DEMUX)** using Verilog HDL.

A demultiplexer is a combinational digital circuit that takes **one input** and routes it to **one of multiple outputs** depending on the select lines.

In this project:

* **1 data input** → `din`
* **2 select lines** → `sel[1:0]`
* **4 outputs** → `y[3:0]`

Only the selected output receives the input signal. All other outputs remain `0`.

---

## 🎯 Objective

The objectives of this project are:

1. To understand the operation of a demultiplexer.
2. To design a 1-to-4 DEMUX using Verilog HDL.
3. To create a Verilog testbench.
4. To verify all possible select-line combinations.
5. To observe the output using simulation and waveform analysis.

---

## 🔌 Block Diagram

```text
                    ┌───────────────────┐
                    │                   │─── Y0
                    │                   │
        DIN ───────►│    1-to-4 DEMUX   │─── Y1
                    │                   │
       SEL[1:0] ──►│                   │─── Y2
                    │                   │
                    └───────────────────┘─── Y3
```

---

## 📋 Truth Table

| DIN | SEL1 | SEL0 | Y3 | Y2 | Y1 | Y0 |
| --- | ---- | ---- | -- | -- | -- | -- |
| 0   | 0    | 0    | 0  | 0  | 0  | 0  |
| 1   | 0    | 0    | 0  | 0  | 0  | 1  |
| 0   | 0    | 1    | 0  | 0  | 0  | 0  |
| 1   | 0    | 1    | 0  | 0  | 1  | 0  |
| 0   | 1    | 0    | 0  | 0  | 0  | 0  |
| 1   | 1    | 0    | 0  | 1  | 0  | 0  |
| 0   | 1    | 1    | 0  | 0  | 0  | 0  |
| 1   | 1    | 1    | 1  | 0  | 0  | 0  |

### Selection

```text
SEL = 00 → Y0 = DIN
SEL = 01 → Y1 = DIN
SEL = 10 → Y2 = DIN
SEL = 11 → Y3 = DIN
```

---

## 💻 Verilog Implementation

The design is implemented using a combinational `always @(*)` block and a `case` statement.

```verilog
module demux_1to4 (
    input  wire       din,
    input  wire [1:0] sel,
    output reg  [3:0] y
);

always @(*) begin
    y = 4'b0000;

    case (sel)
        2'b00: y[0] = din;
        2'b01: y[1] = din;
        2'b10: y[2] = din;
        2'b11: y[3] = din;
    endcase
end

endmodule
```

---

## 🧪 Testbench

The testbench applies different combinations of:

* Data input
* Select lines

The output is monitored using `$monitor()`.

A VCD waveform file named:

```text
demux_1to4.vcd
```

is generated for waveform viewing.

---

## ▶️ Simulation Using Icarus Verilog

Install Icarus Verilog and GTKWave.

Compile the design and testbench:

```bash
iverilog -o demux_sim demux_1to4.v demux_1to4_tb.v
```

Run the simulation:

```bash
vvp demux_sim
```

You should see output similar to:

```text
======================================
      1-to-4 DEMULTIPLEXER TEST
======================================
Time    Din     Sel     Output
0       0       00      0000
10      1       00      0001
20      1       01      0010
30      1       10      0100
40      1       11      1000
50      0       01      0000
60      0       10      0000
70      0       11      0000
======================================
        SIMULATION COMPLETED
======================================
```

---

## 📈 View Waveform

After simulation, open the generated VCD file using GTKWave:

```bash
gtkwave demux_1to4.vcd
```

Add these signals to the waveform:

```text
din
sel
y
```

The waveform should show the input being routed to the output selected by `sel`.

---

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

---

## 📂 Project Files

```text
demultiplexer-verilog/
│
├── README.md
├── demux_1to4.v
├── demux_1to4_tb.v
└── simulation/
    └── waveform.png
```

---

## 🌟 Applications

Demultiplexers are used in:

* Data routing
* Communication systems
* Digital switching
* Memory addressing
* Microprocessor systems
* Data distribution circuits

---

## ✅ Expected Result

The 1-to-4 demultiplexer successfully routes the single input `din` to one of the four outputs according to the two select lines.

For example:

```text
DIN = 1
SEL = 00 → Y = 0001
SEL = 01 → Y = 0010
SEL = 10 → Y = 0100
SEL = 11 → Y = 1000
```

Therefore, the design and simulation of the **1-to-4 Demultiplexer using Verilog HDL** are successfully completed.
