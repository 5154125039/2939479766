OPENQASM 2.0;
include "qelib1.inc";
qreg eval[2];
qreg q[1];
creg meas[3];
h eval[0];
p(0) eval[0];
h eval[1];
p(0) eval[1];
ry(1.8545904360032244) q[0];
p(0) q[0];
cx eval[0],q[0];
u(-0.9272952180016122,0,0) q[0];
cx eval[0],q[0];
u(0.9272952180016122,0,0) q[0];
p(0) q[0];
cx eval[1],q[0];
u(-1.8545904360032244,0,0) q[0];
cx eval[1],q[0];
h eval[1];
cp(-pi/2) eval[0],eval[1];
h eval[0];
u(1.8545904360032244,0,0) q[0];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];