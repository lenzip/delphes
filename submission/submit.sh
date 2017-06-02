#!/bin/bash

home=/afs/cern.ch/user/l/lenzip/work/ERCLaVendetta/CMSSW_7_1_27/work/delphes/
repo=/eos/cms/store/user/lenzip/ERCLaVendetta/

cardD=$1
cardP=$2
outdir=$3
seed=$4

cd $home
eval `scram runtime -sh`
cd -
cat $home/submission/$cardP | sed -e "s#SEED#$seed#g" > pythia.cmnd

$home/DelphesPythia8 $home/cards/CMS_PhaseII/$cardD pythia.cmnd out.$seed.root
mkdir $repo/$outdir
cp  out.$seed.root $repo/$outdir/
