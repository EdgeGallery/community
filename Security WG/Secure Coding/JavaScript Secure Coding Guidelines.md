# JavaScript Secure Coding Guidelines  

This coding standard consists of rules and recommendations, collectively referred to as guidelines. Rules are meant to provide normative requirements for code, whereas recommendations are meant to provide guidance that, when followed, should improve the safety, reliability, and security of software systems. 

For Detailed explanation of each of these Rule items please refer https://rules.sonarsource.com/javascript

## Rules  

***Rule-1*** Credentials should not be hard-coded. Credentials should be stored outside of the code in a configuration file, a database or secret management service.  
- Store the credentials in a configuration file that is not pushed to the code repository.  
- Store the credentials in a database.  
- Use the secret management service if exist.  

***Rule-2*** Sanitize all data read from the standard input before using it.  

***Rule-3*** Sanitize all command line arguments before using them. 
- Any user or application can list running processes and see the command line arguments they were started with. There are safer ways of providing sensitive information to an application than exposing them in the command line. It is common to write them on the process' standard input, or give the path to a file containing the information.  

***Rule-4*** Using sockets is security-sensitive.  
- Encrypt all data sent if it is sensitive. Usually it is better to encrypt it even if the data is not sensitive as it might change later.  
- Sanitize any input read from the socket.  
- Limit the number of sockets a given user can create. Close the sockets as soon as possible.  

***Rule-5*** Executing XPATH expressions is security-sensitive. Sanitize any user input before using it in an XPATH expression.  

***Rule-6*** Hashing data is security-sensitive.  
- For security related purposes, use only hashing algorithms which are currently known to be strong. Avoid using algorithms like MD5 and SHA1 completely in security contexts.  
- Do not define your own hashing- or salt algorithms as they will most probably have flaws.  
- Do not use algorithms that compute too quickly, like SHA256, as it must remain beyond modern hardware capabilities to perform brute force and dictionary based attacks.  
- Use a hashing algorithm that generate its own salts as part of the hashing. If you generate your own salts, make sure that a cryptographically strong salt algorithm is used, that generated salts are credential-specific, and finally, that the salt is applied correctly before the hashing.  
- Have both the salt and the hashed value in the relevant database record; during future validation operations, the salt and hash can then be retrieved from the database. The hash is recalculated with the stored salt and the value being validated, and the result compared to the stored hash.  
- The strength of hashing algorithms often decreases over time as hardware capabilities increase. Check regularly that the algorithms you are using are still considered secure. If needed, rehash your data using a stronger algorithm.  

***Rule-7*** Encrypting data is security-sensitive.  
- Generate encryption keys using secure random algorithms.
- When generating cryptographic keys (or key pairs), it is important to use a key length that provides enough entropy against brute-force attacks. For the Blowfish algorithm the key should be at least 128 bits long, while for the RSA algorithm it should be at least 2048 bits long.
- Regenerate the keys regularly.
- Always store the keys in a safe location and transfer them only over safe channels.
- If there is an exchange of cryptographic keys, check first the identity of the receiver.
- Only use strong encryption algorithms. Check regularly that the algorithm is still deemed secure. It is also imperative that they are implemented correctly. Use only encryption libraries which are deemed secure. Do not define your own encryption algorithms as they will most probably have flaws.
- When a nonce is used, generate it randomly every time.
- When using the RSA algorithm, incorporate an Optimal Asymmetric Encryption Padding (OAEP).
- When CBC is used for encryption, the IV must be random and unpredictable. Otherwise it exposes the encrypted value to crypto-analysis attacks like "Chosen-Plaintext Attacks". Thus a secure random algorithm should be used. An IV value should be associated to one and only one encryption cycle, because the IV's purpose is to ensure that the same plaintext encrypted twice will yield two different ciphertexts.
- The Advanced Encryption Standard (AES) encryption algorithm can be used with various modes. Galois/Counter Mode (GCM) with no padding should be preferred to the following combinations which are not secured:
> - Electronic Codebook (ECB) mode: Under a given key, any given plaintext block always gets encrypted to the same ciphertext block. Thus, it does not hide data patterns well. In some senses, it doesn't provide serious message confidentiality, and it is not recommended for use in cryptographic protocols at all.
> - Cipher Block Chaining (CBC) with PKCS#5 padding (or PKCS#7) is susceptible to padding oracle attacks.  

