---
title: "Open Source Process"
weight: 20
type: docs
---

The OO Company (hereinafter referred to as the "Company") actively utilizes open source software in the development of products and services that include software. The Company must perform appropriate activities to detect open source security vulnerabilities and follow-up measures, and to comply with the obligations imposed by open source licenses when distributing software, in order to minimize open source risks. We follow the open source process to ensure these activities.

## 1. Open Source Process

The open source process defines the procedures that the Company must perform to comply with open source license obligations and resolve open source security vulnerabilities according to each development stage for developing and distributing software products and services. All members involved in the development/distribution of software products comply with the following 11 steps of the open source process.

![process](process.png)

The Company strives to provide safe and stable software products and services to customers by minimizing open source risks through the open source process.

The open source program manager should review the process at least once a year to spread internal best practices and improve areas that are lacking.

### (1) Identification of Open Source

The business department complies with the following matters at the software design stage.

- Identify the foreseeable open source usage status and check the license when designing the software.
- Check the obligations of each open source license. The obligations of each license can be checked in the Company's open source license guide: https://sktelecom.github.io/guide/use/obligation/
- Design the software considering the source code disclosure range of each open source license.

The open source program manager creates and publishes a guide on the obligations, restrictions, and rights of major open source licenses so that the business departments of the entire company can refer to it. This guide should include the following use cases so that general open source license use cases can be managed.

- Distribution in binary form
- Distribution in source form
- Integration with other open sources that trigger additional license obligations
- Inclusion of modified open source

The business department marks copyright and licenses in the source code according to the company's rules. The company's rules for marking copyright and licenses in the source code can be checked on the following page. (insert_link)

When the business department reviews the introduction of new open source, it first identifies the license. Check the license obligations, restrictions, and rights according to the company's open source license guide. If it is a license not explained in the company's open source license guide, ask the open source program manager about the possibility of introduction and precautions. Create a Jira Ticket for inquiries.

The open source program manager analyzes the obligations of the open source license and guides the software development organization.

- If there is any doubt, request advice from the legal manager and provide clear guidance.
- The newly analyzed license information is reflected in the company-wide license guide.

The security manager provides a guide for the company's security assurance.

### (2) Auditing Source Code

The business department requests an open source inspection according to the guidance of the IT manager and provides the source code.

The IT manager uses an open source analysis tool to inspect the open source and create an SBOM (Software Bill of Materials).

The open source program manager reviews whether the open source license obligations can be complied with and whether there is a conflict between the open source licenses, and if there is an issue, requests the business department to resolve it. Issue matters are created as Jira Tickets and assigned to the business department.

The security manager reviews the known vulnerabilities detected and provides a response guide to the business department according to the pre-defined Risk classification criteria. Risk is classified by CVSS (Common Vulnerability Scoring System) Score, and Critical Risk is advised to establish a plan that can be dealt with within 1 week.

| Risk | CVSS 2.0 | CVSS 3.0 | Recommended action schedule |
|---|:---:|:---:|:---:|
| Low | 0.0 - 3.9 | 0.0 - 3.9 | - |
| Medium | 4.0 - 6.9 | 4.0 - 6.9 | - |
| High | 7.0 - 10.0 | 7.0 - 8.9 | Within 4 weeks | 
| Critical | - | 9.0 - 10.0 | Within 1 week |


### (3) Resolving Issues

The business department resolves all problems found in the source code inspection stage.

Remove the open source that has become an issue or replace it with open source under a different license. In the case of security vulnerability issues, measures such as replacing with a version in which known vulnerabilities have been fixed are taken.

When the business department resolves all discovered issues, it resolves the Jira Ticket issue and requests a re-review.

### (4) Reviews

The open source program manager reviews whether all issues have been properly supplemented. If necessary, the source code inspection is re-performed using an open source analysis tool.

The security manager reviews whether all serious vulnerabilities have been resolved. If there are vulnerabilities that are difficult to resolve, the possibility of approval is reviewed considering the business form and service exposure status.

### (5) Approval

The open source program manager finally approves or rejects whether the open source compliance procedure has been properly performed. If rejected, it proposes a reason and a correction method to the business department.

### (6) Registration

The open source program manager finalizes the BOM to track the open source usage list for each version of the software.

The IT manager registers the finalized BOM in the system. The BOM includes a list of open sources included in the software for distribution and the following information.

- Product (or service) name and version of the software for distribution
- Open source list
  - Open source name / version
  - Open source license

The open source program manager finalizes the BOM to track the open source usage list for each version of the software.

### (7) Notices

The open source program manager creates an open source notice to comply with the notice obligation. The open source notice includes the following contents.

- Open source contact that can be contacted for open source related inquiries
- Notice content for each open source
  - Copyright
  - Open source license name
  - Copy of open source license
  - (If applicable) Written agreement to obtain a copy of the source code

The open source program manager creates an open source notice and delivers it to the business department. At this time, if the source code needs to be disclosed, it guides the business department on how to collect the source code to be disclosed.

The business department includes the open source notice when distributing the product. If it is a product with a screen, it takes measures so that the user can check it through the menu. (Example: App > Menu > Settings > Copyright Information > Open Source License)

The business department collects the source code to be disclosed by checking the source code disclosure range when using open source under a license that requires source code disclosure such as GPL, LGPL, etc.

- The source code collected to comply with the obligations of licenses such as GPL, LGPL, etc. must match the source code that constitutes the binary loaded on the product. In other words, the collected source code should be the same as the binary loaded on the product when built.

### (8) Pre-Distribution Verifications

The business department submits the following deliverables to demonstrate that open source compliance activities have been appropriately performed:

1. The final open source notice included in the product
2. Materials confirming the inclusion of the open source notice in the product (e.g., a screenshot showing the open source notice)
3. (If applicable) Source code to be disclosed (submitted as a single compressed file)

