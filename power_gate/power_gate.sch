v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This is a PMOS power switch with enable signal.
Ron is ca. 3Ohm @ VDD=1.8V, TT, room temp.} 330 -210 0 0 0.4 0.4 {}
N 460 -320 460 -280 { lab=vss}
N 460 -540 460 -500 { lab=vdd}
N 460 -470 530 -470 { lab=vdd}
N 530 -540 530 -470 { lab=vdd}
N 460 -350 530 -350 { lab=vss}
N 530 -350 530 -280 { lab=vss}
N 460 -410 460 -380 { lab=en_b}
N 400 -470 420 -470 { lab=en}
N 400 -410 400 -350 { lab=en}
N 400 -350 420 -350 { lab=en}
N 460 -540 530 -540 { lab=vdd}
N 460 -280 530 -280 { lab=vss}
N 400 -470 400 -410 { lab=en}
N 460 -440 460 -410 { lab=en_b}
N 300 -280 460 -280 { lab=vss}
N 300 -410 400 -410 { lab=en}
N 300 -540 460 -540 { lab=vdd}
N 680 -450 680 -410 {
lab=vdd_switch}
N 680 -410 780 -410 {
lab=vdd_switch}
N 530 -540 680 -540 {
lab=vdd}
N 680 -540 680 -510 {
lab=vdd}
N 680 -480 780 -480 {
lab=vdd}
N 780 -540 780 -480 {
lab=vdd}
N 680 -540 780 -540 {
lab=vdd}
N 600 -480 640 -480 {
lab=en_b}
N 600 -480 600 -410 {
lab=en_b}
N 460 -410 600 -410 { lab=en_b}
C {devices/ipin.sym} 300 -410 0 0 {name=p2 lab=en}
C {devices/opin.sym} 780 -410 0 0 {name=p4 lab=vdd_switch
}
C {devices/ipin.sym} 300 -540 0 0 {name=p1 lab=vdd
}
C {devices/ipin.sym} 300 -280 0 0 {name=p3 lab=vss}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {sky130_fd_pr/pfet_01v8.sym} 660 -480 0 0 {name=M0
L=0.15
W=960
nf=120 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 440 -470 0 0 {name=M1
L=0.15
W=8
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -350 0 0 {name=M2
L=0.15
W=8
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 560 -410 0 0 {name=l2 lab=en_b}
