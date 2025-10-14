#!/bin/bash

# Script to generate PlantUML diagrams (optional)
# Usage: ./generate_diagram.sh [input_file.puml] [format]
# Formats: png, svg, pdf (default: png)

INPUT_FILE=${1:-"current_process_as_is_v1.puml"}
FORMAT=${2:-"png"}
BASE_NAME=$(basename "$INPUT_FILE" .puml)

echo "Generating $FORMAT diagram from: $INPUT_FILE"

# Generate specified format
plantuml -t$FORMAT "$INPUT_FILE"
echo "Generated: ${BASE_NAME}.$FORMAT"

echo "Diagram generation completed!"
