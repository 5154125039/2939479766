import numpy as np

from qiskit import QuantumCircuit
from qiskit.circuit.library import RealAmplitudes


def real_amplitudes_circuit(num_qubits: int) -> QuantumCircuit:
    """Returns a quantum circuit implementing the RealAmplitudes ansatz with random parameter
    values.

    Keyword arguments:
    num_qubits -- number of qubits of the returned quantum circuit
    """

    np.random.seed(10)
    qc = RealAmplitudes(num_qubits, entanglement="full", reps=3)
    num_params = qc.num_parameters
    qc = qc.assign_parameters(2 * np.pi * np.random.rand(num_params))
    qc.measure_all()
    qc.name = "realamprandom"

    return qc