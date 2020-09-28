# EdgeGallery Security Compliance Test Case 6-4

|Test ID   |EG-TST-SEC-CP-6-4   |
| ------------ | ------------ |
|Test tool   |WebScarab   |
|Test description   |Check whether session information is cleared during logout.   |
|Configuration steps   |1.Known Website Address<br> https://119.8.62.179:30091 ; https://119.8.62.179:30092 ;  https://119.8.62.179:30093<br> 2.Web services are running properly.<br>3.A page with the logout function exists.   |
|Step 1   |Log in to the system using a normal user name and password.   |
|Step 2   |Enable the WebScarab and configure the WebScarab to intercept GET and POST requests.   |
|Step 3   |In the browser, set the proxy server IP address to 127.0.0.1 and port number to 8008.   |
|Step 4   |Perform some operations (such as modifying personal information) on the web page. All these operations<br> are intercepted by the WebScarab. In this case, click Accept Changes on the WebScarab page that is displayed.<br>Button. The request is recorded by WebScarab.   |
|Step 5   |Click Logout on the web page.   |
|Step 6   |Click the Manual Request tab on the WebScarab page, select the URL request generated in step 4 from the Previous Requests drop-down list, and click Fetch Response to resend the URL request.   |
|Step 7   |View the command output on the Raw tab page of the Response page of the WebScarab. If the operation in step 4 can be successfully performed, a security vulnerability exists.   |
|Test verdict   |"HTTP/101 302 Moved Temporarily" Is Displayed on the Raw Tab Page of the Response of the WebScarab. Pages that can be accessed only by login cannot be accessed, and tasks that can be completed only by login cannot be performed.   |
|Remark   |If there are multiple logout pages, repeat the test procedure to test all the logout pages.   |