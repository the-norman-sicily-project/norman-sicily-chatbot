#!/bin/bash
# setup.sh - Quick setup for Norman Sicily Chatbot
set -e

# Create virtual environment if it doesn't exist
echo "[INFO] Creating virtual environment..."
python3 -m venv .venv

# Activate virtual environment
echo "[INFO] Activating virtual environment..."
source .venv/bin/activate

# Install dependencies
echo "[INFO] Installing dependencies..."
pip install -r requirements.txt

# Copy .env.example to .env if .env does not exist
if [ ! -f .env ]; then
    echo "[INFO] Creating .env from .env.example. Please edit it to add your HuggingFace token."
    cp .env.example .env
else
    echo "[INFO] .env already exists."
fi

echo "[INFO] Setup complete! Edit .env with your HuggingFace API token before running the app."
