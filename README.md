# Agent Services Project

Agent management system automation project for insurance company. Replacing legacy Microsoft Access system with modern web interface.

## 📋 Project Description

**Objective:** Replace outdated Microsoft Access system with modern web interface for agent management and setup.

**Current Status:** Discovery phase - requirements analysis and documentation creation.

**Technology Stack:** HTML + C# (.NET) with Active Directory integration.

## 🏗 Project Structure

```
Agent Services/
├── README.md                           # This file - project overview
├── Source Materials/                   # Source materials for analysis
│   ├── Internal sync -Agent Services - October 14.docx
│   ├── Tech Spec - Agent Services.docx
│   ├── Agent Services Project Overview (Day 1, Sept-24).docx
│   ├── Agent Services - Current Process Overview (Day 4, Sept-29).docx
│   ├── Agent Services.pdf
│   ├── Agent Services Project Overview (Day 1, Sept-24).mov
│   ├── Agent Services - Current Process Overview (Day 4, Sep-29).mp4
│   └── Screenshots from Agent Services Intro/
│       ├── Screenshot 2025-09-28 at 15.37.13.png
│       ├── Screenshot 2025-09-28 at 15.37.43.png
│       ├── Screenshot 2025-09-28 at 15.38.13.png
│       ├── Screenshot 2025-09-28 at 15.38.47.png
│       ├── Screenshot 2025-09-28 at 15.38.59.png
│       ├── Screenshot 2025-09-28 at 15.39.11.png
│       ├── Screenshot 2025-09-28 at 15.39.21.png
│       └── Screenshot 2025-09-28 at 15.41.29.png
├── Project Documentation/              # Created documentation
│   ├── Agent Services - Project Overview.md
│   ├── Technical Requirements.md
│   ├── Pain Points Analysis.md
│   ├── Screenshots Analysis.md
│   ├── current_process_as_is_v1.png
│   ├── agent_services_tobe_v1.png
│   └── agent_services_integration_sequence.png
└── Process Diagrams/                  # Process diagrams
    ├── as-is/                         # Current processes
    │   ├── [Draft, in review] Agent Services – Current Process (As-Is).puml
    │   ├── current_process_as_is_v1.puml
    │   └── generate_diagram.sh
    └── Proposal Target Process/       # Target processes
        ├── agent_services_tobe_v1.puml
        ├── agent_services_integration_sequence.puml
        ├── generate_diagram.sh
        └── generate_sequence.sh
```

## 📁 Folder Description

### **Source Materials/**
Source materials received from client for analysis:
- **Meeting transcripts** - detailed records of process discussions
- **Technical specification** - system requirements
- **Video materials** - demonstrations of current processes
- **Screenshots** - visual representation of interfaces

### **Project Documentation/**
Documentation created based on analysis:
- **Project Overview** - high-level project description
- **Technical Requirements** - technical requirements
- **Pain Points Analysis** - pain points analysis
- **Screenshots Analysis** - system screenshots analysis

### **Process Diagrams/**
Process diagrams in PlantUML format:
- **as-is/** - current processes (as-is)
- **Proposal Target Process/** - target processes (to-be)
  - `agent_services_tobe_v1.puml` - Activity diagram of target process
  - `agent_services_integration_sequence.puml` - Sequence diagram of system integrations

## 🎯 Key Findings

### **Current State:**
- Legacy Microsoft Access system (30 years old)
- Manual processes with data duplication
- Two main pain points:
  - **PAIN POINT #1:** Manual Excel tracking
  - **PAIN POINT #2:** Licensing letters and roster cleanup

### **Target State:**
- Modern web interface
- Automation of manual processes
- Integration with existing PLATEAU system
- Improved tracking and audit

### **Technical Details:**
- **Database:** SQL Server (existing)
- **Interface:** Web application (HTML + C#)
- **Authentication:** Active Directory
- **Integration:** Extension of existing PLATEAU system

## 📊 Agent Services Process

### **Main Stages:**
1. **Initiation** - Marketing Rep/General Agent submits application
2. **Review** - Agent Services reviews and verifies data
3. **Approval** - Senior Officer approves or rejects
4. **Setup** - Document preparation and system configuration
5. **Licensing** - License and appointment setup
6. **Integration** - Loan platform configuration
7. **Completion** - Wait for first report and final setup

### **Execution Time:**
- Simple case: 30 minutes
- Complex case: 1 hour

## 🔧 Technical Architecture

### **Existing System:**
```
Microsoft Access Forms → Access Database → SQL Server
```

### **Target System:**
```
Web Interface (HTML + C#) → SQL Server Database
```

### **Key Tables:**
- **EntityMaster** - main agent information
- **AgentSetupDirect** - plans that agent can sell
- **AgentSetupMasterCredit** - commissions and reinsurance
- **AgentSetupValuesCredit** - detailed values for different terms

## 📋 Next Steps

1. **Complete Discovery** - finalize requirements
2. **Technical Planning** - detailed architecture
3. **Project Estimation** - time and resource estimates
4. **Client Presentation** - present plan and estimates

## 📞 Contacts

**Project Team:**
- Business Analyst: [Name]
- Technical Lead: [Name]
- Project Manager: [Name]

**Client:**
- Plateau Group
- Contact Person: Ammon Manning

---

*Documentation created during Discovery phase of Agent Services project*