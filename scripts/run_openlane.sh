#!/usr/bin/env bash
set -e

echo "Running 8x8 multiplier OpenLane flow..."
./flow.tcl -design designs/multiplier_4x4
