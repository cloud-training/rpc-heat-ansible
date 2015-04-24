# Deploy A Rackspace Private Cloud v10.1 Reference Architecture Environment

`heat stack-create -f rpc-10.1-template.yml -t 240 -P ansible_tags=<comma-separated-ansible-tags> [-e rpc-10.1-environment.yml] <stack-name>`

### Environment

Some settings should be private, and may be passed in through the use of a Heat Environment file. Below is an example of passing in Rackspace Cloud credentials for MaaS configuration.

**`rpc-10.1-environment.yml`**

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
* `compute` - Install Compute v10.1
* `block` - Install Block v10.1
* `object` - Install Object v10.1
* `maas` - Install MaaS v10.1
