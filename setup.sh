#!/bin/bash
set -e

# NOTE: Run `chmod +x ./setup.sh` and then run the script again if you get a
# `Permission denied` error.

# Find all `*.sh` files in dir and allow execution.
find "./" -type f -iname "*.sh" -exec chmod +x {} \; && find "./" -type f -wholename "*/activate" -exec chmod +x {} \;

# Run setup.
rm -rf "./.venv"
python3 -m venv "./.venv"
source .venv/bin/activate
pip3 install -r "./requirements.txt"
