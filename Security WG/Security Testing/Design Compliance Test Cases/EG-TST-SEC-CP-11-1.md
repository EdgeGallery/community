
# EdgeGallery Security Compliance Test Case 11-3

|Test ID   |EG-TST-SEC-CP-11-3   |
| ------------ | ------------ |
|Test tool   |NA   |
|Test description   |Detect that the mirrored application directory is implanted in Webshell|
|Configuration Steps   |1.The system is running properly.<br>core point: x.x.x.x<br>edge point: x.x.x.x<br>2.Obtaining Product Source Codes and Design Documents   |
|Step 1   |Scan the "Web application files" from the Docker container through the Webshell scanning engine WEBDIR on the host side,These files can be obtained through the "docker cp" command or the "dynamic mount" mechanism|
|Step 2   |Found the webshell implanted by the attacker|
|Test Verdict   |Check if found the webshell implanted by the attacker |