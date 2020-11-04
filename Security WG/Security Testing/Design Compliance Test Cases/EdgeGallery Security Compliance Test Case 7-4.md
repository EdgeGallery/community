# EdgeGallery Security Compliance Test Case 7-4

|Test ID   |EG-TST-SEC-CP-7-4   |
| ------------ | ------------ |
|Test tool   |Burpsuite   |
|Test description   |Test whether the session attributes are properly set<br>The application should use each attribute correctly, such as security attributes; httpOnly attributes; path attributes; expired attributes|
|Configuration Steps   |1.The system is running properly.<br>core point: 119.8.36.45<br>edge point: 159.138.30.89<br>2.Obtaining Product Source Codes and Design Documents   |
|Step 1   |Login page, enter username and password to log in ,Use blocking proxy burpsuite to view cookies；Check whether the cookie attribute settings are normal |
|Step 2   |Check by viewing the cookies of your browser，Check whether the cookie attribute settings are normal |
|Test Verdict   | |