*********************************************
EdgeGallery Security Compliance Test Case 6-2
*********************************************

|  Test ID | EdgeGallery Security Compliance Test Case 6-2  |
| ------------ | ------------ |
|Test tool   |N/A   |
|  Test description |Check whether a mechanism exists for re-login after the browser window times out.   |
| Configuration steps  |1. Known website address<br>                                                              	2.Web services are running properly.<br> 3.The login authentication module is available for web services.<br> 4.The user name and password are always correct.  |
| Step 1|Log in to the system using a normal user name and password.   |
|Step 2   |Increase the idle time of the browser window (11 minutes) by one minute. <br> Note: Currently, the validity period is one day.   |
| Step 3  | Refresh the browser and check whether you need to log in again.<br>Note: You can also log in to the back-end web server and check the value of session-timeout in the web.Xml file.  The value of session-timeout indicates the session timeout interval.  |
| Test verdict  | The session timeout interval is less than or equal to 10 minutes.  You need to log in again after refreshing the browser.  |