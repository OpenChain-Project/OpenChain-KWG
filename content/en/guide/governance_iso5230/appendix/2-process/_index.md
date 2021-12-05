---
title: "2. Open Source Compliance Process (Sample)"
weight: 2
type: docs
---

OOO Corporation (hereinafter referred to as the "Company") actively uses open source software (hereinafter referred to as "Open Source") while developing products and services including the software. When a company distributes its software, it should perform activities to comply with the obligations imposed by the open source license, which is called open source compliance.

## 1. Process for software development/distribution

This open source compliance process defines the procedures a [company] should follow to comply with its open source license obligations for each stage of development for developing and distributing software products and services. All employees involved in developing/distributing software products should follow these 10 steps of the Open Source Compliance Process.

![general-osc-process](general-osc-process.png)

### 1. Identification of Open Source

The development team should adhere to the following during the software design phase.

- Identify predictable open source usage and check licenses while designing software.
- Check the obligations for each open source license. You can check the obligations for each license in the company's Open Source Licensing Guide.
- Design software considering the source code disclosure scope of each open source license.

Open source program managers should write a guide on the obligations, restrictions, and rights of frequently used open source licenses, and make them available for reference to the development team.

The development team should display the copyright and license in the source code according to the company's policy. The copyright and license notation rules in the company's source code can be found on the following page. : (insert_link)

When a development team needs to use a new open source, first identify the license. Check your license obligations, restrictions, and rights according to your company's Open Source Licensing Guide. If the license is not described in the company's open source license guide, ask the open source program manager whether it can be introduced or not. Create a Jira Ticket and inquire.

Open source program managers guide the software development team by analyzing their open source license obligations.

- If in doubt, seek advice from the Legal Department to provide clear guidance.
- Add newly analyzed open source licenses to the guide.

### 2. Auditing Source Code

The development team requests open source audit by providing the source code according to the guidance of the infrastructure team.

The development team uses the open source analysis tool provided by the infrastructure team to audit the open source and generate the open source BOM.

The open source program manager reviews whether the obligations of the open source license can be complied with and whether there is an open source license conflict, and if there is an issue, ask the development team to resolve it. Create issues with Jira Tickets and assign them to the development team.

### 3. Resolving Issues

The development team should resolve any issues found during the source code inspection phase. Take action, such as removing the open source that has become an issue, or replacing it with an open source under a different license.

When the development team resolves all issues found, Resolve the Jira Ticket issue and request a review.

### 4. Reviews

Open source program managers review that all issues have been properly addressed. If necessary, re-audit the source code using an open source analysis tool.

### 5. Approval

The open source program manager should finally approve or reject whether the open source compliance process has been properly performed. In case of rejection, explain the reason and suggest to the development team how to fix it.

### 6. Registration

The open source program manager confirms the BOM for tracking the list of open source usage by version of the software.

The person in charge of infrastructure registers the confirmed BOM in the system. Include in the BOM a list of the open sources included with the supplied software and information such as:

- Product (or service) name and version of the supplied software
- Open Source List
   - Open source name / version
   - Open source license

### 7. Notices

Open Source Program Managers create Open Source Notices to comply with notice obligations. Include the following in the Open Source Notice.

- Open source contact information for external inquiries related to open source
- Notice by open source
  - Copyright notice
  - Open source license name
  - A copy of the open source license
  - Written Offer to receive a copy of the source code (if applicable)

The open source program manager creates an Open Source Notice and delivers it to the development team. In this case, if it is necessary to disclose the source code, guide the development team on how to collect the source code to be disclosed.

The development team should enclose the Open Source Notice when distributing the product. In the case of a product with a screen, take measures so that the user can check it through the menu. (Example: Apps > Menu > Settings > Copyright Information > Open Source License)

If the development team uses open source under a license that requires source code disclosure, such as GPL or LGPL, check the source code disclosure scope for this and collect the source code to be disclosed.

- The source code collected to comply with license obligations such as GPL and LGPL should match the source code that creates the binaries loaded in the product. In other words, when the compiled source code is built, it should be the same as the binary loaded on the product.

### 8. Pre-Distribution Verifications

The development team should submit the following artifacts demonstrating that the open source compliance activities were properly conducted.

1. Final Open Source Notice included in the product
2. Materials confirming that the product includes Open Source Notice (eg, screen capture image showing Open Source Notice)
3. (if applicable) source code to be disclosed (compressed and submitted in one file)

The open source program manager should review the data submitted by the development team and check for any abnormalities.

### 9. Distribution

Open source program managers should submit compliance artifacts submitted by the development team to the infrastructure team.

The infrastructure team registers the compliance artifacts on the company's open source distribution site.

### 10. Final Verifications

The open source program manager should comprehensively check whether the compliance product is registered on the company's open source portal without any abnormality or whether it is downloaded from outside the company.

## 2. External Inquiry Response Process
If you respond quickly and accurately to open source compliance inquiries from outside, you can greatly reduce the risk of going to a lawsuit. Therefore, you should follow the following process to respond to external open source compliance inquiries.

![general-inquiry-process](general-inquiry-process.png)

### 1. Acknowledge

The open source program manager immediately informs the requester that the inquiry has been received. In this case, inform the requester of the expected date of action. Since it's important to know exactly what the requester's intent is, ask for further clarification if the inquiry is unclear.

The main contents of inquiries and requests that require response are as follows.

- Inquiries about whether open source has been used for certain products and services
- Request to provide source code under the GPL, LGPL license mentioned in the Written Offer
- Request for clarification of open source found in the product and disclosure of source code even though it is not specified in the Open Source Notice
- Request to provide missing files and build methods in the source code published due to GPL, LGPL, etc.
- Request for copyright notice

The open source program manager creates a Jira Issue for the received request and records all responses in detail.

### 2. Inform

The open source program manager informs the requester that it is faithfully performing open source compliance and is investigating the requester's inquiry. Notify the requestor whenever possible internal investigation progress is updated.

### 3. Investigate

The open source program manager conducts an internal investigation of the request. Check the BOM and documented review history to ensure that the compliance process has been properly implemented for the version of the product in question. Seek advice from the Legal Department if necessary.

If a specific development team needs confirmation, the open source program manager should ask the development team to investigate. The development team requested to be investigated immediately identifies any issues with the compliance artifacts and reports the findings to the open source program manager.

### 4. Report

The open source program manager should complete the internal investigation within the due date for action and inform the requester of the results.

- If the requester's complaint was a misunderstanding rather than a compliance issue, notify the requester without further action and terminate the procedure.
- If any compliance issues are discovered, inform the requester of the exact method and timing to fulfill the obligations of the applicable open source license.

### 5. Rectify

If an internal investigation reveals an actual compliance issue, the development team should take all necessary steps to resolve the compliance issue.

### 6. Report

After resolving the issue, notify the requester immediately and provide the best way to confirm that the issue has been resolved.

### 7. Improve

If there are compliance issues, conduct an OSRB meeting to review the case, find out how the issue arose, and improve the process so that the issue does not recur.
