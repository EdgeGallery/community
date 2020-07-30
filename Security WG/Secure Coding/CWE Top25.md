In order to improve the security and reliability of the EdgeGallery platform, we recommend that developers learn [CWE (Common Weakness Enumeration) Top25](https://cwe.mitre.org/top25/archive/2019/2019_cwe_top25.html) coding issues and corresponding security coding practices.

* * *

### Improper Input Validation

Ensure that your input is valid. If you're expecting a number, it shouldn't contain letters! Also why accept 100 chars, limit input to only what you need!

Reference: [http://cwe.mitre.org/data/definitions/20.html](http://cwe.mitre.org/data/definitions/20.html)|

### Improper Encoding or Escaping of Output

Improper encoding or escaping can allow attackers to change the commands that are sent to another component, inserting malicious commands instead.

Reference: [http://cwe.mitre.org/data/definitions/116.html](http://cwe.mitre.org/data/definitions/116.html)

### Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection')

Without sufficient removal or quoting of SQL syntax in user-controllable inputs, the generated SQL query can cause those inputs to be interpreted as SQL instead of ordinary user data.

Reference: [http://cwe.mitre.org/data/definitions/89.html](http://cwe.mitre.org/data/definitions/89.html)

### Failure to Preserve Web Page Structure (aka 'Cross-site Scripting')

Software does not neutralize or incorrectly neutralizes user-controllable input before it is placed in output that is used as a web page that is served to other users.

Reference: [http://cwe.mitre.org/data/definitions/79.html](http://cwe.mitre.org/data/definitions/79.html)

### Failure to Preserve OS Command Structure (aka 'OS Command Injection') =

Software constructs all or part of an OS command using externally-influenced input from an upstream component, but it does not neutralize or incorrectly neutralizes special elements that could modify the intended OS command when it is sent to a downstream component.

Reference: [http://cwe.mitre.org/data/definitions/78.html](http://cwe.mitre.org/data/definitions/78.html)

### Cleartext Transmission of Sensitive Information

Avoid transmit of sensitive or security-critical data in cleartext in a communication channel that can be sniffed by unauthorized actors. It should always be encrypted, using a secure, strong algorithm.

Reference: [http://cwe.mitre.org/data/definitions/319.html](http://cwe.mitre.org/data/definitions/319.html)

### Cross-Site Request Forgery (CSRF)

When a web server is designed to receive a request from a client without any mechanism for verifying that it was intentionally sent, then it might be possible for an attacker to trick a client into making an unintentional request to the web server which will be treated as an authentic request. This can be done via a URL, image load, XMLHttpRequest, etc. and can result in exposure of data or unintended code execution.

Reference: [http://cwe.mitre.org/data/definitions/352.html](http://cwe.mitre.org/data/definitions/352.html)

### Race Conditions

The program contains a code sequence that can run concurrently with other code, and the code sequence requires temporary, exclusive access to a shared resource, but a timing window exists in which the shared resource can be modified by another code sequence that is operating concurrently.

Reference: [http://cwe.mitre.org/data/definitions/362.html](http://cwe.mitre.org/data/definitions/362.html)

### Information Exposure Through an Error Message

Watch those stack traces! An error message should never include sensitive information about its environment, users, or associated data.

Reference: [http://cwe.mitre.org/data/definitions/209.html](http://cwe.mitre.org/data/definitions/209.html)

### Buffer Overflows

Software performs operations on a memory buffer, but it can read from or write to a memory location that is outside of the intended boundary of the buffer, thereby allowing a hacker to execute malicious instructions.

Reference: [http://cwe.mitre.org/data/definitions/119.html](http://cwe.mitre.org/data/definitions/119.html)

### External Control of Critical State Data

Avoid of be careful of storing critical state data into open readable configuration files, profiles, cookies, hidden form fields, environment variables, registry keys, or other locations, all of which can be modified by an attacker.

Reference: [http://cwe.mitre.org/data/definitions/642.html](http://cwe.mitre.org/data/definitions/642.html)

### External Control of File Name or Path

Never allow user input to control or influence paths or file names that are used in filesystem operations.

Reference: [http://cwe.mitre.org/data/definitions/73.html](http://cwe.mitre.org/data/definitions/73.html)

### Untrusted Search Path

Avoid exposure of critical resources using an externally-supplied search path that can point to resources that are not under the application's direct control.

Reference: [http://cwe.mitre.org/data/definitions/426.html](http://cwe.mitre.org/data/definitions/426.html)

### Improper Control of Generation of Code ('Code Injection')

Software constructs all or part of a code segment using externally-influenced input from an upstream component, but it does not neutralize or incorrectly neutralizes special elements that could modify the syntax or behavior of the intended code segment.

Reference: [http://cwe.mitre.org/data/definitions/94.html](http://cwe.mitre.org/data/definitions/94.html)

### Download of Code of anything without Integrity Check(checksums)

Never download source code, patches, updates or an executable from a remote location and executes the code without sufficiently verifying the origin and integrity of the code. This is typically achieved using checksums, or key based signing.

Reference: [http://cwe.mitre.org/data/definitions/494.html](http://cwe.mitre.org/data/definitions/494.html)

### Improper Resource Shutdown or Release

The program does not release or incorrectly releases a resource before it is made available for re-use. When a resource is created or allocated, the developer is responsible for properly releasing the resource as well as accounting for all potential paths of expiration or invalidation, such as a set period of time or revocation.

Reference: [http://cwe.mitre.org/data/definitions/404.html](http://cwe.mitre.org/data/definitions/404.html)

### Improper Initialization

Software does not initialize or incorrectly initializes a resource, which might leave the resource in an unexpected state when it is accessed or used. If you don't properly initialize your data and variables, an attacker might be able to do the initialization for you, or extract sensitive information that remains from previous sessions.

Reference: [http://cwe.mitre.org/data/definitions/665.html](http://cwe.mitre.org/data/definitions/665.html)

### Incorrect Calculation

Software performs a calculation that generates incorrect or unintended results that are later used in security-critical decisions or resource management. When attackers have control over inputs to numeric calculations, math errors can have security consequences. It might cause you to allocate far more resources than you intended - or far fewer

Reference: [http://cwe.mitre.org/data/definitions/682.html](http://cwe.mitre.org/data/definitions/682.html)

### Improper Authorization

Software does not perform or incorrectly performs an authorization check when an actor attempts to access a resource or perform an action. If you don't ensure that your software's users are only doing what they're allowed to, then attackers will try to exploit your improper authorization and exercise that unauthorized functionality.

Reference: [http://cwe.mitre.org/data/definitions/285.html](http://cwe.mitre.org/data/definitions/285.html)

### Use of a Broken or Risky Cryptographic Algorithm

The use of a non-standard, old or broken algorithm is dangerous because a determined attacker may be able to break the algorithm and compromise whatever data has been protected. Well-known techniques may exist to break the algorithm.

Reference: [http://cwe.mitre.org/data/definitions/327.html](http://cwe.mitre.org/data/definitions/327.html)

### Use of Hard-coded Password

Software contains a hard-coded password, which it uses for its own inbound authentication or for outbound communication to external components.

Example:

`DriverManager.getConnection(url, "scott", "tiger");`

`javap -c ConnMngr.class`

`22: ldc #36; //String jdbc:mysql://ixne.com/rxsql`

`24: ldc #38; //String scott`

`26: ldc #17; //String tiger`

Reference: [http://cwe.mitre.org/data/definitions/259.html](http://cwe.mitre.org/data/definitions/259.html)

### Incorrect Permission Assignment for Critical Resource

Software specifies permissions for a security-critical resource in a way that allows that resource to be read or modified by unintended actors.

Reference: [http://cwe.mitre.org/data/definitions/732.html](http://cwe.mitre.org/data/definitions/732.html)

### Use of Insufficiently Random Values

Software may use insufficiently random numbers or values in a security context that depends on unpredictable numbers. Be especially careful of this in virtualized environments. Quite often a VNF might be dependent on a host entropy source, and that source should always be trusted.

Reference: [http://cwe.mitre.org/data/definitions/330.html](http://cwe.mitre.org/data/definitions/330.html)

### Execution with Unnecessary Privileges

Your software may need special privileges to perform certain operations; wielding those privileges longer than necessary is risky.

Reference: [http://cwe.mitre.org/data/definitions/250.html](http://cwe.mitre.org/data/definitions/250.html)

### Client-Side Enforcement of Server-Side Security

Don't trust the client to perform security checks on behalf of your server. Attackers can reverse engineer your client and write their own custom clients.

Reference: [http://cwe.mitre.org/data/definitions/602.html](http://cwe.mitre.org/data/definitions/602.html)