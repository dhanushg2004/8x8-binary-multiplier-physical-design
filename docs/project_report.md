# 8x8 Binary Multiplier — RTL to GDSII Physical Design

## 1. Project Overview

This project demonstrates a complete ASIC physical-design flow for an 8-bit × 8-bit combinational binary multiplier using:

- Verilog RTL
- Yosys
- OpenLane
- OpenROAD
- SKY130A
- Magic
- KLayout
- Static Timing Analysis (STA)

## 2. Objective

The objective was to take a synthesizable RTL multiplier through the ASIC RTL-to-GDSII flow and study how physical-design parameters, especially core utilization, affect area, routing, and timing.

## 3. RTL

The design has:

- Two 8-bit inputs: A and B
- One 16-bit output: P
- No sequential logic
- No physical clock port

Function:

`P = A × B`

## 4. Flow

```text
RTL
 ↓
Lint / Elaboration
 ↓
Logic Synthesis
 ↓
Technology Mapping
 ↓
Floorplanning
 ↓
Power Distribution Network
 ↓
Placement
 ↓
Routing
 ↓
Parasitic Extraction
 ↓
Static Timing Analysis
 ↓
IR Drop
 ↓
DRC / LVS / Antenna / ERC
 ↓
GDSII
```

## 5. Technology

PDK: SKY130A

Standard-cell library: `sky130_fd_sc_hd`

## 6. Floorplan Experiment

Two OpenLane runs were compared:

- FP_CORE_UTIL = 30%
- FP_CORE_UTIL = 50%

The synthesized logic remained the same, while the physical implementation changed.

At 50% utilization:

- Core area decreased
- Die area decreased
- Wire length decreased
- Via count increased slightly
- Reported critical path changed only slightly
- The flow still completed successfully

## 7. Timing

The final signoff timing report showed:

- WNS = 0.00 ns
- TNS = 0.00 ns
- Worst setup slack = +1.78 ns
- Worst hold slack = +4.41 ns

The OpenLane SDC used a 10 ns virtual clock because the multiplier is combinational and has no RTL clock port.

## 8. Final Deliverables

The final OpenLane run generated final physical-design views including GDS, LEF, DEF, Liberty-related outputs, SDC, SPEF/STA reports, SPICE, and verification reports.

## 9. Learning Outcomes

This project provided practical experience with:

- RTL-to-GDSII methodology
- Yosys synthesis
- Standard-cell technology mapping
- Floorplanning
- Utilization control
- Placement and routing
- Parasitic extraction
- STA
- Setup and hold timing
- DRC/LVS/antenna/ERC verification
- GDSII inspection in KLayout
