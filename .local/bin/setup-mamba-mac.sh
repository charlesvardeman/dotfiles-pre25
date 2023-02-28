#!/usr/bin/env bash
#
# Setup mamba environment for mac based off micromamba install
# This should setup pytorch for Apple Metal acceleration
# 
# https://developer.apple.com/metal/pytorch/
# Also includes live coding
# https://forums.fast.ai/t/live-coding-aka-walk-thrus/96617
# https://mamba.readthedocs.io/en/latest/
# https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html#micromamba

# HPC use of micromamba
# https://www.pugetsystems.com/labs/hpc/standalone-python-conda-envs-without-installing-conda-using-micromamba-2287/

# Set alias for mamba
# alias minst="micromamba -p ~/conda install -c conda-forge"
conda_install_prefix="${HOME}/conda"

echo "Creating base environment"
micromamba --root-prefix="${conda_install_prefix}" create -n base 
echo "Installing jupyter lab"
micromamba --root-prefix="${conda_install_prefix}" --name=base install jupyterlab -c conda-forge
echo "Installing pytorch nightly"
micromamba --root-prefix="${conda_install_prefix}" --name=base install pytorch torchvision torchaudio -c pytorch-nightly -c conda-forge
