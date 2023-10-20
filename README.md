# Power gates for Matt Venn's TinyTapeout (in SKY130)

(c) 2023 Harald Pretl, Institute for Integrated Circuits, Johannes Kepler University

## Folder `power_gate`

This is a simple PMOS power gate with `enable` (thus integrated inverter) for TinyTapeout, implemented in `sky130A`.

## Folder `tt_pg_vdd_1`

* A simple PMOS transistor for 1.8V-domain power switching.
* Pins: `VPWR` (1.8V), `VGND`, `GPWR` (switched VDD), `ctrl` (active low, pulling to `VGND` turns power-gate on, i.e. `GPWR` = `VPWR`; pulling to `VPWR` makes `GPWR` floating)
* $R_\mathrm{on} = 2\Omega$
* Used for 1xN tiles.
* Implemented in `sky130A`.

## Folder `tt_pg_vdd_2`

* A simple PMOS transistor for 1.8V-domain power switching.
* Pins: `VPWR` (1.8V), `VGND`, `GPWR` (switched VDD), `ctrl` (active low, pulling to `VGND` turns power-gate on, i.e. `GPWR` = `VPWR`; pulling to `VPWR` makes `GPWR` floating)
* $R_\mathrm{on} = 1\Omega$
* Used for 2xN tiles.
* Implemented in `sky130A`.