***Rule-8*** Using regular expressions is security-sensitive. Evaluating such regular expressions opens the door to Regular expression Denial of Service (ReDoS) attacks. In the context of a web application, attackers can force the web server to spend all of its resources evaluating regular expressions thereby making the service inaccessible to genuine users.  
- Check whether your regular expression engine (the algorithm executing your regular expression) has any known vulnerabilities. Search for vulnerability reports mentioning the one engine you're are using.
- Use if possible a library which is not vulnerable to Redos Attacks such as Google Re2.
- Remember also that a ReDos attack is possible if a user-provided regular expression is executed. This rule won't detect this kind of injection.  

***Rule-9*** Cross-document messaging domains should be carefully restricted.  HTML5 adds the ability to send messages to documents served from other domains. According to the specification:
- Authors should not use the wildcard keyword ( *) in the targetOrigin argument in messages that contain any confidential information, as otherwise there is no way to guarantee that the message is only delivered to the recipient to which it was intended.  

***Rule-10*** Using pseudorandom number generators (PRNGs) is security-sensitive.
- Use a cryptographically strong pseudorandom number generator (CSPRNG) like crypto.getRandomValues().
- Use the generated random values only once.
- You should not expose the generated random value. If you have to store it, make sure that the database or file is secure.  

***Rule-11*** Formatting SQL queries is security-sensitive
- Avoid building queries manually using formatting technics. If you do it anyway, do not include user input in this building process.
- Use parameterized queries, prepared statements, or stored procedures whenever possible.
- You may also use ORM frameworks such as Hibernate which, if used correctly, reduce injection risks.
- Avoid executing SQL queries containing unsafe input in stored procedures or functions.
- Sanitize every unsafe input.

***Rule-12*** Executing code dynamically is security-sensitive. 
- Regarding the execution of unknown code, the best solution is to not run code provided by an untrusted source.
- Do not try to create a blacklist of dangerous code. It is impossible to cover all attacks that way.
- Avoid using dynamic code APIs whenever possible. Hard-coded code is always safer.

***Rule-13*** Using shell interpreter when executing OS commands is security-sensitive.
- Arbitrary OS command injection vulnerabilities are more likely when a shell is spawned rather than a new process, indeed shell meta-chars can be used (when parameters are user-controlled for instance) to inject OS commands.
- Use functions that don't spawn a shell.

***Rule-14*** Having a permissive Cross-Origin Resource Sharing policy is security-sensitive.
- The Access-Control-Allow-Origin header should be set only for a trusted origin and for specific resources.

***Rule-15*** Writing cookies is security-sensitive
- Cookies should only be used to manage the user session. The best practice is to keep all user-related information server-side and link them to the user session, never sending them to the client. In a very few corner cases, cookies can be used for non-sensitive information that need to live longer than the user session.
- Do not try to encode sensitive information in a non human-readable format before writing them in a cookie. The encoding can be reverted and the original information will be exposed.
- Using cookies only for session IDs doesn't make them secure. 
- As a side note, every information read from a cookie should be Sanitized.

***Rule-16*** Web SQL databases should not be used.
- The Web SQL Database standard never saw the light of day. It was first formulated, then deprecated by the W3C and was only implemented in some browsers. (It is not supported in Firefox or IE.)
- Further, the use of a Web SQL Database poses security concerns, since you only need its name to access such a database.

***Rule-17*** Untrusted content should not be included.
-  Including content in your site from an untrusted source can expose your users to attackers and even compromise your own site. For that reason, this rule raises an issue for each non-relative URL.

***Rule-18*** Local storage should not be used.
- Session storage and local storage are HTML 5 features which allow developers to easily store megabytes of data client-side, as opposed to the 4Kb cookies can accommodate. While useful to speed applications up on the client side, it can be dangerous to store sensitive information this way because the data is not encrypted by default and any script on the page may access it.
- This rule raises an issue when the localStorage and sessionStorage API's are used.