The open source program manager reviews the materials submitted by the business department to check for any issues.

### (9) Distribution

The open source program manager submits the compliance deliverables provided by the business department to the IT manager.

The IT manager registers the compliance deliverables on the company's open source distribution site.

### (10) Final Verifications

The open source program manager comprehensively verifies whether the compliance deliverables have been properly registered on the company's open source portal and whether they can be downloaded without issues from outside.

### (11) Monitoring

The open source program manager periodically checks for products with inadequate generation of open source compliance deliverables. They also operate a process to respond quickly to external inquiries. The detailed procedure for responding to external inquiries follows [2. External Inquiry Response Process].

The security manager operates a process to monitor and respond to newly known vulnerabilities. The detailed procedure for responding to new security vulnerabilities follows [3. New Security Vulnerability Management Process].

## 2. New Security Vulnerability Management Process

We adhere to the following process to take appropriate action according to the risk when a new security vulnerability is reported after a product/service has been launched in the market.

![](securityprocess.png)

### (1) Monitoring

The IT manager operates a system to monitor new security vulnerabilities. This system performs the following functions:

- It periodically collects information about newly disclosed security vulnerabilities.
- If an open source with a newly known vulnerability is used in a product/service that has already been released, it sends a notification to the business department manager responsible for that product/service. From the notification to the review, action, and resolution, everything is documented using the Jira Issue Tracker.

### (2) Initial Response

The security manager provides a response guide to the business department according to the predefined risk classification criteria. The risk is classified by the CVSS (Common Vulnerability Scoring System) score, and a plan that can be implemented within one week is recommended for Critical Risk.

| Risk | CVSS 2.0 | CVSS 3.0 | Recommended Action Schedule |
|---|:---:|:---:|:---:|
| Low | 0.0 - 3.9 | 0.0 - 3.9 | - |
| Medium | 4.0 - 6.9 | 4.0 - 6.9 | - |
| High | 7.0 - 10.0 | 7.0 - 8.9 | Within 4 weeks | 
| Critical | - | 9.0 - 10.0 | Within 1 week |

If a product/service that has already been released has a new security vulnerability, the business department establishes an action plan according to the response guide provided by the security manager.

If there are customers who need assurance, the business department notifies them of the confirmed known vulnerabilities by email or other means as necessary, depending on the risk.

### (3) Problem Resolution

The business department resolves the security vulnerability issue by deleting the problematic open source or replacing it with a patched version, according to the established action plan. Once all issues are resolved, a review is requested.

### (4) Review

The IT manager uses open source analysis tools to confirm whether the problem has been appropriately resolved.

### (5) Approval

The security manager reviews whether all serious vulnerabilities have been resolved. If there are vulnerabilities that are difficult to resolve, the approval is reviewed considering the business form and service exposure status.

### (6) Registration

The IT manager registers the SBOM, which has resolved the open source security vulnerability, in the system.

### (7) Notification

The open source program manager generates an open source notice based on the SBOM that has resolved the open source security vulnerability and delivers it to the business department.

The business department replaces the open source notice included in the product distribution.

The IT manager registers the modified open source notice on the company's open source distribution site.

### (8) Distribution

The business department redistributes the software version that has resolved the open source security vulnerability issue.

The security manager identifies whether there is risk information that needs to be disclosed to third parties, and if there is, it is delivered to the IT manager.

The IT manager registers the identified risk information on the open source website so that third parties can check it.

## 3. External Inquiry Response Process

If you respond quickly and accurately to open source compliance inquiries from outside, you can greatly reduce the risk of proceeding to litigation. To this end, companies comply with the following process to respond to external open source compliance inquiries.

![general-inquiry-process](general-inquiry-process.png)

### (1) Acknowledge

The open source program manager immediately notifies the requester that the inquiry has been received. At this time, the expected date of action is also notified. If the inquiry is unclear, additional explanation is requested to accurately understand the requester's intention.

The main contents of the inquiries and requests that require a response are as follows:

- Inquiry about whether open source has been used in a specific product or service
- Request for source code provision under the GPL, LGPL license mentioned in the written agreement
- Explanation and source code disclosure request for open source found in the product but not specified in the open source notice
- Request for provision of missing files and build methods in the source code disclosed due to obligations such as GPL, LGPL
- Request for copyright notice

The open source program manager creates a Jira Issue for the received request and records all the response situations in detail.

### (2) Inform

The open source program manager informs the requester that they are conducting open source compliance faithfully and that they are investigating the requester's inquiry. It is good to notify whenever the internal investigation progress is updated.

### (3) Investigate

The open source program manager conducts an internal investigation on the request. They check whether the compliance process has been appropriately performed for the version of the product in question through the BOM and documented review history. If necessary, they request advice from the legal manager.

If it is a matter that needs to be confirmed by a specific business department, the open source program manager requests an investigation from the business department. The business department that received the investigation request immediately checks whether there is a problem with the compliance deliverables and reports the results to the open source program manager.

### (4) Report

The open source compliance manager completes the internal investigation within the scheduled date of action and notifies the requester of the result.

- If the requester's inquiry was a misdirected point due to misunderstanding, they notify the requester and end the process without any additional action.
- If there is a problem, they notify the requester of the exact method and timing to fulfill the obligations of the relevant open source license.

### (5) Rectify / Notify

If an actual compliance issue is found in the internal investigation, the relevant business department performs all procedures necessary to resolve the compliance issue.

### (6) Report

After resolving the issue, they immediately notify the requester and provide the best way to confirm that the issue has been resolved.

### (7) Improve

In case of a compliance issue, the case is reviewed through the OSRB meeting, the circumstances of the occurrence of the problem are identified, and the process is improved so that the problem does not recur.