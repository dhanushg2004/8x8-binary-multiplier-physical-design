# Timing Constraints

This project is a combinational 8x8 multiplier, so the RTL has no physical clock port.

OpenLane generated a virtual timing clock for STA:

- Virtual clock period: 10 ns
- Clock uncertainty: 0.25 ns
- Input delay: 2 ns
- Output delay: 2 ns

The generated SDC from the final run is available in the OpenLane run directory:

`results/final/sdc/multiplier_8x8.sdc`