***Rule-19*** Debugger statements should not be used.
- The debugger statement can be placed anywhere in procedures to suspend execution. Using the debugger statement is similar to setting a breakpoint in the code. By definition such statement must absolutely be removed from the source code to prevent any unexpected behavior or added vulnerability to attacks in production.

***Rule-20*** "alert(...)" should not be used.
- alert(...) as well as confirm(...) and prompt(...) can be useful for debugging during development, but in production mode this kind of pop-up could expose sensitive information to attackers, and should never be displayed.



How to Secure JavaScript Code
=============================

Knowing the most common attack vectors and vulnerabilities is an important step to securing your website. However, there are also JavaScript development best practices that should be followed to avoid these issues. While there is never a guarantee your code will be secure always, these steps will prevent many attacks by nature.

**Avoid using eval()** 

The eval() function is used by developers to run text as code, which is by nature a dangerous practice. In most cases, substitutions can be made to where these functions are not needed. Wherever possible, replace eval() with more secure functions.

**Use SSL/HTTPS**

SSL, or Secure Sockets Layer, is a way of encrypting the data users send across the web when interacting with your website. It is extremely important for pages where users input data (login pages, contact forms, cart, checkout, account) to be secured with SSL.

**Use CORS Headers**

CORS, or Cross-Origin Resource Sharing, is a header you can set that defines the sources allowed to reference your website’s resources. These rules can be placed in your Nginx configuration file, or if you use Apache, in your .htaccess file:

Access-Control-Allow-Origin: http://foo.example

**Define a Content Security Policy**

A Content Security Policy is a header you can set in your Nginx configuration file, or if you use Apache, in your .htaccess file. This policy allows you to define allowed sources for JavaScript code, styles, fonts, frames, media, and more. Your header will generally look like this:

Content-Security-Policy: default-src: 'self'; script-src: https://apis.google.com;

The above policy says that by default all sources should be the Host/website itself, and for JavaScript it will also accept apis.google.com. All other sources would be rejected.


JavaScript Best Practices
==============================================

**Cross-Site Scripting (XSS) Attacks**

Cross-Site Scripting is one of the most common browser-side vulnerabilities. XSS in itself is a threat that is brought about by the internet security weaknesses of client-side scripting languages, such as HTML and JavaScript. In XSS, attackers are able to manipulate legitimate but vulnerable web applications into performing malicious tasks.

XSS attacks can result in identity and data theft. They can even result in virus spreads and sometimes remote control over a user’s browser.

Prevention
    

- Filter input on arrival — whenever you get an input from the user, filter it as strictly as possible based on what is expected or valid input.
- Use appropriate response headers — to prevent XSS in HTTP responses that aren’t intended to contain any HTML or JavaScript, you can use the Content-Type and X-Content-Type-Options headers to ensure that browsers interpret the responses in the way you intend it to.
- Encode data when outputting — when user-entered data is output in HTTP responses, encode the output to prevent it from being recognized as active content.
- Content Security Policy (CSP)— if you enforce the right set of CSP rules, you can prevent the browser from executing things like in-line JavaScript, eval(), setTimeout() or any JavaScript that comes from an untrusted URL.


**Cross-Site Request Forgery (CSRF) Attacks**

CSRF or XSRF is an attack where the hacker takes over or impersonates the victim’s identity by hijacking the session cookie. This is possible when target sites authenticate requests solely using cookies and thereby allowing hackers to steal or hijack the cookies and impersonate a legitimate user. This attack can lead to account tampering, data theft, fraud and more. Targets include web applications like social media, in-browser email clients, online banking and web interfaces for network devices.

Prevention


- Always use SameSite Cookie Attribute for session cookies
- Referrer Header or Origin must be verified
- Consider implementing user interaction based protection for highly sensitive operations — user interaction based protection include re-authentication (password or stronger), one-time token, CAPTCHA. These can act as strong CSRF defence if implemented correctly.


## Analyzer Tools
- SonarQube


## References
https://wpengine.com/resources/javascript-security/  
https://rules.sonarsource.com/javascript
