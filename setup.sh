#!/bin/bash
set -e

# Create virtual environment if not exists
if [ ! -d "env" ]; then
    python3 -m venv env
fi

# Activate virtual environment
source env/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Set up Jupyter kernel for this environment
python -m ipykernel install --user --name=gen-ai-dev-env --display-name "Python (gen-ai-dev-env)"

echo "Setup complete. Activate your environment with: source env/bin/activate" 