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

# Most of this is covered in Live coding 1
# https://forums.fast.ai/t/live-coding-1/96649
# and a "Beginners Guide to Mambaforge Installation"
# https://qbiwan.github.io/fastpages/mamba-installation


echo "Installing pytorch nightly"
mamba install pytorch torchvision torchaudio -c pytorch-nightly
echo "Installing Juputer notebook"
mamba install -c conda-forge notebook
echo "Installing nb_conda_kernels"
mamba install -c conda-forge nb_conda_kernels
echo "Installing jupyterlab"
mamba install jupyterlab
echo "Installing nbdev"
mamba install -c fastai nbdev
echo "Installing dvc"
mamba install -c conda-forge dvc
echo "Installing jupyter notebook contribs"
mamba install -c conda-forge jupyter_contrib_nbextensions
echo "Installing pdm to manage python dependencies"
mamba install -c conda-forge pdm
echo "Installing RISE"
mamba install -c conda-forge jsonschema-with-format-nongpl
mamba install -c conda-forge rise
