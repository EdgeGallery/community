# EdgeGallery Security Compliance Test Case 5-1

| Test ID  | EG-TST-SEC-CP-5-1    |
| ------------ | ------------ |
|Test tool   |postman   |
|Test description   |Account is locked after multiple login failure attempt |
|Configuration Steps   |Create eg user with required  details like username/password in user-mgmt |
|Step 1   |Login with proper username with invalid password multiple times, on 4th attempt onwards  should lock the user account for 15 mins (or predefined timeout)|
|Test verdict   |make sure 403 status code is reported by the API in response  http status code |