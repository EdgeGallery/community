Introduction
============

**Threat Modeling** is a process to analyze the architecture of a product and identify security issues in it’s design.

The purpose of threat modeling is to provide defenders with a systematic analysis of what controls or defenses need to be included, given the nature of the system, the probable attacker's profile, the most likely attack vectors, and the assets most desired by an attacker. Identifying threats early allows developers to address them when they are relatively easy and cost-effective to fix.

Who Should Threat Model?
========================

*   Project lead who owns overall process

*   Project developers who design architecture diagrams

*   Project testers who want to Identify threats in analyze phase and use threat models to drive test plans

Methodology
===========

There are numerous threat modeling methodologies are available for implementation.

The four methodologies listed below are most well known:

*   STRIDE

*   P.A.S.T.A.

*   Trike

*   VAST

In this article, we will take a look at the STRIDE methodology.

How To Threat Model Using STRIDE
================================

**STRIDE** is a model of threats developed by Praerit Garg and Loren Kohnfelder at Microsoft for identifying computer security threats.

There are five major threat modeling steps in STRIDE:

1.  Defining system and use scenarios

2.  Creating data flow diagrams

3.  Identifying threats

4.  Mitigating threats

5.  Validating that threats have been mitigated


![](https://edgegallery.atlassian.net/wiki/download/attachments/12517688/RE2K1Za.png?api=v2)

1\. Defining system and use scenarios
-------------------------------------

This step involves characterizing the system and analyzing the system from the eyes of adversary.

Characterizing the system means to gather background information about the system and to identify the areas that need to be addressed.

Following background information need to be gathered:

1.  **Use scenarios:** Identifying use scenarios is very important as neglecting these can result in a vulnerability. Use scenarios are generally identified by architects and end users. These can be used by security testing team for security testing and identifying the attack paths. **Use scenario means the situation/ environment that how a system will be used or not used or not used on terms of configuration and security goals and non goals.** Following data need to be recorded for use scenarios:

    *   Numerical Id: Each use scenario should be given a unique identification number.

    *   Description: write a description explaining following two points. First a description of use scenario and second is to mention whether use scenario is supported or not.

2.  **External dependencies:** External dependencies means the dependencies on outside resources and security policies. Identifying these is very important as if a threat from a external dependency is ignored it may become a valid vulnerability. Following data need to be recorded:

    *   Numerical Id: Each external dependency should be assigned a numerical id.

    *   Description: write a description giving details about a external dependency.

    *   External Security notes reference: External security notes from one component can be cross referenced with external dependencies from other components within the application.

3.  **External security notes:** External security notes act as a means to provide users information about the security and integration for the system. External security notes are used to validate external dependencies and can be used as a mitigation against a threat. Following information need to be recorded in case of an external security note:

    *   Numerical Id: Each security note should be assigned a unique identification number.

    *   Description: Write a description explaining details about the note.

4.  **Internal security notes:** These explains the compromise made while designing and implementing system security. Following information needs to be recorded while identifying internal security notes:

    *   Numerical Id: Each identified internal security note should be assigned a unique numerical id.

    *   Description: Write a description explaining what security compromise was done and why compromise has been done

5.  **Implementation assumptions:** These are collected during the design phase, listing the details of features that will be implemented later. Following data need to be recorded while identifying internal implementation assumptions:

    *   Numerical Id: Each identified internal implementation assumption

    *   Description: Write a description explaining procedure to implement the features.  

The next thing to do is viewing the system as an adversary. Which processes and functions are visible and accessible to the attacker. Using these exposed services adversary formulates the goals to attack the system.

Following are the series of steps:

1.  **Identify the Entry/Exit points:** Entry point means the point from where the data enters the application and Exit point means the point from where the data leaves the application. For the purpose of threat modeling following things need to be recorded for Entry/Exit point:

    *   Numerical ID: Assign a numerical id to each entry point and to each exit point for cross referencing with threats and vulnerabilities.

    *   Name: Each entry and exit point should assigned a name and also identify its purpose.

    *   Description: write a description explaining what exactly happens at that entry/exit point and also identify the trust levels that exits at that point.

2.  **Identify the assets:** The main goal of an adversary is to gain access to an asset. Assets also act a pass through point for an adversary, as one assets often interact with other assets in the system. Thus it is important to identify the assets that need to protected in a system from an unauthorized access. This task is done by a team of security experts. In order to document the list of assets they collect following data:

    *   Numerical Id: Each asset should be assigned a numerical Id for cross-referencing with threats and vulnerabilities.

    *   Name: Assign a name to asset identified.

    *   Description: Write an explanation about why an asset need protection.

3.  **Identify the trust levels:** Each entry/exit points are assigned trust values in order to define the privileges that an external entity has to access and affect the system.Following data need to recorded while identifying trust levels:

    *   Numerical Id: A numerical Id should be assigned to each trust level for cross referencing with threats and vulnerabilities.

    *   Name: Assign a name to each trust level.

    *   Description: Write a description explaining trust levels in more detail with outlining its purpose.

2\. Creating data flow diagrams
-------------------------------

This step involves visual represents the system using Data Flow Diagrams (DFD).

Start with an overview which has:

*   A few external interactors

*   One or two processes

*   One or two data stores (maybe)

*   Data flows to connect them

### Elements in a DFD:

*   **Process**  
    Each process in a DFD is given a unique number where sub process will have a number prefixed with parent process number. Process means an entity that performs a specific task on a given data. Following is the shape for a process:

![](https://images.gitee.com/uploads/images/2020/0708/095750_3838ca0e_5645267.png)

*   **Multiple process**  
    This means process has sub process and the sub process number is prefixed by the parent process number. For example parent process number is 1. Then sub process will have number 1.1 and sub sub process will have number 1.1.1 and so on. Shape for Multiple process is as follows:

![](https://images.gitee.com/uploads/images/2020/0708/095750_c4669580_5645267.png)

*   **External entity**  
    It can only interact at Entry point or exit point and is located outside the system. It may only interact with process or multiple process. It can be either source of data or destination of data. Below is the shape for an external entity used in DFD:

![](https://edgegallery.atlassian.net/wiki/download/attachments/12517688/3-135.png?api=v2)

*   **Data store**  
    It is the place where data is stored or from where data is retrieved. It can only interact with process or multiple process. Shape for Data Store is as follows:

![](https://images.gitee.com/uploads/images/2020/0708/095750_e238a1f8_5645267.png)

*   **Data flow**  
    This is used to show the movement of data between the elements. Below is the shape for Data Flow:

![](https://images.gitee.com/uploads/images/2020/0708/095750_d9c8480d_5645267.png)

*   **Trust boundary**  
    It is a boundary between trust levels or privileges. Processes talking across a network always have a trust boundary. Following is the shape for trust boundary:

![](https://images.gitee.com/uploads/images/2020/0708/095750_837c65e6_5645267.png)

DFD starts with a overall context level diagram that represents the whole system as a single multiple process. Each node is then a more detailed DFD representing other processes.

Following is a example.

![](https://images.gitee.com/uploads/images/2020/0708/095750_981ef84a_5645267.png)

**Note: Don’t forget to update diagrams as product changes.**

3\. Identifying threats
-----------------------

After creating data flow diagrams, next step is to identify the threats.

Identifying threats is a 3-step process where first step involves analyzing each entry/exit point, second steps involves identifying the nature and type of critical processing occurring at entry/exit points and third and the last step involves thinking and describing how entry/exit point might be attacked. Identifying threats is not an easy process to do. It involves asking questions like: “Is it possible for an adversary to gain access to asset without being audited or by skipping access controls or by acting as another user?”

STRIDE provides a mnemonic for security threats in six categories:

| Property        | Threat                     | Definition                                                   |
| --------------- | -------------------------- | ------------------------------------------------------------ |
| Authentication  | **S**poofing               | Involves illegally accessing and then using another user's authentication information, such as username and password |
| Integrity       | **T**ampering              | Involves the malicious modification of data. Examples include unauthorized changes made to persistent data, such as that held in a database, and the alteration of data as it flows between two computers over an open network, such as the Internet |
| Non-repudiation | **R**epudiation            | Associated with users who deny performing an action without other parties having any way to prove otherwise—for example, a user performs an illegal operation in a system that lacks the ability to trace the prohibited operations. Non-Repudiation refers to the ability of a system to counter repudiation threats. For example, a user who purchases an item might have to sign for the item upon receipt. The vendor can then use the signed receipt as evidence that the user did receive the package |
| Confidentiality | **I**nformation Disclosure | Involves the exposure of information to individuals who are not supposed to have access to it—for example, the ability of users to read a file that they were not granted access to, or the ability of an intruder to read data in transit between two computers |
| Availability    | **D**enial of Service      | Denial of service (DoS) attacks deny service to valid users—for example, by making a Web server temporarily unavailable or unusable. You must protect against certain types of DoS threats simply to improve system availability and reliability |
| Authorization   | **E**levation of Privilege | An unprivileged user gains privileged access and thereby has sufficient access to compromise or destroy the entire system. Elevation of privilege threats include those situations in which an attacker has effectively penetrated all system defenses and become part of the trusted system itself, a dangerous situation indeed |

Different threats affect each DFD element type. For each item on the DFD, apply relevant parts of STRIDE.

| **Element**     | **S** | **T** | **R**      | **I** | **D** | **E** |
| --------------- | ----- | ----- | ---------- | ----- | ----- | ----- |
| External Entity |   x   |       |     x      |       |       |       |
| Process         |   x   |   x   |     x      |   x   |   x   |   x   |
| Data Source     |       |   x   | It depends |   x   |   x   |       |
| Data Flow       |       |   x   |            |   x   |   x   |       |

4\. Mitigating threats
----------------------

Till this point all threats have been identified and the next step is mitigating the identified threats.

5\. Validating that threats have been mitigated
-----------------------------------------------