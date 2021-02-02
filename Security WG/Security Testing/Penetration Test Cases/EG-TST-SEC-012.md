# EG-TST-SEC-012



| Test Case ID            | EG-TST-SEC-012                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Port Scanning**                                            |
| Test purpose            | Scan the openness of server ports, find ports that should not be opened (especially unsafe ports), and open ports based on the principle of minimization. |
| Test description        |                                                              |
| Test Mode               | Manual + Tool                                                |
| Test tool               | Nmap                                                         |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Nmap:<br/>Visit https://nmap.org/download.html and download Nmap，and click to Install.。 |
| config step 2           | (Take Windows as an example) Enter "nmap -v" in cmd, if return "Starting Nmap x.xx (https://nmap.org)" indicating that the installation is successful. |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Get IP address of website:<br/>Method ①: Use the ping command. "ping www.xxx.com", you can see the ip address;<br/>Method ②: Query through multiple pings. You can visit "http://ping.chinaz.com/www.xxx.com", to get the ip address. <br/>Recommended to use method ②, because the result is more accurate. |
| Test step 2             | Use Nmap to scan ports:<br/>Enter the command in cmd: "nmap x.x.x.x -Pn -sS -p1-65535 -T4 -D rnd:8 --data-length 41"<br/>Wait for a while (usually 1-5 minutes),  Nmap will return the scan results. |
| Test step 3             | Check whether there are high-risk ports in the open ports (such as 135, 139, 445, 3389, etc.)<br/> |
| Test step 4             | Compare with the port matrix documents, to see if ports not specified in the port matrix documents are opened. |
| **Expected result**     | In test step 3: No opened high-risk ports were found;<br/>In test step 4: No opened ports that not specified in the port matrix documents were found. |
| References              |                                                              |

