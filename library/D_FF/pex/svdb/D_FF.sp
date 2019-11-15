* SPICE NETLIST
***************************************

.SUBCKT NAND2 GND VDD B A out
** N=6 EP=5 IP=0 FDC=4
* PORT GND GND 30000 2500 METAL3
* PORT VDD VDD 30000 57500 METAL3
* PORT B B 19000 27000 METAL3
* PORT A A 31000 27000 METAL3
* PORT out out 44000 42500 METAL3
M0 6 B GND GND N L=1.8e-07 W=5.4e-07 AD=3.402e-13 AS=4.941e-13 $X=19500 $Y=16000 $D=1
M1 out A 6 GND N L=1.8e-07 W=5.4e-07 AD=4.941e-13 AS=3.402e-13 $X=28500 $Y=16000 $D=1
M2 out B VDD VDD P L=1.8e-07 W=5.4e-07 AD=5.427e-13 AS=4.941e-13 $X=19500 $Y=37000 $D=0
M3 VDD A out VDD P L=1.8e-07 W=5.4e-07 AD=4.941e-13 AS=5.427e-13 $X=28500 $Y=37000 $D=0
.ENDS
***************************************
.SUBCKT D_FF D clk Q Vdd GND
** N=9 EP=5 IP=25 FDC=20
* PORT D D 32000 33000 METAL4
* PORT clk clk 91000 91000 METAL4
* PORT Q Q 164000 106500 METAL4
* PORT Vdd Vdd 90000 2500 METAL3
* PORT GND GND 0 55000 METAL3
* PORT Vdd Vdd 120000 121500 METAL3
X0 GND Vdd D D 7 NAND2 $T=0 60000 1 0 $X=0 $Y=0
X1 GND Vdd clk 7 9 NAND2 $T=60000 60000 1 0 $X=60000 $Y=0
X2 GND Vdd D clk 8 NAND2 $T=60000 64000 0 0 $X=60000 $Y=64000
X3 GND Vdd Q 9 4 NAND2 $T=120000 60000 1 0 $X=120000 $Y=0
X4 GND Vdd 8 4 Q NAND2 $T=120000 64000 0 0 $X=120000 $Y=64000
.ENDS
***************************************
