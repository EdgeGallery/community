EdgeGallery uses [Snyk](https://snyk.io/product/) to monitor its projects and deployed code for open source vulnerabilities.

Snyk is an open source security platform for finding out vulnerabilities in source code of an application. This works effectively in containerized applications as well. It provides:

*   Severity of vulnerability and classifies them as major minor or critical

*   Description of the vulnerability

*   A fix to that vulnerability

**Snyk Vulnerability Report for EdgeGallery:** [https://app.snyk.io/org/edgegallery/](https://app.snyk.io/org/edgegallery/)

Guideline for fixing vulnerabilities in EdgeGallery projects
------------------------------------------------------------

### Step 1. Evaluate and prioritize vulnerabilities

Developers can filter detected vulnerabilities in EdgeGallery projects according to exploit maturity to see whether a specific vulnerability has an exploit in the wild and if so, how mature that exploit is.

In this way, developers can prioritize and attend to the most important and risky vulnerabilities first.

The filter appears as follows:

![](https://edgegallery.atlassian.net/wiki/download/attachments/363979/uuid-f0f1776f-26b7-09f6-99f7-db2d9df85b5e-en.png?api=v2)

These values are available:

*   **Mature:** a published code exploit that can easily be used for this vulnerability is available.

*   **Proof of concept:** a published, theoretical proof-of-concept or detailed explanation that demonstrates how to exploit this vulnerability is available.

*   **No known exploit:** neither a proof-of-concept code nor an exploit were found for this vulnerability, or are not publicly available.

*   **No data**: this value indicates one of the following:

    *   The issue is not a vulnerability (but rather, a license issue);

    *   The ecosystem is not currently supported by Snyk (Linux); or

    *   The project was imported prior to the release of this feature. Reimport the project in order to scan for this data.

The **Exploit maturity** filter is available from any detailed **Projects** page. To access to the **Exploit maturity** filter:

1.  Log in to Snyk.

2.  Go to the detailed **Projects** page for any of your projects. (Note: currently each project page is accessible by project PTL only)

![](https://edgegallery.atlassian.net/wiki/download/attachments/363979/uuid-414712da-c99d-1416-4948-e5859438d11d-en.gif?api=v2)

EdgeGallery demands each project to fix all vulnerabilities with **High/Medium severity** and **Mature/Proof of concept exploit maturity,** and recommends each project to fix all other vulnerabilities.

### Step 2. Remediate vulnerabilities

Developers can fix vulnerabilities in two ways. Either by upgrading the direct dependencies to a vulnerability free version or by patching the vulnerability.

EdgeGallery recommends upgrading the direct dependencies to a vulnerability free version.

#### Upgrading package versions to fix

Snyk will always recommend the smallest upgrade of a dependency to resolve the vulnerability. To resolve a vulnerability in a transitive dependency Snyk will calculate the dependency tree for the project and determine the minimum upgrade to the direct dependency which will result in a vulnerability free version of the indirect dependency.

Developers can check the minimum fixed version in each vulnerability’s summary page.

![](https://edgegallery.atlassian.net/wiki/download/attachments/363979/Snipaste_2020-03-04_10-33-26.png?api=v2)