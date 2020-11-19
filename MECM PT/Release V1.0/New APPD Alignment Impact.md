New APPD Alignment Impact
-------------------------

# LCM Controller
1. Accessing MainServiceTemplate.mf
Changes: MainServiceTemplate.mf --> positioning-service.mf

2. Accessing feilds from MainServiceTemplate.mf <br/>
a. DeploymentType  <br/>
Changes: It doesn't exists anymore - Change implementation to use HELM as default if there is no deploymentType for release 1.0

3. Accessing HELM charts
No Change

Pre-Requisite 
- Dependency on AK/SK implementation in MECM
- Dependency on AK/SK implementation in MEP-Auth
- Dependency on new HELM charts in working conditions

# APM
1. Accessing MainServiceTemplate  <br/>
Changes: Definitions/MainServiceTemplate.yaml --> APPD/Definitions/MainServiceTemplate.yaml

2. In MainServiceTemplate YAML checking feild <br/>
a. Image & version Name  <br/>
Changes:  <br/>
topology_template/node_templates/vdu_compute_type_node/image  <br/>
topology_template/node_templates/vdu_compute_type_node/image_version  <br/>
-->  <br/>
topology_template/node_templates/vdu_compute_type_node/sw_image_data/name

# APPO
No Impact for current code  <br/>
Dynaminc orchestration feature (to check dependencies) needs to consider this