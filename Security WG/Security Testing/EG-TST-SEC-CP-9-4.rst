+----------------------------------+----------------------------------+
| Avoid Logging of Excessive Data. |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-9-4                |
+----------------------------------+----------------------------------+
| Test purpose                     | Suppress large numbers of        |
|                                  | duplicate log messages and       |
|                                  | replace them with periodic       |
|                                  | summaries. For example, syslog   |
|                                  | may include an entry that states |
|                                  | "last message repeated X times"  |
|                                  | when recording repeated events.  |
|                                  | Support a maximum size for the   |
|                                  | log file that can be controlled  |
|                                  | by the administrator.            |
+----------------------------------+----------------------------------+
| Test tool                        |                                  |
+----------------------------------+----------------------------------+
| Test description                 |                                  |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | NA                               |
+----------------------------------+----------------------------------+
| Test steps                       |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Examine the system log           |
+----------------------------------+----------------------------------+
| Test verdict                     | confirm only minimum data are    |
|                                  | logged.                          |
+----------------------------------+----------------------------------+
| References                       |                                  |
+----------------------------------+----------------------------------+
