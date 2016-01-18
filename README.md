# Deploy A Rackspace Private Cloud Environment

```
heat stack-create -t 240 -f templates/rpc-*.yml -e environments/*.yml [-e environments/user-maas-credentials.yml] <stack-name>
```

### Heat Templates

Templates define the cloud resources necessary for the environment. These can be found in the `templates` directory.

* `rpc-full-ceph.yml` - Compute, Block, Object, Ceph
* `rpc-full.yml`      - Compute, Block, Object
* `rpc-object.yml`    - Stand-Alone Object

### Environments

Template parameters may be passed in through the use of an environment file. There are several environments that have been provided for various types of deployments. These can be found in the `environments` directory.

#### RPC v10.1

* `rpc-10.1-full-maas.yml` - Compute, Block, Object, MaaS
* `rpc-10.1-full.yml`      - Compute, Block, Object

#### RPC v11.0

* `rpc-11.0-full-net-maas.yml` - Compute, Block, Object, External Network, MaaS
* `rpc-11.0-full-maas.yml`     - Compute, Block, Object, Maas
* `rpc-11.0-full-net.yml`      - Compute, Block, Object, External Network
* `rpc-11.0-full.yml`          - Compute, Block, Object
* `rpc-11.0-object-maas.yml`   - Stand-Alone Object, MaaS
* `rpc-11.0-object.yml`        - Stand-Alone Object

#### RPC v11.1

* `rpc-11.1-full-ceph-net-maas.yml` - Compute, Block, Object, Ceph, External Network, MaaS
* `rpc-11.1-full-ceph-maas.yml`     - Compute, Block, Object, Ceph, MaaS
* `rpc-11.1-full-ceph-net.yml`      - Compute, Block, Object, Ceph, External Network
* `rpc-11.1-full-ceph.yml`          - Compute, Block, Object, Ceph
* `rpc-11.1-full-net-maas.yml`      - Compute, Block, Object, External Network, MaaS
* `rpc-11.1-full-maas.yml`          - Compute, Block, Object, Maas
* `rpc-11.1-full-net.yml`           - Compute, Block, Object, External Network
* `rpc-11.1-full.yml`               - Compute, Block, Object
* `rpc-11.1-object-maas.yml`        - Stand-Alone Object, MaaS
* `rpc-11.1-object.yml`             - Stand-Alone Object

#### MaaS Credentials

In addition to choosing one of the above, if you are planning to install MaaS, you will need to provide your Rackspace Cloud credentials in a separate environment file.

Below is an example of a MaaS credentials environment file.

**`environments/user-maas-credentials.yml`**

```
parameters:
  rackspace_cloud_auth_url: 'https://identity.api.rackspacecloud.com/v2.0'
  rackspace_cloud_tenant_id: SomeTenantID
  rackspace_cloud_username: SomeUserName
  rackspace_cloud_password: SomeUsersPassword
  rackspace_cloud_api_key: SomeAPIKey
```

### Sample Deployments v11.1

#### RPC v11.1 Full + Ceph + MaaS

```
heat stack-create -t 240 -f templates/rpc-full-ceph.yml -e environments/rpc-11.1-full-ceph-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v11.1 Full + Ceph

```
heat stack-create -t 240 -f templates/rpc-full-ceph.yml -e environments/rpc-11.1-full-ceph.yml <stack-name>
```

#### RPC v11.1 Full + MaaS

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-11.1-full-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v11.1 Full

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-11.1-full.yml <stack-name>
```

#### RPC v11.1 Stand-Alone Object + MaaS

```
heat stack-create -t 240 -f templates/rpc-object.yml -e environments/rpc-11.1-object-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v11.1 Stand-Alone Object

```
heat stack-create -t 240 -f templates/rpc-object.yml -e environments/rpc-11.1-object.yml <stack-name>
```

### Sample Deployments v11.0

#### RPC v11.0 Full + MaaS

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-11.0-full-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v11.0 Full

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-11.0-full.yml <stack-name>
```

#### RPC v11.0 Stand-Alone Object + MaaS

```
heat stack-create -t 240 -f templates/rpc-object.yml -e environments/rpc-11.0-object-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v11.0 Stand-Alone Object

```
heat stack-create -t 240 -f templates/rpc-object.yml -e environments/rpc-11.0-object.yml <stack-name>
```

### Sample Deployments v10.1

#### RPC v10.1 Full + MaaS

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-10.1-full-maas.yml -e environments/user-maas-credentials.yml <stack-name>
```

#### RPC v10.1 Full

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-10.1-full.yml <stack-name>
```

### Environment Overrides

If you would like to to override certain parameters of an environment, you can do so by passing one or more `-P` parameter flags.

Below is an example of overriding the `rpc_release` parameter to deploy from the HEAD of the Juno branch.

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-10.1-full.yml -P rpc_release=juno <stack-name>
```

Below is an example of overriding the `rpc_heat_ansible_repo` and `rpc_heat_ansible_release` parameters, useful when deploying from a different fork and / or branch of this repo.

```
heat stack-create -t 240 -f templates/rpc-full.yml -e environments/rpc-10.1-full.yml -P rpc_heat_ansible_repo=https://github.com/my_fork/rpc-heat-ansible.git -P rpc_heat_ansible_release=my_branch <stack-name>
```
