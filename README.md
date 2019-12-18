# slurm_sim_vanilla

This repository contains the following:
* COARE Workload in SWF format
  * `ASTI-COARE-2018-cln.swf`
* Slurm simulator incorporated with different corrective policies (base (as-is simulator, as in the [ubccr-slurm-simulator](https://github.com/ubccr-slurm-simulator), power (corrective policy as established by [Tsafrir et al.](https://www.cse.huji.ac.il/~feit/papers/Pred07TPDS.pdf), simple (prediction correction of 1-hour increment)).

## Configuring the simulator
The original source code is by Simakov et al. To learn more about how to set it up, please visit [this repository](https://github.com/ubccr-slurm-simulator/slurm_sim_tools). After setting up relevant dependencies, run `configslurmsim.sh` to configure the Slurm simulator.

This version contains the following:
* `/slurm_simulator/src/slurmctld/simulator_orig.c`: base simulator source code
* `/slurm_simulator/src/slurmctld/simulator_power.c`: power-corrective simulator source code
* `/slurm_simulator/src/slurmctld/simulator_simple.c`: simple-corrective simulator source code

The following describes how to configure the simulator using any of the corrective source codes. For example, we intend to use the `simulator_power.c` source code:
* Inside `/slurm_simulator/src/slurmctld/` invoke:
```
ln -sf simulator_power.c simulator.c
```
* In `/home/slurm/slurm_sim_vanilla/`, configure the whole simulator by running:
```
./configslurmsim.sh
```

Run experiments as instructed in the UBCCR slurm simulator repository.


For more information: `gridops@asti.dost.gov.ph`
