#PBS -S /bin/bash
#PBS -N #job-name
#PBS -j oe
#PBS -l nodes=11:ppn=24,walltime=00:30:00
#PBS -l feature=mpp1

cd $PBS_O_WORKDIR

module load starccm/12.06-r8

starccm+ -np $PBS_NP -mpi crayxt -collab -batch -power -podkey #Star-CCM_current_working_license_key -licpath 1999@flex.cd-adapco.com #simulationfilename.sim> out.NOW$PBS_JOBID