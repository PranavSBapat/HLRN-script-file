#PBS -S /bin/bash
#PBS -N star_5M_1
#PBS -j oe
#PBS -l nodes=11:ppn=24,walltime=00:30:00
#PBS -l feature=mpp1

cd $PBS_O_WORKDIR

module load starccm/12.06-r8

starccm+ -np $PBS_NP -mpi crayxt -collab -batch -power -podkey s/Kt/6h8hNXCcmQdV+T+kQ -licpath 1999@flex.cd-adapco.com star_5M_1.sim> out.NOW$PBS_JOBID