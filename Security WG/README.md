# Security Working Group

## Introduction

EdgeGallery security working group dedicated to improve EdgeGallery security through architecture, documentation, code review and vulnerability management.

EdgeGallery security working group is responsible for receiving and responding to security issues reported from the community, providing security guidance and carrying out community security governance.

This directory is used by the security working group to store related documents, such as community security procedures, security guidelines and meeting notes.

## Scope

The overall goal for EdgeGallery security working group is to ensure secure and trusted operation of the EdgeGallery platform and MEC applications contributed through it, via focus on:

- Security of the EdgeGallery platform
  - Project contribution scanning as part of project infrastructure
  - Security of the platform as deployed
- Trust in MEC applications
- Vulnerability management

## Acceptance Criteria for new feature/PR

All contributors must check and make sure the below criteria's are met before raising Merge/Pull Request. If any violations the request can be rejected.

- No Major Security vulnerabilities exist in the project/code. (Design guideline issues or Critical and Major static check issues)
- No known CVE security vulnerabilites exist in project/code. Known CVE security vulnerability not resolved in the industry can be exception for this.
- All static check tools Critical, Major and Minor issues must be resolve and cleared.

## Current Status

The scope above and status related to the goals is summarized in the following table.

| **Area**                      | **Goal**                                                     | **Status**                                        | **Coordinator**                                              |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------- | ------------------------------------------------------------ |
| Project contribution scanning | EdgeGallery project contributions will be verified to the extent possible as free from issues related to licensing and security vulnerability. | Project code scan tools are being assessed.       |   |
| EdgeGallery platform security | EdgeGallery platforms as deployed must be resistant to threats, including common attacks and risk to (or by) platforms integrated with. | Assessing detailed goals, capabilities, and gaps. | Project PTLs                                                 |
| MEC app security              | MEC apps as contributed to and distributed through EdgeGallery platform will be verified to the extent possible as free from issues related to bugs and security vulnerability. | Assessing detailed goals, capabilities, and gaps. |                                                              |
| Vulnerability management      | Deal with vulnerabilities in a timely manner                 | Assessing detailed goals, capabilities, and gaps. | Project PTLs                                                 |

## Members
| **Name** | **Affiliation** | **Email**          |  **Self Nominate as Chair (Y/N)** | **Self Nominate as Co-Chair (Y/N)** |
|----------|-----------------|--------------------|-----------------------------------|-------------------------------------|
| Jing Lu  | Huawei          | lvjing5@huawei.com |               -                   |                 Y                   |
| Satish Karunanithi  | Huawei          | satishk@huawei.com |               -                    |                 -                   |
| Rundong Cheng  | Huawei          | chengruidong@huawei.com |               -                    |                 -       
| 彭育  | Huawei          | perry.peng@huawei.com |               -                    |                 -       


* Initial member signup now open

## Mailing List

* EdgeGallery security mailing list: security@edgegallery.groups.io

* To subscribe or unsubscribe, please visit: [https://edgegallery.groups.io/g/security](https://edgegallery.groups.io/g/security)