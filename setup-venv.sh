#!/bin/bash

# === Configuration ===
PY27_BIN="/opt/python2.7/bin/python2.7" # local WSL on home desktop install 
FINAL_ENV_NAME="py27-env"

# === Dependinces ===
pip2.7 install virtualenv

# === Step 1: Create Python 2.7 environment ===
echo "Creating Python 2.7 environment at $FINAL_ENV_NAME..."
virtualenv -p "$PY27_BIN" "$FINAL_ENV_NAME" || { echo "Failed to create Python 2.7 venv"; deactivate; exit 1; }

echo "✅ Python 2.7 virtual environment created: $FINAL_ENV_NAME"
echo "➡ To activate it, run: source $FINAL_ENV_NAME/bin/activate"

