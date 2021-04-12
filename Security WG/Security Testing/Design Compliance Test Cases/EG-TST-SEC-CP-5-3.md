# EdgeGallery Security Compliance Test Case 5-3

| Test ID  |EG-TST-SEC-CP-5-3   |
| ------------ | ------------ |
|Test tool   |Burpsuite   |
|Test description   |The length of the interface input parameter is verified. The length of the body is not limited.<br>Uploading files: The file type and file name format are verified based on services to prevent ZIP bombs from being met. The maximum file size is x MB.   |
|Configuration Steps   |Web services are running properly.<br>The website to be tested has an upload page.<br> https://x.x.x.x:x ;  |
|Upload file test   |   |
|Step 1   |Log in to the website,Open the file upload page<br>https://x.x.x.x:x   |
|Step 2   |Click Browse, select a local JAR file, and click OK.   |
|Step 3   |If the client restricts the type of the file to be uploaded (for example, the .csar file is allowed), select the .csar file to be uploaded. Configure HTTP Proxy (burpsuite) to intercept http requests; click the "Browse" button again ,select csar file to upload |
|step 4   |In the HTTP request data intercepted by burpsuite, modify test.csar to test.jar, and then send the request data   |
|Step 5   |Click Browse, select the csar folder with a high compression ratio greater than 100 MB, and upload the folder. Log in to the tested system to check whether the CPU usage, memory usage, and disk usage increase abruptly. note: If the product has no bomb attack design, this step can be omitted |
|Input validate test   |   |
|Step 1   |Check the code to check whether the length of the input parameter is verified.   |
|Step 2   |Add the interface document based on the interfaces involved in the interface document.<br>Use Postman to send a request, transfer parameters whose lengths are beyond the specified length, and check whether the request fails to be sent.   |
|Step 3   |Log in to the web page and test the length of all parameters that need to be entered to check whether the parameter length meets requirements or an error is reported.   |
|Test verdict   |The system checks the size of a file to be uploaded. If the file size is too large, the system cannot be attacked and files other than the .csar format cannot be uploaded.<br>The request for transferring a parameter whose length is beyond the specified length fails, and a message is displayed indicating that the parameter length is too large.   |