**测试用例名称**: Tosca文件校验

**所属测试套:** 社区遵从性测试

**测试用例目的:** 校验tosca文件存在性、tosca文件必填字段、Source值得有效性

**测试用例执行步骤:** 
1. 打开csar格式的应用包
2. 在TOSCA-Metadata目录下，校验是否存在TOSCA.meta文件
3. 打开TOSCA.meta文件
4. 校验是否存在如下字段：TOSCA-Meta-File-Version,CSAR-Version,Created-By,Entry-Definitions
5. 校验Entry-Definitions字段的值路径是否正确，在该路径下是否存在对应的文件

**测试预期结果:** 
1.在TOSCA-Metadata目录下，存在TOSCA.meta文件
2.TOSCA.meta文件中存在TOSCA-Meta-File-Version,CSAR-Version,Created-By,Entry-Definitions字段
3.Entry-Definitions字段的值是有效的文件路径，该文件存在