OPENQASM 2.0;
include "qelib1.inc";
qreg q0[3];
creg c0[3];
h q0[0];
h q0[1];
measure q0[0] -> c0[0];
measure q0[1] -> c0[1];
if(c0==3) x q0[0];
measure q0[0] -> c0[0];
measure q0[1] -> c0[1];
measure q0[2] -> c0[2];