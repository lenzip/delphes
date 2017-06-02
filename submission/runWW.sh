#!/bin/bash

for i in `seq 500 600`; do
  bsub -q 1nd -o /tmp/job_out "submit.sh CMS_PhaseII_Substructure_PIX4022_200PU_timing20.tcl pythia8_14TeV_WWTo2L2Nu.cmnd pythia8_14TeV_WWTo2L2Nu__CMS_PhaseII_Substructure_PIX4022_200PU_timing20 $i"
done  

for i in `seq 600 700`; do
  bsub -q 1nd -o /tmp/job_out "submit.sh CMS_PhaseII_Substructure_PIX4022_200PU.tcl pythia8_14TeV_WWTo2L2Nu.cmnd pythia8_14TeV_WWTo2L2Nu__CMS_PhaseII_Substructure_PIX4022_200PU $i"
done
