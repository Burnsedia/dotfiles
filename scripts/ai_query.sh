#!/bin/bash

# AI Query script for the Unified Smart-Rice
# Uses llamacpp (llama-cli)

MODEL_PATH="$HOME/.cache/models/llama-3-8b-instruct.gguf" # Default placeholder

if [ -z "$1" ]; then
    echo "Usage: ai_query 'your question' or pipe text to it."
    exit 1
fi

if [ -p /dev/stdin ]; then
    # Input from pipe
    INPUT=$(cat)
else
    # Input from argument
    INPUT="$1"
fi

PROMPT="$INPUT"

# Check if model exists
if [ ! -f "$MODEL_PATH" ]; then
    echo "Error: Model not found at $MODEL_PATH. Please update the script."
    exit 1
fi

# Run llama-cli
~/.local/bin/llama-cli -m "$MODEL_PATH" -p "$PROMPT"
