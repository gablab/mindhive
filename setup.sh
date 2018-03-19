#!/bin/bash

set -eux
# ======= COPY FILES =========
echo "Setting up essential files"
fls=(envs .bashrc .bash_profile .projects .nodeload)
for fl in ${fls[@]}; do
  if [ -f ${fl} ] || [ -d ${fl} ]; then
    echo mv $(realpath ${fl}) ~/${fl}
  fi
done

# ======= SETUP MINICONDA =========
echo "Starting conda setup"
if [ ! $(command -v conda) ]; then
  # conda not found
  CONDAPATH=/om2/user/$(whoami)/miniconda
  wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
  bash miniconda.sh -b -p $CONDAPATH
  echo '# Miniconda3' >> ~/.bashrc
  echo 'export PATH="'${CONDAPATH}'/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc
  # update environment
  conda config --add channels conda-forge
  conda update -yq --all conda
  rm miniconda.sh
else
  echo 'Skipping... conda already installed'
fi
