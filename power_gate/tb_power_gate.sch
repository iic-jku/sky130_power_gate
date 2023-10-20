v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {(c) 2023 Harald Pretl, JKU, IIC

Testbench for power-gate for Matt Venn's TinyTapeout
} 360 -820 0 0 0.4 0.4 {}
N 500 -200 500 -140 { lab=GND}
N 600 -140 1080 -140 { lab=GND}
N 380 -200 380 -140 { lab=GND}
N 380 -140 500 -140 { lab=GND}
N 380 -470 380 -260 { lab=vdd}
N 500 -450 500 -260 { lab=v_en}
N 1080 -300 1080 -240 {
lab=#net1}
N 500 -450 660 -450 {
lab=v_en}
N 380 -470 660 -470 {
lab=vdd}
N 600 -430 660 -430 {
lab=GND}
N 600 -430 600 -140 {
lab=GND}
N 1080 -180 1080 -140 {
lab=GND}
N 960 -470 1080 -470 {
lab=vdd_out}
N 1080 -470 1080 -360 {
lab=vdd_out}
N 500 -140 600 -140 { lab=GND}
C {devices/code.sym} 30 -290 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice.tt.red tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"
spice_ignore=false}
C {devices/launcher.sym} 110 -130 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} 500 -230 0 0 {name=Ven value=1.8
}
C {devices/code_shown.sym} 20 -690 0 0 {name=NGSPICE only_toplevel=true value="
.control

set noaskquit
set filetype=ascii
save all

op
write tb_power_gate.raw

* exit

.endc
"}
C {devices/vsource.sym} 380 -230 0 0 {name=Vdd value=1.8
}
C {devices/lab_wire.sym} 480 -470 0 0 {name=l3 lab=vdd}
C {devices/gnd.sym} 380 -140 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 1080 -330 0 0 {name=Vpid}
C {devices/vsource.sym} 1080 -210 0 0 {name=Vd value=1.8
}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {/foss/designs/power_gate/power_gate.sym} 810 -450 0 0 {name=x1}
C {devices/lab_wire.sym} 560 -450 0 0 {name=l2 lab=v_en}
C {devices/lab_wire.sym} 1050 -470 0 0 {name=l5 lab=vdd_out}
