#!/bin/bash

# Agent Services MVP Diagrams Generation Script
# This script generates all MVP diagrams for presentation

echo "Generating Agent Services MVP Diagrams..."

# Set the directory for PlantUML diagrams
DIAGRAM_DIR="/Users/aliaksandrlukashenka/Documents/job/documents/plateau/agent_service/diagrams"

# Check if PlantUML is installed
if ! command -v plantuml &> /dev/null; then
    echo "PlantUML is not installed. Please install it first:"
    echo "brew install plantuml"
    exit 1
fi

# Generate updated architecture diagram
echo "Generating updated system architecture diagram with Symfa colors..."
cd "Process Diagrams/Proposal Target Process"
plantuml symfa_system_architecture_v2.puml

echo ""
echo "All diagrams generation completed!"
echo ""
echo "Generated Architecture Diagram:"
echo "- symfa_system_architecture_v2.png (System Architecture with Symfa Colors)"
echo ""
echo "Key updates in v2:"
echo "✓ Professional color palette applied"
echo "  • Light Blue (#E3F2FD) - Agent Portal"
echo "  • Blue (#BBDEFB) - API Gateway"
echo "  • Teal (#E0F2F1, #B2DFDB) - Operations & Core System"
echo "  • Orange (#FFE0B2) - Additional Services"
echo "✓ C# and Blazor framework specified"
echo "✓ DMZ security layer detailed"
echo "✓ Azure AD 2FA in Operations Portal (not in Agent Portal)"
echo "✓ eSign Service integration"
echo "✓ Microsoft SQL Server"
echo "✓ Licensing as simple module"
echo "✓ Additional Services (not External)"
echo "✓ Parallel processing documented"
echo ""
echo "All diagrams are ready for your presentation!"
