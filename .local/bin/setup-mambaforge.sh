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


echo "Installing Jupyter notebook"
mamba install -n base -c conda-forge notebook
echo "Installing nb_conda_kernels"
mamba install -n base -c conda-forge nb_conda_kernels
echo "Installing jupyterlab"
mamba install -n base jupyterlab
echo "Installing nbdev"
mamba installi -n base -c fastai nbdev
echo "Installing dvc"
mamba install -n base -c conda-forge dvc
echo "Installing jupyter notebook contribs"
mamba install -n base -c conda-forge jupyter_contrib_nbextensions
#echo "Installing pdm to manage python dependencies"
#mamba install -c conda-forge pdm
#Install Jupyter lab deck
# https://jupyterlab-deck.readthedocs.io/en/stable/
mamba install -c conda-forge jupyterlab-deck

# Make fastai environment
echo "Installing fastai"
mamba create --name fastai --clone base
mamba activate fastai
mamba install -n fastai -c fastchan fastai fastbook sentencepiece
mamba deactivate fastai

# Make pytorch nightly
echo "Installing pytorch nightly"
mamba create --name pytorch --clone base
mamba activate pytorch
mamba install -n pytorch pytorch torchvision torchaudio -c pytorch-nightly
mamba deactivate pytorch

