#!/bin/bash

# Run DRC
iic-drc.sh -b power_gate.mag
# Run LVS
iic-lvs.sh power_gate

