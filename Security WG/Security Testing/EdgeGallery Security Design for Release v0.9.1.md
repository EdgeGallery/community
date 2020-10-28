
## a non-root user is added to the dockerfile, a non-root user is used to start, and the file directory Permission 
***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts. |
| Implemetation details   | Review the Dockerfile to confirm Docker are run as a non-root user |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. accessed the appstore/developer/mecm Dockerfile <br>2. create a non-root account,its username and groupname must be non-root. <br>3. Set this account as the default user to log in to docker or k8s pod. <br>4. Enter the project's home directory, create some useful directories, such as configuration directory, log directory, certificate directory, etc., set the permissions to 750 or 700 according to the rules, and set the user as the newly created user in the previous step, and copy the project result file or Initialize files to these directories.<br>5. Use the USER command to switch to the newly created non-root user, and then use the java -jar command to run the program|
| GUI input example       | NA             |
| Additional Info         | NA |

## Account is locked after multiple login failures  
***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 5.1 Anti-automation must be in place to prevent breached credential testing, brute forcing, and account lockout attacks. |
| Implemetation details   | Design user login scripts to simulate brutal login attempts, confirm the user account will be locked out.  |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. go to login home page. <br>2. in put the right username and wrong password. <br>3. can not login, and repeated login failed three times, will locked this account. <br>4. unlock in 5 minutes.  |
| GUI input example       | NA             |
| Additional Info         | NA |

## IP Information is added to the interface log
***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | Sufficient Logging |
| Implemetation details   | 9.2 Ensure that all security-related successes and failures be logged. When security-critical events are not logged properly, such as a failed login attempt, this can make malicious behavior more difficult to detect and may hinder forensic analysis after an attack succeeds |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | accessed the appstore/developer/mecm, and then login to the host to find the user-mgmt/appstore-fe/developer-fe/mecm-fe logs, all of the api logs have been added the clientIP. |
| GUI input example       | NA             |
| Additional Info         | NA |


## the application must limit the number of active concurrent sessions
***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 5.2 The application must limit the number of active concurrent sessions. |
| Implemetation details   | Design test case to establish as many concurrent sessions as possible and confirm that the number of active concurrent sessions is limited. |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | the default max link number is 200 in the springboot, and we(hubing) have a test over 200 links that will can not get a new link. no need to modify this number. |
| GUI input example       | NA             |
| Additional Info         | NA |

