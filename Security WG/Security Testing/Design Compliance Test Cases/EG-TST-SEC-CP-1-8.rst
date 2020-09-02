+----------------------------------+----------------------------------+
| Over privileged access for       |                                  |
| system user should be prohibited |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-1-8                |
+----------------------------------+----------------------------------+
| Test purpose                     | When eg service are deployed     |
|                                  | make sure that system is         |
|                                  | provided with separate system    |
|                                  | user/group for eg services       |
|                                  | execution and same user is       |
|                                  | assigned with right access       |
|                                  | privileged.                      |
|                                  |                                  |
|                                  | Effect: +ve                      |
+----------------------------------+----------------------------------+
| Test tool                        | Use linux based tools like ls to |
|                                  | verify the privilege             |
+----------------------------------+----------------------------------+
| Test description                 | After eg is installed, verify    |
|                                  | each file delivered by eg        |
|                                  | installer are provided with ONLY |
|                                  | required privileged access.      |
|                                  |                                  |
|                                  | .                                |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | NA                               |
+----------------------------------+----------------------------------+
| Test steps                       | Check this steps for different   |
|                                  | installation methods like        |
|                                  | docker, debian, zip based, etc   |
+----------------------------------+----------------------------------+
| step 1                           | Install the eg services          |
+----------------------------------+----------------------------------+
| step 2                           |  check                           |
|                                  |                                  |
|                                  | 1. avoid provide root level      |
|                                  | access if not required,          |
|                                  |                                  |
|                                  | 2. Limit sudo access only at     |
|                                  | required places.                 |
|                                  |                                  |
|                                  | 3. each file is provided access  |
|                                  | to only eg user                  |
|                                  |                                  |
|                                  | 4. Log files are generated only  |
|                                  | with eg user                     |
|                                  |                                  |
|                                  | 5. config files provided with    |
|                                  | required eg user access          |
+----------------------------------+----------------------------------+
| Test verdict                     | Make sure none of step 2 violate |
|                                  | defined check                    |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service install document)        |
+----------------------------------+----------------------------------+