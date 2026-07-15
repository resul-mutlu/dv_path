#!/bin/bash
echo "=== Starting Verification Test ==="

echo "Compiling design..."
iverilog -o my_design hello_world.v

echo "Running simulation..."
vvp my_design

echo "=== Test Completed Successfully ==="
