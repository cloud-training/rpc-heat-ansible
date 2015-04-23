# Deploy A Rackspace Private Cloud v10.1 Reference Architecture Environment

`heat stack-create -f rpc-10.1-template.yml -t 240 -P ansible_tags=<comma-separated-ansible-tags> <stack-name>`

### Available Tags

* `nothing` - Do Nothing
* `prepare` - Prepare Environment

* `compute` - Install Compute v10.1
* `block` - Install Block v10.1
* `object` - Install Object v10.1
* `maas` - Install MaaS v10.1
