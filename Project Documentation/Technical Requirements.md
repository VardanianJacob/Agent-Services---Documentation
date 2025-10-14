# Agent Services - Technical Requirements

## 🏗 System Architecture

### **Current State (Legacy)**
```
Microsoft Access Forms → Access Database → SQL Server
```

### **Target State (Modern)**
```
Web Interface (HTML + C#) → SQL Server Database
```

## 🗄 Database Schema

### **Core Tables**

#### **EntityMaster**
- **Purpose:** Primary table storing all agent account information
- **Key Fields:**
  - EntityType = 'Agent'
  - Mailing/physical/claims addresses
  - ACH flag (payment method)
  - Licensing flag
  - TIN (Tax Identification Number)
  - DAT% (reporting percentage)
  - Licensing contact information
  - Status (PENDING/ACTIVE)

#### **AgentSetupDirect**
- **Purpose:** Indicates which plans/products an agent can sell
- **Relationship:** One-to-many with EntityMaster
- **Critical Rule:** **NEVER DELETE** records from this table

#### **AgentSetupMasterCredit**
- **Purpose:** Links agents and plans to commission/reinsurance tables
- **Relationship:** Many-to-many with AgentSetupDirect
- **Key Fields:**
  - Commission rates
  - Reinsurance settings
  - Risk codes
  - Term limits
  - Rate structures

#### **AgentSetupValuesCredit**
- **Purpose:** Detailed values for different policy durations
- **Relationship:** Many-to-many with AgentSetupMasterCredit
- **Key Fields:**
  - Duration values (0-100 years)
  - Table_Num references
  - Specific rate values

## 🔧 Functional Requirements

### **Agent Management**
1. **Add/Edit Agent Information**
   - Form-based interface for EntityMaster data
   - Validation for required fields
   - Address management (mailing/physical/claims)

2. **Copy Values Functionality**
   - Popup for selecting source agent
   - Field selection (all by default)
   - Bulk copy operations

3. **Bulk Edit Agents**
   - Selection by Marketing Rep, Customer Number, or TPA Number
   - Common field editing for multiple agents
   - Batch update operations

### **Plan Code Management**
1. **Plan Code Add/Edit Control**
   - Individual plan code management
   - Popup interfaces for detailed editing

2. **Plan Code List Control**
   - Agent-specific plan code listing
   - Selection and filtering capabilities

3. **Bulk Plan Code Operations**
   - Bulk edit of plan codes
   - Copy all plans from one agent to another
   - Batch operations with confirmation

### **Audit & Logging**
1. **Change Tracking**
   - Log all changes at EntityMaster level
   - User and timestamp tracking
   - Before/after value logging

2. **Plan Code Audit Log**
   - General changes tracking (not detailed record changes)
   - High-level audit trail

## 🎨 User Interface Requirements

### **Design Principles**
- **Consistency:** Match existing corporate design standards
- **Usability:** Intuitive navigation and workflows
- **Responsiveness:** Support for different screen sizes
- **Accessibility:** Follow accessibility guidelines

### **Key Interface Components**
1. **Agent Search & Selection**
   - Advanced search capabilities
   - Filter by multiple criteria
   - Quick selection tools

2. **Form-Based Data Entry**
   - Structured forms for agent information
   - Validation and error handling
   - Auto-save functionality

3. **Bulk Operations Interface**
   - Multi-select capabilities
   - Batch operation confirmations
   - Progress indicators

4. **Audit Trail Display**
   - Change history views
   - User activity tracking
   - Export capabilities

## 🔐 Security & Authentication

### **Authentication**
- **Method:** Active Directory integration
- **Single Sign-On:** Seamless integration with corporate systems
- **Session Management:** Secure session handling

### **Authorization**
- **Role-Based Access:** Different permission levels
- **Data Access Control:** Restrict access based on user roles
- **Audit Requirements:** Track all user actions

### **Data Security**
- **Encryption:** Secure data transmission and storage
- **Backup:** Regular database backups
- **Recovery:** Disaster recovery procedures

## 🔌 Integration Requirements

### **Database Integration**
- **Existing Database:** Maintain current SQL Server structure
- **Data Migration:** Seamless transition from Access
- **Backward Compatibility:** Ensure existing processes continue

### **External Systems**
- **Loan Platform Providers:** Worksheet and release form integration
- **Email Systems:** Automated email notifications
- **Reporting Systems:** Integration with existing reporting tools

## 📊 Performance Requirements

### **Response Times**
- **Page Load:** < 3 seconds for standard pages
- **Search Operations:** < 2 seconds for agent searches
- **Bulk Operations:** Progress indicators for long-running tasks

### **Scalability**
- **Concurrent Users:** Support multiple simultaneous users
- **Data Volume:** Handle growing agent database
- **System Growth:** Architecture supporting future expansion

## 🧪 Testing Requirements

### **Functional Testing**
- **Unit Tests:** Individual component testing
- **Integration Tests:** System integration testing
- **User Acceptance Testing:** End-user validation

### **Performance Testing**
- **Load Testing:** Multiple user scenarios
- **Stress Testing:** System limits validation
- **Volume Testing:** Large dataset handling

## 🚀 Deployment Requirements

### **Environment**
- **Platform:** Internal corporate network
- **Access:** Not publicly accessible
- **Infrastructure:** Azure cloud deployment

### **Deployment Process**
- **Staging Environment:** Pre-production testing
- **Production Deployment:** Zero-downtime deployment
- **Rollback Plan:** Quick rollback procedures

## 📋 Migration Strategy

### **Data Migration**
- **Access to Web:** Seamless data transition
- **Validation:** Data integrity verification
- **Testing:** Comprehensive migration testing

### **User Training**
- **Documentation:** User guides and training materials
- **Training Sessions:** Hands-on training for users
- **Support:** Ongoing user support

---

*Technical requirements based on stakeholder interviews and system analysis*
