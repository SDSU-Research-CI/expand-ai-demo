#!/usr/bin/env bash

# Exit immediately if a command fails
set -e

echo "Configuring environment. This might take a moment."

# 1. Check if uv is available, or install it
if ! command -v uv &> /dev/null; then
    # Double check if it was just installed locally but not on PATH yet
    if [ -f "$HOME/.local/bin/uv" ]; then
        export PATH="$HOME/.local/bin:$PATH"
    else
        echo "It appears uv is not installed... Installing..."
        curl -LsSf https://astral.sh/uv/install.sh | sh
        
        # Manually inject the new install path into the current process PATH
        export PATH="$HOME/.local/bin:$PATH"
    fi
fi

# 2. Safety check to make sure uv is fully operational now
if ! command -v uv &> /dev/null; then
    echo "Error: uv installation succeeded but could not be mapped to PATH." >&2
    exit 1
fi

# 3. Check for an existing virtual environment
if [ -d ".venv" ]; then
    echo "Environment appears to be configured already. Exiting."
    exit 0
fi

# 4. Initialize and sync the project environment
uv venv
uv sync

echo "Environment has been configured. You may now run 'source .venv/bin/activate'"

