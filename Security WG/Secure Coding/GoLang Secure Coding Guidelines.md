# GoLang Secure Coding Guidelines  

This coding standard consists of rules and recommendations, collectively referred to as guidelines. Rules are meant to provide normative requirements for code, whereas recommendations are meant to provide guidance that, when followed, should improve the safety, reliability, and security of software systems.  

For Detailed explanation of each of these Rule items please refer https://slscan.io/en/latest/secure-development/go/

## Rules

***G101:*** Look for hard coded credentials.
- The use of hard-coded passwords increases the possibility of password guessing tremendously. 

***G102:*** Bind to all interfaces.
- Binding to all network interfaces can potentially open up a service to traffic on unintended interfaces, that may not be properly documented or secured. Look for a string pattern “0.0.0.0” that may indicate a hardcoded binding to all network interfaces. 

***G103:*** Audit the use of unsafe block.  
- Using the unsafe package in Go gives you low-level memory management and many of the strength of the C language but also gives flexibility to the attacker of your application. The pointer arithmetic is one of the examples from the unsafe package which can be used for data leak, memory corruption or even execution of attackers own script. 

***G104:*** Audit errors not checked.  
- Really useful feature of Golang is the ability to return a tuple of a result and an error value from a function. There is an unspoken rule in Golang that the result of a function is unsafe until you make check the error value. Many security exploits can be performed when the error value is not checked. 

***G106:*** Audit the use of ssh.InsecureIgnoreHostKey.  
- Insecure Host Keys can compromise the host security.  

***G107:*** Url provided to HTTP request as taint input.  
- Getting an URL from an untrusted source like user input gives the ability of an attacker to redirect your application to bad websites and perform additional attacks.  

***G108:*** Profiling endpoint automatically exposed on /debug/pprof.  

***G109:*** Potential Integer overflow made by strconv.Atoi result conversion to int16/32.  

***G110:*** Potential DoS vulnerability via decompression bomb.  

***G201:*** SQL query construction using format string.  
- SQL injection is one of the top security issues developers make and the consequences of this can be severe. Using the format string function in the fmt Golang package to dynamically create an SQL query can easily create a possibility for SQL injection. The reason is that the format string function doesn't escape special characters like ' and it's easy to add second SQL command in the format string. 

***G202:*** SQL query construction using string concatenation.  

***G203:*** Use of unescaped data in HTML templates.  

***G204:*** Audit use of command execution.  

***G301:*** Poor file permissions used when creating a directory.  

***G302:*** Poor file permissions used with chmod.  

***G303:*** Creating tempfile using a predictable path.  

***G304:*** File path provided as taint input. 
- Trying to open a file provided as an input in a variable. The content of this variable might be controlled by an attacker who could change it to hold unauthorised file paths form the system. In this way, it is possible to exfiltrate confidential information or such.  

***G305:*** File traversal when extracting zip archive.  

***G306:*** Poor file permissions used when writing to a new file.  

***G307:*** Deferring a method which returns an error.  

***G401:*** Detect the usage of DES, RC4, MD5 or SHA1.  

***G402:*** Look for bad TLS connection settings.  

***G403:*** Ensure minimum RSA key length of 2048 bits.  

***G404:*** Insecure random number source (rand).  

***G501:*** Import blocklist: crypto/md5.  

***G502:*** Import blocklist: crypto/des.  

***G503:*** Import blocklist: crypto/rc4.  

***G504:*** Import blocklist: net/http/cgi.  

***G505:*** Import blocklist: crypto/sha1.  

***G601:*** Implicit memory aliasing of items from a range statement.  

## References
- https://github.com/securego/gosec
- https://slscan.io/en/latest/secure-development/go/
- https://github.com/OWASP/Go-SCP/blob/master/dist/go-webapp-scp.pdf
- https://securego.io/docs/rules/rule-intro.html
- https://checkmarx.gitbooks.io/go-scp/content/
