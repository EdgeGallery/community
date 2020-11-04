# EdgeGallery Security Compliance Test Case 7-8

|Test ID   |EG-TST-SEC-CP-4-6   |
| ------------ | ------------ |
|Test tool   |NA   |
|Test description   |Reuse random numbers and prohibit key pairs in encryption<br>Only Nonce can be used at the moment, and can only be used once. Use techniques such as request increment, time-based and/or challenge response to ensure the uniqueness of random numbers.|
|Configuration Steps   |1.The system is running properly.<br>core point: 119.8.36.45<br>edge point: 159.138.30.89<br>2.Obtaining Product Source Codes and Design Documents   |
|Step 1   |Check the code and confirm that Nonce is always regenerated and not reused.|
|Test Verdict   |Nocec value will generate a new value for each appinstainceID |