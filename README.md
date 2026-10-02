# 8x8 Binary Multiplier — RTL to GDSII

A practical ASIC Physical Design project implementing an **8-bit × 8-bit combinational binary multiplier** from Verilog RTL through synthesis, floorplanning, placement, routing, parasitic extraction, STA, physical verification, and GDSII generation using **OpenLane + SKY130A**.

## Project Highlights

- Verilog RTL
- Yosys synthesis
- SKY130A standard cells
- OpenLane RTL-to-GDSII flow
- Floorplanning and utilization experiment
- Placement and routing
- SPEF extraction
- Static Timing Analysis
- DRC / LVS / antenna / ERC checks
- GDSII generation
- KLayout inspection

## RTL Function

```text
A[7:0] × B[7:0] → P[15:0]
```

## Tools

| Tool | Purpose |
|---|---|
| Yosys | RTL synthesis |
| OpenLane | Automated ASIC flow |
| OpenROAD | Physical implementation |
| SKY130A | Open-source PDK |
| Magic | Layout/DRC/LVS related processing |
| KLayout | GDSII/layout visualization |

## Final Timing

| Metric | Result |
|---|---:|
| WNS | 0.00 ns |
| TNS | 0.00 ns |
| Worst setup slack | +1.78 ns |
| Worst hold slack | +4.41 ns |
| Flow | Completed |

## Utilization Study

| Metric | 30% | 50% |
|---|---:|---:|
| Core area | 9729.33 µm² | 5850.61 µm² |
| Die area | 0.01340 mm² | 0.00871 mm² |
| Wire length | 8273 | 7356 |
| Vias | 2336 | 2415 |
| Critical path | 3.93 ns | 3.97 ns |

## Repository Structure

```text
.
├── rtl/
│   └── multiplier_8x8.v
├── constraints/
│   └── README.md
├── docs/
│   ├── project_report.md
│   ├── results.md
│   └── interview_questions.md
├── results/
│   ├── gds/
│   ├── reports/
│   └── screenshots/
├── config.json
└── README.md
```

## Reproduce the OpenLane Run

Copy this repository into:

```text
OpenLane/designs/multiplier_4x4/
```

Then run from the OpenLane directory:

```bash
./flow.tcl -design designs/multiplier_4x4
```

The project is intentionally documented as a learning/portfolio implementation. Exact output files depend on the OpenLane and PDK versions used.

## Author

**Dhanush Ganganapalli**

B.Tech ECE | VLSI / Physical Design

## License

MIT
