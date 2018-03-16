#!/bin/bash

set -u
# ======= COPY FILES =========
echo "Setting up essential files"
fls=(envs, .bashrc, .bash_profile, .projects, .nodeload)
for fl in ${fls[@]}; do
  if [ -f ${fl} ]; then
    mv $(realpath ${fl}) ~/
  fi
done

# ======= SETUP MINICONDA =========
echo "Starting Miniconda setup"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
CONDAPATH=/om2/user/$(whoami)/miniconda
bash miniconda.sh -b -p $CONDAPATH
echo '# Miniconda3' >> ~/.bashrc
echo export PATH=${CONDAPATH}/bin:$PATH >> ~/.bashrc
source ~/.bashrc

# ======= SETUP PYTHON =========
conda create -y -n my_env python=3 pip
echo "Setup complete! To use your new environment, type `my_env`"
