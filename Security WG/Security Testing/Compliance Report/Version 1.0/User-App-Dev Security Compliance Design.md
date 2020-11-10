# AppStore V1.0版本相关需求安全规则项涉及情况  

|需求名称|涉及的规则项|
|----|----|
|[【AppStore】Optimization for the existing features ](https://gitee.com/OSDT/dashboard/issues?id=I1XR68) | Rule 3.8|
|[【UserMgmt】EdgeGallery平台需要优化用户管理，进行分权分域设置 ](https://gitee.com/OSDT/dashboard/issues?id=I1QGSH) | Rule 3.8|

## 【AppStore】Optimization for the existing features

### Rule 3.8

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | Unauthorized test |
| Implementation details  | The portal limit the operator permission to delete and download app package, only the uploader can operate it. The backend limit the delete permission, the download will follow the user rule setting. |
| Related APIs            | GET /apps/{appId}/packages/{packageId}/action/download<br/> GET /apps/{appId}/packages/{packageId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【UserMgmt】EdgeGallery平台需要优化用户管理，进行分权分域设置

### Rule 3.8

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | Unauthorized test |
| Implementation details  | Add the new role GUEST for AppStore/Developer/MECM platform, GUEST can not create or modify anything in the platfrom, read only |
| Related APIs            | All GET APIs need to be add the GUEST role, and other type APIs can not |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |