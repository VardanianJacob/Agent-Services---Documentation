**Agent Services MVP**

**1\. Technology Stack:**  
**Frontend:**

- **Blazor (C\#)** \- core frontend framework across all projects. Must align with existing portal modules and component library.  
- **Razor Components / .NET 8** \- Used for views, data binding, and reactive forms.  
- **UI Kit** \- Reuse of existing reusable Blazor components (cards, grids, forms). Styles and layouts remain consistent with the current portal.

**Backend:**

- **C\# / .NET 8 API layer** \- Business logic, data validation, workflow, audit, and integrations.  
- **Microsoft SQL Server** \- Central relational DB for Agent, Entity Master, Licensing references, commissions, and documents metadata.  
- **Entity Framework Core** \- ORM for database communication.

**Deployment:**

- **Azure DevOps** \- Repositories, pipelines, deployments, and environment management.  
- **Hosting / Environments** \- Dev/Test/UAT/Prod \- Standard four-tier deployment model.

**Additional:**

- **Azure Active Directory (SSO \+ MFA)** \- Unified authentication provider across Plateau systems; supports 2FA and user/role sync with Microsoft 365 identities.  
- **E-Signature** \- Existing e-sign solution; integration via REST API for sending, tracking, and retrieving signed docs.  
- **Progress ShareFile** \- Default repository for master policies and signed agreements, includes built-in e-sign capability.  
- **DMZ Layer \+ Internal API Gateway** \- All agent-facing endpoints exposed via DMZ; internal communication via secure internal APIs protected by firewalls and WAF.  
- **Existing Licensing Web Module (SQL-backed)** \- To be reused or connected via internal API; only email automation is missing.  
- Internal Email Service (SMTP / Microsoft 365 API) \- Used for workflow notifications and reminders.

**Feature List V1**

| Feature | Description | Est. |
| :---- | :---- | :---- |
| Agent Portal Auth | Login screen for the Agent Portal |  |
| Agent Intake Editable Form | Smart, validated web form replacing the current PDF.  |  |
| Agent Intake Form Attachments | Attachments sections for the submitted form |  |
| Agent Notifications Board | Displays workflow messages, actions and reminders. |  |
| Operations Portal Auth | Integrate the module with Azure AD; Map Azure AD groups to internal roles (Admin, Operator, Senior Officer) |  |
| Operations Dashboard | Show all entities, allow filtering and searching; Allow navigation to the Entity Details by clicking on the row. |  |
| Operations Dashboard Widgets | Show summary widgets as cards \- total agents, pending approvals, awaiting signature, licensing in progress |  |
| Agent Entity Details View | Show sections:  agent details \- tax id, status, name, loan platform, etc.;  commissions and GA Agreement \- commissions level, reinsurance, max. limits;  products \- risk form, term and other similar to current MS Access view;  agreements & master policies \- documents section, e-sign;  licensing \- if Licensing Required should be a link to Licensing Dashboard;  Tracking \- Entity and statuses history based on audit trail (for the admin only), comments and change requests history.  All sections should be editable. All changes should be tracked in the tracker sections.  Any important notifications should be visible as a banner at the top of the screen, and allow the user to navigate to the section.  Based on the automation flow, some features should be blocked until the Senior Officer or Admin approves The Operations Manager should be able to generate an email or in-app notification to the Agent or Senior Officer. Messages and replies should be visible inside the entity they relate to   |  |
| Senior Officer Dashboard | Show all entities awaiting approval (allow viewing all), allow filtering and searching; Allow navigation to the Entity Details by clicking on the row. |  |
| Entity Review Page | SO don’t need to edit records. We allow this role review only \- full agent profile, commission data, documents prepared by operations, ability to view or download each PDF and upload with signature, leave comments.SO should have the possibility to confirm all reviewed data and documents; update the status; sign documents, return an entity to the Operations queue with required comments, and view AuditEvery action performed by the Senior Officer must be logged Signature certificates and PDFs are stored in ShareFile.After approval entity status changes to Approved / Waiting for Licensing The Licensing Manager receives a notification or an assigned task. Once licensing is complete status moves to Active. |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

