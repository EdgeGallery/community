# Monitoring Application V1.0 Security Design

|Component Name |Related Security Design Rule|
|----|----|
| [【Monitoring App】Backend |  Rule (1.1, 2.1, 2.2), (1.3, 5.3), 1.5, 1.7, 7.4, 7.6, (8.1, 8.2), (9.1, 9.2, 9.4) <br/> Exception for Token based authentication/authorization  |  
| [【Monitoring App】Frontend |    Rule (1.1, 2.1, 2.2), (1.3, 5.3), 1.5, 7.4, 7.6, (8.1, 8.2), (9.1, 9.2, 9.4) <br/> Exception for user management (login feature not supported) |

## Backend

### Rule 1.1, 2.1, 2.2
Note: All three rules related to exposing rest api's with https endpoint. 

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 M2M Authentication – HTTPS/Token.<br/> 2.1 M2M Encryption – HTTPS.<br/> 2.2 TLS1.2 and TLS1.3. |
| Implementation details  | All rest api's must be exposed with https endpoint |
| Related APIs            | POST /v1/monitor/video<br/> POST /v1/monitor/cameras<br/> GET /v1/monitor/cameras/{name}/{rtspurl}/{location}<br/> GET /v1/monitor/cameras<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/messages<br/> DELETE /v1/monitor/persons/{person_name}<br/> DELETE /v1/monitor/cameras/{camera_name}<br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.3, 5.3 

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.3 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit. |
| Implementation details  | All security measures applied to the get camera, delete person and camera interfaces it includes input parameter length validation and logging. |
| Related APIs            | GET /v1/monitor/cameras/{name}/{rtspurl}/{location}<br/> DELETE /v1/monitor/persons/{person_name}<br/> DELETE /v1/monitor/cameras/{camera_name}<br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.5

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.5 Non Root User + File permissions <br/> |
| Implementation details  | Verify that monitoring service container should be running in the non-root user and also validate the file permission inside container |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |


### Rule 1.7

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.7 No sensitive information/hints in Logs/REST response <br/> |
| Implementation details  | In logs no sensitive information should be logged such as token, password and filepath information |
| Related APIs            | POST /v1/monitor/video<br/> POST /v1/monitor/cameras<br/> GET /v1/monitor/cameras/{name}/{rtspurl}/{location}<br/> GET /v1/monitor/cameras<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/messages<br/> DELETE /v1/monitor/persons/{person_name}<br/> DELETE /v1/monitor/cameras/{camera_name}<br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 7.4

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 7.4 Server must have mechanism to restrict the file types during uploading of files to the directories which contain web page files. <br/> |
| Implementation details  | The upload video and add persons interface should validate the extension of the file names |
| Related APIs            | POST /v1/monitor/persons <br/> POST /v1/monitor/video <br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 7.6

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 7.6 Testing cross-site request forgery <br/> |
| Implementation details  | Implemented the CORS origin for monitoring service application |
| Related APIs            | POST /v1/monitor/video<br/> POST /v1/monitor/cameras<br/> GET /v1/monitor/cameras/{name}/{rtspurl}/{location}<br/> GET /v1/monitor/cameras<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/messages<br/> DELETE /v1/monitor/persons/{person_name}<br/> DELETE /v1/monitor/cameras/{camera_name}<br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1, 8.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID |  8.1 Product document update for all REST interfaces .<br/> 8.2 Port matrix document update for monitoring service. |
| Implementation details  | Need to verify that product document and port matrix document |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.1, 9.2, 9.4

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID |  9.1 Do not log unsanitized user input.<br/> 9.2 Sufficient Logging.<br/>9.3 Do not add Sensitive Information into Log or Log file. |
| Implementation details  | All rest api's should not log unsanitized user input and also sufficient logging should be there for all rest apis and do not add the senstive information to log file |
| Related APIs            | POST /v1/monitor/video<br/> POST /v1/monitor/cameras<br/> GET /v1/monitor/cameras/{name}/{rtspurl}/{location}<br/> GET /v1/monitor/cameras<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/persons<br/> GET /v1/monitor/messages<br/> DELETE /v1/monitor/persons/{person_name}<br/> DELETE /v1/monitor/cameras/{camera_name}<br/> |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

