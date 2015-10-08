# Deploy A Rackspace Private Cloud v11.0 Reference Architecture Environment

`heat stack-create -f rpc-11.0-*-template.yml -t 240 -P ansible_tags=<comma-separated-ansible-tags> [-e rpc-11.0-environment.yml] <stack-name>`

### Environment

Some settings should be private, and may be passed in through the use of a Heat Environment file. Below is an example of passing in Rackspace Cloud credentials for MaaS configuration.

**`rpc-11.0-environment.yml`**

```
parameters:
  rackspace_cloud_auth_url: 'https://identity.api.rackspacecloud.com/v2.0'
  rackspace_cloud_tenant_id: SomeTenantID
  rackspace_cloud_username: SomeUserName
  rackspace_cloud_password: SomeUsersPassword
  rackspace_cloud_api_key: SomeAPIKey
```

### Available Ansible Tags

* `nothing` - Do Nothing
* `prepare` - Prepare Environment
* `compute` - Install Compute v11.0
* `block` - Install Block v11.0
* `object` - Install Object v11.0
* `object_stand_alone` - Install Stand Alone Object v11.0
* `maas` - Install MaaS v11.0

### Sample Deployments v11.0

#### RPC v11.0 Full + MaaS

`heat stack-create -f rpc-11.0-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-11.0-environment.yml <stack-name>`

#### RPC v11.0 Full

`heat stack-create -f rpc-11.0-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object <stack-name>`

#### RPC v11.0 Standalone Swift + MaaS

`heat stack-create -f rpc-11.0-compute-template.yml -t 240 -P ansible_tags=object_stand_alone,maas -e rpc-11.0-environment.yml <stack-name>`

#### RPC v11.0 Standalone Swift

`heat stack-create -f rpc-11.0-compute-template.yml -t 240 -P ansible_tags=object_stand_alone <stack-name>`

### Sample Deployments v10.1

#### RPC v10.1 Full (HA) + MaaS

`heat stack-create -f rpc-10.1-ha-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-10.1-environment.yml <stack-name>`

#### RPC v10.1 Full + MaaS

`heat stack-create -f rpc-10.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object,maas -e rpc-10.1-environment.yml <stack-name>`

#### RPC v10.1 Full (HA)

`heat stack-create -f rpc-10.1-ha-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object <stack-name>`

#### RPC v10.1 Full

`heat stack-create -f rpc-10.1-compute-block-object-template.yml -t 240 -P ansible_tags=compute,block,object <stack-name>`
