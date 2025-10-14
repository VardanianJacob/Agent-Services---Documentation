#!/bin/bash

# Script to generate PlantUML sequence diagrams
# Usage: ./generate_sequence.sh [input_file.puml] [format]
# Formats: png, svg, pdf (default: png)

INPUT_FILE=${1:-"agent_services_integration_sequence.puml"}
FORMAT=${2:-"png"}
BASE_NAME=$(basename "$INPUT_FILE" .puml)

echo "Generating $FORMAT sequence diagram from: $INPUT_FILE"

# Generate specified format
plantuml -t$FORMAT "$INPUT_FILE"
echo "Generated: ${BASE_NAME}.$FORMAT"

echo "Sequence diagram generation completed!"
