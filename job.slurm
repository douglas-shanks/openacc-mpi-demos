#!/bin/bash
#
#SBATCH --exclusive
#SBATCH -J saxpy
##SBATCH -o %x-j%j.out
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --time=00:10:00
#SBATCH --hint=nomultithread

echo "Starting job $SLURM_JOB_ID at `date`"

ulimit -c unlimited
ulimit -s unlimited

gpu_bind=select_gpu.sh
cpu_bind="--cpu-bind=map_cpu:48,56,16,24,0,8,32,40"

module load craype-x86-trento
module load craype-accel-amd-gfx90a
module load rocm
export MPICH_GPU_SUPPORT_ENABLED=1
export MPICH_OFI_NIC_POLICY=GPU

#env
rocm-smi --showtopo

export OMP_NUM_THREADS=1
export OMP_PROC_BIND=close
export OMP_PLACES=cores

exe1=src/saxpy_acc
exe2=src/saxpy_mpi
exe3=src/saxpy_acc_mpi

time srun -N ${SLURM_NNODES} -n ${SLURM_NTASKS} -c ${OMP_NUM_THREADS} ${cpu_bind} ${gpu_bind} ${exe1}
wait
time srun -N ${SLURM_NNODES} -n ${SLURM_NTASKS} -c ${OMP_NUM_THREADS} ${cpu_bind} ${gpu_bind} ${exe2}
wait
time srun -N ${SLURM_NNODES} -n ${SLURM_NTASKS} -c ${OMP_NUM_THREADS} ${cpu_bind} ${gpu_bind} ${exe3}

#export LD_LIBRARY_PATH=${CRAY_LD_LIBRARY_PATH}:${LD_LIBRARY_PATH}

echo "... finished job $SLURM_JOB_ID at `date`"
