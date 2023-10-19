v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This is a PMOS power switch with enable signal.
Ron is ca. 2Ohm @ VDD=1.8V, TT, room temp.} 330 -210 0 0 0.4 0.4 {}
N 300 -410 480 -410 { lab=ctrl}
N 300 -540 680 -540 { lab=VPWR}
N 680 -450 680 -410 {
lab=GPWR}
N 680 -410 780 -410 {
lab=GPWR}
N 680 -540 680 -510 {
lab=VPWR}
N 680 -480 780 -480 {
lab=VPWR}
N 780 -540 780 -480 {
lab=VPWR}
N 680 -540 780 -540 {
lab=VPWR}
N 480 -480 480 -410 {
lab=ctrl}
N 480 -480 640 -480 {
lab=ctrl}
N 300 -280 360 -280 {
lab=VGND}
C {devices/ipin.sym} 300 -280 0 0 {name=p1 lab=VGND}
C {devices/ipin.sym} 300 -540 0 0 {name=p2 lab=VPWR}
C {devices/opin.sym} 780 -410 0 0 {name=p3 lab=GPWR}
C {devices/ipin.sym} 300 -410 0 0 {name=p4 lab=ctrl}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {sky130_fd_pr/pfet_01v8.sym} 660 -480 0 0 {name=M0
L=0.15
W=1540
nf=220 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/noconn.sym} 360 -280 2 0 {name=l2}
