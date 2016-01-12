# Deploy A Rackspace Private Cloud Environment

`heat stack-create -f rpc-11.1-*-template.yml -t 240 -P ansible_tags=<comma-separated-ansible-tags> [-e rpc-11.1-environment.yml] <stack-name>`

### Environment ###

Some settings should be private, and may be passed in through the use of a Heat Environment file. Below is an example of passing in Rackspace Cloud credentials for MaaS configuration.

**`rpc-11.1-environment.yml`**

```
parameters:
  rackspace_cloud_auth_url: 'https://identity.api.rackspacecloud.com/v2.0'
  rackspace_cloud_tenant_id: SomeTenantID
  rackspace_cloud_username: SomeUserName
  rackspace_cloud_password: SomeUsersPassword
  rackspace_cloud_api_key: SomeAPIKey
```

### Available Ansible Tags ###

* `nothing` - Do Nothing
* `prepare` - Prepare Environment (Default, Assumed If Using Any Below)
* `compute` - Install Compute
* `block`   - Install Block
* `ceph`    - Install Ceph MON & OSD 
* `object`  - Install Object
* `object_stand_alone` - Install Stand Alone Object (v11.0+ Only)
* `maas`    - Install MaaS



### Sample Deployments v11.1 ###

#### RPC v11.1 Full + MaaS

`heat stack-create -f rpc-11.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,ceph,object,maas -e rpc-11.1-environment.yml <stack-name>`

#### RPC v11.1 Full

`heat stack-create -f rpc-11.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,ceph,object -e rpc-11.1-environment.yml <stack-name>`

#### RPC v11.1 Standalone Swift + MaaS

`heat stack-create -f rpc-11.1-object-template.yml -t 240 -P ansible_tags=object_stand_alone,maas -e rpc-11.1-environment.yml <stack-name>`

#### RPC v11.1 Standalone Swift

`heat stack-create -f rpc-11.1-object-template.yml -t 240 -P ansible_tags=object_stand_alone -e rpc-11.1-environment.yml <stack-name>`



### Sample Deployments v11.0 ###

#### RPC v11.0 Full + MaaS

`heat stack-create -f rpc-11.0-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-11.0-environment.yml <stack-name>`

#### RPC v11.0 Full

`heat stack-create -f rpc-11.0-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object -e rpc-11.0-environment.yml <stack-name>`

#### RPC v11.0 Standalone Swift + MaaS

`heat stack-create -f rpc-11.0-object-template.yml -t 240 -P ansible_tags=object_stand_alone,maas -e rpc-11.0-environment.yml <stack-name>`

#### RPC v11.0 Standalone Swift

`heat stack-create -f rpc-11.0-object-template.yml -t 240 -P ansible_tags=object_stand_alone -e rpc-11.0-environment.yml <stack-name>`


### Sample Deployments v10.1 ###

#### RPC v10.1 Full (HA) + MaaS

`heat stack-create -f rpc-10.1-ha-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-10.1-environment.yml <stack-name>`

#### RPC v10.1 Full + MaaS

`heat stack-create -f rpc-10.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-10.1-environment.yml <stack-name>`

#### RPC v10.1 Full (HA)

`heat stack-create -f rpc-10.1-ha-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object -e rpc-10.1-environment.yml <stack-name>`

#### RPC v10.1 Full

`peat stack-create -f rpc-10.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object -e rpc-10.1-environment.yml <stack-name>`
