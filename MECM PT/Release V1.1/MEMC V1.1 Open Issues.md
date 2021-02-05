# MECM V1.1 Open Issues:
|Requirement | Security Rule | 
|-----------|-------------|----------|
|[【MECM】支持容器镜像管理Support Container Image Manage ](https://gitee.com/OSDT/dashboard/issues?id=I2E3V8)| Master key how to get? Implement like MEP or can obtain key during
 installation?<br/>4.5 Use a secure random number generator to generate keys.<br/>Image/Package scanning for virus/tampering:<br/>
11.1 Software packages / Application images in repository must not contain virus softwares. The inner software integrity protection mechanism can be implemetated to cross check the tampering of images.<br/>
11.2 Check the confidentiality of the warehouse image. Whether the container (+image) is confidential, that is, whether the image is run by the target user<br/>
11.3 Detect that the mirrored application directory is implanted in Webshell   | 
|【MECM】MECM 支持本地边缘自治 Edge Autonomous| Login/Logout ?<br/> Token ?<br/> Existing APIs ?  | 
|--| Multi-Tenancy:<br/>
12.2. Virtual CPU's, memories, storage devices, data and networks must be isolated among tenants so that confidentiality and privacy of tenants is maintained.<br/>
12.3. Interference between tenants because of tenant workloads or others must be taken care. For example an overload created by one tenant may negatively impact the performance of another tenant.<br/>
12.4. Must have an access control mechanism employing a large number of authorization rules, across conflicting policy domains, for large numbers of users.  | 
