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
echo "Generating updated system architecture diagram..."
cd "Process Diagrams/Proposal Target Process"
plantuml symfa_system_architecture_v2_extended.puml
plantuml agent_services_proposal_v3.puml

echo ""
echo "All diagrams generation completed!"
echo ""
echo "Generated Process Flow files:"
echo "- agent_services_proposal_v3.png (Proposal Process Flow)"
echo ""
echo "Generated Architecture files:"
echo "- symfa_system_architecture_v2_extended.png (Updated System Architecture - Extended)"
echo ""
echo "Key updates in v2:"
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
