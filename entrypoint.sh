#!/bin/bash
set -e

echo "Running the action!"

# Access the inputs defined in action.yml
INPUT_NAME=${INPUT_NAME:-"World"}

echo "Hello, $INPUT_NAME!"
