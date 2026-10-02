# Physical Design Results

Final run:

`RUN_2026.10.02_16.01.45`

## Final signoff timing

| Metric | Result |
|---|---:|
| Flow status | Completed |
| WNS | 0.00 ns |
| TNS | 0.00 ns |
| Worst setup slack | +1.78 ns |
| Worst hold slack | +4.41 ns |

## 30% vs 50% utilization experiment

| Metric | 30% | 50% |
|---|---:|---:|
| Core utilization | 30% | 50% |
| Core area | 9729.33 µm² | 5850.61 µm² |
| Die area | 0.01340 mm² | 0.00871 mm² |
| Wire length | 8273 | 7356 |
| Vias | 2336 | 2415 |
| Critical path | 3.93 ns | 3.97 ns |
| Synthesized cells | 307 | 307 |
| Total physical cells | 1290 | 910 |
| Flow | Completed | Completed |

## 8x8 synthesis

The generic Yosys synthesis produced 354 cells.

The OpenLane synthesis metric reported 307 synthesized cells after technology mapping/optimization.

## Checks

The final OpenLane run completed successfully and included routing, SPEF extraction, STA, IR-drop analysis, Magic/KLayout GDS generation, LVS, DRC, antenna/ERC checks, and final views.

Note: IR-drop analysis reported a warning because `VSRC_LOC_FILES` was not defined; OpenLane still completed the flow.
