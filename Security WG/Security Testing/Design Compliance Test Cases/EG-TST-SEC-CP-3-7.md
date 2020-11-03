# EdgeGallery Security Compliance Test Case 3-7

|Test ID   |EG-TST-SEC-CP-3-7   |
| ------------ | ------------ |
|Test tool   |OWASP ZAP   |
|Test description   |Evaluate whether the application stores sensitive information in a location accessible to the client<br>Check if the application does not leak any sensitive data into the browser cache|
|Configuration Steps   |1.The system is running properly.<br>core point: 119.8.36.45<br>edge point: 159.138.30.89<br>2.Obtaining Product Source Codes and Design Documents   |
|History test  | |
|Step 1   |Login page, enter username and password to log in  |
|Step 2   |Click the browser's "back" button to check whether unauthenticated users can access the previously displayed sensitive information |
|Cache test   |   |
|Step 1   |Login page, enter username and password to log in |
|Step 2   |And check whether the browser requires instructions not to cache any data for each page of the package, <br>for example: Cache-Control: no-cache, no-store；Expires: 0；Pragma: no-cache  |
|Test Verdict   |1.If the tester can access the previous page but not the new page by pressing the "back" button, this is not an authentication issue, but a browser history issue. If these pages contain sensitive data, it means that the application does not prohibit the browser from storing it.<br> 2. And check whether the browser asks not to cache any data on each page of the package. If it contains, it means that the browser is not cache sensitive. data |