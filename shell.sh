#!/bin/bash -e
# xtrace: Print a trace of simple commands, for commands, case commands, select commands, and arithmetic for commands and their arguments or associated word lists after they are expanded and before they are executed.
# errexit: Exit immediately if a pipeline (see Pipelines), which may consist of a single simple command (see Simple Commands), a list (see Lists), or a compound command (see Compound Commands) returns a non-zero status.
set -o xtrace
set -o errexit

# Initialize submodules of stratosphere_common and stratosphere_project ansible roles
git submodule update --init

# create a clean environment for python programmes
virtualenv /tmp/venv --python=python3.6

# activate the virtual environment
. /tmp/venv/bin/activate

# Install some programs
# polaris-cli:
#   command line tool which interacts with the Polaris docker image build service
#   https://code.blue-yonder.org/projects/SPHERE/repos/polaris-cli/browse/README.md
# ansible:
#   Ansible is an open-source software provisioning, configuration management, and application-deployment tool.(wikipedia)
# stratosphere-client:
#   python client for the stratosphere API
#   https://code.blue-yonder.org/projects/SPHERE/repos/stratosphere_client/browse
pip install ansible
