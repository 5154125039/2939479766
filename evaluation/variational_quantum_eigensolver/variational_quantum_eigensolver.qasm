OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.6653651688499462) q[0];
ry(-1.1636796621716652) q[1];
ry(1.222434405568692) q[2];
cx q[1],q[2];
cx q[0],q[1];
ry(1.3279531922172254) q[0];
ry(2.1268859994329286) q[1];
ry(0.40263285793568726) q[2];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.267949587629228) q[0];
ry(-2.2740939055607425) q[1];
ry(1.255977146880397) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];