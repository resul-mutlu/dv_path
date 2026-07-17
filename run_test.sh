#!/bin/bash
echo "=== Starting OR Gate Verification ==="

echo "Compiling design..."
iverilog -o or_gate_sim or_gate.v or_gate_tb.v

echo "Running simulation..."
vvp or_gate_sim

echo "=== Test Completed Successfully ==="
