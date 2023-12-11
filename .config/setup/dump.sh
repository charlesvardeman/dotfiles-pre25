#!/bin/bash
# For a brew file
#brew leaves | sed 's/^/install /' > Brewfile
brew leaves > leaves
brew list --cask > casks
