# EdgeGallery Security Compliance Test Case 6-5

|Test ID   |EG-TST-SEC-CP-6-5   |
| ------------ | ------------ |
|Test tool   |N/A   |
|Test description   |Successful authentication and re-authentication must generate a new session and session ID   |
|Configuration Steps   |1.Known website address<br>https://x.x.x.x:x ; https://x.x.x.x:x ;  https://x.x.x.x:x<br>2. Web services are running properly.<br>3. The login authentication module is available for web services.<br>4. The user name and password are always correct.   |
|Step 1   |Log in to the system using a normal user name and password. The user manager module is invoked after login.   |
|Step 2   |Record the session ID generated during the first login.   |
|Step 3   |Log out of the system and log in to the system again. Record the session ID generated after the second login.   |
|Step 4   |Check whether the two session IDs are the same.   |
|Test verdict   |If the two session IDs are different, a new session and session ID are generated.   |