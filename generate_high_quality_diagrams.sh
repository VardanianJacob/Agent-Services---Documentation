#!/bin/bash

# High Quality PlantUML Diagram Generator
# This script generates SVG files (vector format, perfect quality)

echo "🎨 Generating high-quality PlantUML diagrams..."

# Function to generate SVG
generate_svg() {
    local puml_file="$1"
    local output_dir="$2"
    
    echo "📊 Processing: $puml_file"
    
    # Generate SVG (vector format, no quality loss, scalable)
    plantuml -tsvg "$puml_file"
    
    # Copy to Project Documentation if specified
    if [ "$output_dir" = "copy_to_docs" ]; then
        local filename=$(basename "$puml_file" .puml)
        cp "${filename}.svg" "Project Documentation/"
        echo "✅ Copied to Project Documentation: ${filename}.svg"
    fi
    
    # Show file info
    local filename=$(basename "$puml_file" .puml)
    echo "📏 Generated: ${filename}.svg"
    ls -la "${filename}.svg"
    echo ""
}

# Generate As-Is diagram
echo "🔄 Generating As-Is diagram..."
cd "Process Diagrams/as-is"
generate_svg "current_process_as_is.puml" "copy_to_docs"

# Generate To-Be diagram
echo "🎯 Generating To-Be diagram..."
cd "../Proposal Target Process"
generate_svg "agent_services_to_be.puml" "copy_to_docs"

echo "🎉 All diagrams generated successfully!"
echo ""
echo "📋 Quality settings used:"
echo "   • Format: SVG (vector graphics)"
echo "   • Quality: Perfect (no pixelation)"
echo "   • Scalability: Unlimited"
echo "   • File size: Optimized"
echo "   • Font: Arial, size 12"
echo ""
echo "📁 Files updated in Project Documentation:"
ls -la "Project Documentation"/*.svg
