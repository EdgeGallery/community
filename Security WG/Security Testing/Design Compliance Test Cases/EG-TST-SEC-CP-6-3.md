# EdgeGallery Security Compliance Test Case 6-3

|Test ID   |EG-TST-SEC-CP-6-3   |
| ------------ | ------------ |
|Test tool   |N/A    |
|Test  description   |Protects application sessions from information disclosure. Ensure that the session data is not used by other sessions or is invisible. The session does not access the session data.   |
|Configuration Steps   |1.Known website address<br> https://x.x.x.x:x ; https://x.x.x.x:x ;  https://x.x.x.x:x <br> linux:x.x.x.x  <br>2.Web services are running properly.<br>3.The login authentication module is available for web services.<br>The user name and password are always correct. |
|Step 1   |Log in to the system using a normal user name and password, and manually obtain the token ID from the<br> browser.<br>Note: The loginusermgmt interface is invoked twice and then the mecm login interface is invoked.   |
|Step 2   |Use Postman to send a request, enter a correct token ID in the header, and send the request twice.<br>Note: The loginusermgmt interface is invoked twice and then the mecm login interface is invoked.   |
|Step 3   |Check whether the session IDs and token returned by the two clients are the same.   |
|Step 4   |Check whether the log and response sent by the request contain sessionID or token.   |
|Test verdict   |The log and response do not contain sessionID. The Postman sends two requests. If the token ID is incorrect, the request fails.   |