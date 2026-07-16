#!/bin/bash
echo "=== Starting AND Gate Verification ==="

echo "Compiling design..."
iverilog -o and_gate_sim and_gate.v and_gate_tb.v

echo "Running simulation..."
vvp and_gate_sim

echo "=== Test Completed Successfully ==="
