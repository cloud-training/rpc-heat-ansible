# Deploy A Rackspace Private Cloud Environment

```
heat stack-create -t 240 \
  -f templates/rpc-*.yml \
  -e environments/*.yml \
  [-e environments/user-maas-credentials.yml] \
  <stack-name>
```

### Build Status

| Deployment                                                                                      | Release           | Patched Builds *                                                                                                    | Unpatched Builds *                                                                                                              |
|-------------------------------------------------------------------------------------------------|-------------------|---------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| [RPC v12.0 Full + Ceph + External Network + MaaS](#rpc-v120-full--ceph--external-network--maas) | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net MaaS - Latest Tag) | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net MaaS - Latest Tag - Unpatched) |
| [RPC v12.0 Full + Ceph + External Network](#rpc-v120-full--ceph--external-network)              | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net - Latest Tag)      | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net - Latest Tag - Unpatched)      |
| [RPC v12.0 Full + External Network + MaaS](#rpc-v120-full--external-network--maas)              | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net MaaS - Latest Tag)      | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net MaaS - Latest Tag - Unpatched)      |
| [RPC v12.0 Full + External Network](#rpc-v120-full--external-network)                           | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net - Latest Tag)           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net - Latest Tag - Unpatched)           |
| [RPC v12.0 Stand-Alone Object + MaaS](#rpc-v120-stand-alone-object--maas)                       | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object MaaS - Latest Tag)        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object MaaS - Latest Tag - Unpatched)        |
| [RPC v12.0 Stand-Alone Object](#rpc-v120-stand-alone-object)                                    | r12.0.0rc1        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object - Latest Tag)             | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object - Latest Tag - Unpatched)             |
| [RPC v11.1 Full + Ceph + External Network + MaaS](#rpc-v111-full--ceph--external-network--maas) | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net MaaS - Latest Tag) | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net MaaS - Latest Tag - Unpatched) |
| [RPC v11.1 Full + Ceph + External Network](#rpc-v111-full--ceph--external-network)              | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net - Latest Tag)      | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net - Latest Tag - Unpatched)      |
| [RPC v11.1 Full + External Network + MaaS](#rpc-v111-full--external-network--maas)              | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net MaaS - Latest Tag)      | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net MaaS - Latest Tag - Unpatched)      |
| [RPC v11.1 Full + External Network](#rpc-v111-full--external-network)                           | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net - Latest Tag)           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net - Latest Tag - Unpatched)           |
| [RPC v11.1 Stand-Alone Object + MaaS](#rpc-v111-stand-alone-object--maas)                       | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object MaaS - Latest Tag)        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object MaaS - Latest Tag - Unpatched)        |
| [RPC v11.1 Stand-Alone Object](#rpc-v111-stand-alone-object)                                    | r11.1.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object - Latest Tag)             | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object - Latest Tag - Unpatched)             |
| [RPC v11.0 Full + External Network + MaaS](#rpc-v110-full--external-network--maas)              | r11.0.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Full Net MaaS - Latest Tag)      | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Full Net MaaS - Latest Tag - Unpatched)      |
| [RPC v11.0 Full + External Network](#rpc-v110-full--external-network)                           | r11.0.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Full Net - Latest Tag)           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Full Net - Latest Tag - Unpatched)           |
| [RPC v11.0 Stand-Alone Object + MaaS](#rpc-v110-stand-alone-object--maas)                       | r11.0.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Object MaaS - Latest Tag)        | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Object MaaS - Latest Tag - Unpatched)        |
| [RPC v11.0 Stand-Alone Object](#rpc-v110-stand-alone-object)                                    | r11.0.4           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Object - Latest Tag)             | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.0 - Object - Latest Tag - Unpatched)             |
| [RPC v10.1 Full + MaaS](#rpc-v101-full--maas)                                                   | 10.1.18           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full MaaS - Latest Tag)          | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full MaaS - Latest Tag - Unpatched)          |
| [RPC v10.1 Full](#rpc-v101-full)                                                                | 10.1.18           | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full - Latest Tag)               | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full - Latest Tag - Unpatched)               |
|  RPC v12.0 Full + Ceph + External Network + MaaS                                                | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net MaaS - Head)       | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net MaaS - Head - Unpatched)       |
|  RPC v12.0 Full + Ceph + External Network                                                       | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net - Head)            | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Ceph Net - Head - Unpatched)            |
|  RPC v12.0 Full + External Network + MaaS                                                       | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net MaaS - Head)            | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net MaaS - Head - Unpatched)            |
|  RPC v12.0 Full + External Network                                                              | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net - Head)                 | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Full Net - Head - Unpatched)                 |
|  RPC v12.0 Stand-Alone Object + MaaS                                                            | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object MaaS - Head)              | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object MaaS - Head - Unpatched)              |
|  RPC v12.0 Stand-Alone Object                                                                   | Liberty-12.0 Head | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object - Head)                   | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v12.0 - Object - Head - Unpatched)                   |
|  RPC v11.1 Full + Ceph + External Network + MaaS                                                | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net MaaS - Head)       | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net MaaS - Head - Unpatched)       |
|  RPC v11.1 Full + Ceph + External Network                                                       | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net - Head)            | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Ceph Net - Head - Unpatched)            |
|  RPC v11.1 Full + External Network + MaaS                                                       | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net MaaS - Head)            | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net MaaS - Head - Unpatched)            |
|  RPC v11.1 Full + External Network                                                              | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net - Head)                 | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Full Net - Head - Unpatched)                 |
|  RPC v11.1 Stand-Alone Object + MaaS                                                            | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object MaaS - Head)              | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object MaaS - Head - Unpatched)              |
|  RPC v11.1 Stand-Alone Object                                                                   | Kilo Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object - Head)                   | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v11.1 - Object - Head - Unpatched)                   |
|  RPC v10.1 Full + MaaS                                                                          | Juno Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full MaaS - Head)                | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full MaaS - Head - Unpatched)                |
|  RPC v10.1 Full                                                                                 | Juno Head         | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full - Head)                     | ![Build Status](http://jenkins.cloudtrain.me:8080/buildStatus/icon?job=RPC v10.1 - Full - Head - Unpatched)                     |

\* _This repo maintains a set of patches that will be applied by default in order to create a working environment. Unpatched builds are also tracked for validation purposes. Be aware that unpatched builds may be passing, but MaaS checks and alarms could be broken. If you would like an unpatched build, you can pass the override `apply_patches=False` when creating your stack. See [Environment Overrides](#environment-overrides) below for more details._

### Heat Templates

Templates define the cloud resources necessary for the environment. These can be found in the `templates` directory.

* `rpc-full-ceph.yml` - Compute, Block, Object, Ceph
* `rpc-full.yml`      - Compute, Block, Object
* `rpc-object.yml`    - Stand-Alone Object

### Environments

Template parameters may be passed in through the use of an environment file. There are several environments that have been provided for various types of deployments. These can be found in the `environments` directory.

#### RPC v12.0

* `rpc-12.0-full-ceph-net-maas.yml` - Compute, Block, Object, Ceph, External Network, MaaS
* `rpc-12.0-full-ceph-maas.yml`     - Compute, Block, Object, Ceph, MaaS
* `rpc-12.0-full-ceph-net.yml`      - Compute, Block, Object, Ceph, External Network
* `rpc-12.0-full-ceph.yml`          - Compute, Block, Object, Ceph
* `rpc-12.0-full-net-maas.yml`      - Compute, Block, Object, External Network, MaaS
* `rpc-12.0-full-maas.yml`          - Compute, Block, Object, Maas
* `rpc-12.0-full-net.yml`           - Compute, Block, Object, External Network
* `rpc-12.0-full.yml`               - Compute, Block, Object
* `rpc-12.0-object-maas.yml`        - Stand-Alone Object, MaaS
* `rpc-12.0-object.yml`             - Stand-Alone Object

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

#### RPC v11.0

* `rpc-11.0-full-net-maas.yml` - Compute, Block, Object, External Network, MaaS
* `rpc-11.0-full-maas.yml`     - Compute, Block, Object, Maas
* `rpc-11.0-full-net.yml`      - Compute, Block, Object, External Network
* `rpc-11.0-full.yml`          - Compute, Block, Object
* `rpc-11.0-object-maas.yml`   - Stand-Alone Object, MaaS
* `rpc-11.0-object.yml`        - Stand-Alone Object

#### RPC v10.1

* `rpc-10.1-full-maas.yml` - Compute, Block, Object, MaaS
* `rpc-10.1-full.yml`      - Compute, Block, Object

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
  maas_notification_email_address: you@example.com
```

### Sample Deployments v12.0

#### RPC v12.0 Full + Ceph + External Network + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-12.0-full-ceph-net-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v12.0 Full + Ceph + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-12.0-full-ceph-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v12.0 Full + Ceph + External Network

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-12.0-full-ceph-net.yml \
   <stack-name>
```

#### RPC v12.0 Full + Ceph

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-12.0-full-ceph.yml \
  <stack-name>
```

#### RPC v12.0 Full + External Network + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-12.0-full-net-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v12.0 Full + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-12.0-full-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v12.0 Full + External Network

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-12.0-full-net.yml \
  <stack-name>
```

#### RPC v12.0 Full

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-12.0-full.yml \
  <stack-name>
```

#### RPC v12.0 Stand-Alone Object + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-12.0-object-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v12.0 Stand-Alone Object

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-12.0-object.yml \
  <stack-name>
```

### Sample Deployments v11.1

#### RPC v11.1 Full + Ceph + External Network + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-11.1-full-ceph-net-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.1 Full + Ceph + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-11.1-full-ceph-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.1 Full + Ceph + External Network

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-11.1-full-ceph-net.yml \
   <stack-name>
```

#### RPC v11.1 Full + Ceph

```
heat stack-create -t 240 \
  -f templates/rpc-full-ceph.yml \
  -e environments/rpc-11.1-full-ceph.yml \
  <stack-name>
```

#### RPC v11.1 Full + External Network + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.1-full-net-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.1 Full + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.1-full-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.1 Full + External Network

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.1-full-net.yml \
  <stack-name>
```

#### RPC v11.1 Full

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.1-full.yml \
  <stack-name>
```

#### RPC v11.1 Stand-Alone Object + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-11.1-object-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.1 Stand-Alone Object

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-11.1-object.yml \
  <stack-name>
```

### Sample Deployments v11.0

#### RPC v11.0 Full + External Network + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.0-full-net-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.0 Full + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.0-full-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.0 Full + External Network

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.0-full-net.yml \
  <stack-name>
```

#### RPC v11.0 Full

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-11.0-full.yml \
  <stack-name>
```

#### RPC v11.0 Stand-Alone Object + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-11.0-object-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v11.0 Stand-Alone Object

```
heat stack-create -t 240 \
  -f templates/rpc-object.yml \
  -e environments/rpc-11.0-object.yml \
  <stack-name>
```

### Sample Deployments v10.1

#### RPC v10.1 Full + MaaS

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-10.1-full-maas.yml \
  -e environments/user-maas-credentials.yml \
  <stack-name>
```

#### RPC v10.1 Full

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-10.1-full.yml \
  <stack-name>
```

### Environment Overrides

If you would like to to override certain parameters of an environment, you can do so by passing one or more `-P` parameter flags.

Below is an example of overriding the `rpc_release` parameter to deploy from the HEAD of the Juno branch.

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-10.1-full.yml \
  -P rpc_release=juno \
  <stack-name>
```

Below is an example of overriding the `rpc_heat_ansible_repo` and `rpc_heat_ansible_release` parameters, useful when deploying from a different fork and / or branch of this repo.

```
heat stack-create -t 240 \
  -f templates/rpc-full.yml \
  -e environments/rpc-10.1-full.yml \
  -P rpc_heat_ansible_repo=https://github.com/my_fork/rpc-heat-ansible.git \
  -P rpc_heat_ansible_release=my_branch \
  <stack-name>
```

#### Available Parameters

Unless explicitly specified via an environment file or as an override, the following defaults will be used.

| Parameter                         | Default                                                  |
|-----------------------------------|----------------------------------------------------------|
| `ansible_tags`                    | `prepare`                                                |
| `rpc_release`                     | `r11.1.4`                                                |
| `rpc_heat_ansible_release`        | `master`                                                 |
| `rpc_heat_ansible_repo`           | `https://github.com/cloud-training/rpc-heat-ansible.git` |
| `maas_notification_email_address` | `rpc-maas-alerts@mg.cloudtrain.me`                       |
| `apply_patches`                   | `True`                                                   |
| `deploy_retries`                  | `2`                                                      |
| `infra_flavor`                    | `8 GB Performance`                                       |
| `logger_flavor`                   | `4 GB Performance`                                       |
| `compute_flavor`                  | `4 GB Performance`                                       |
| `block_flavor`                    | `4 GB Performance`                                       |
| `object_flavor`                   | `2 GB Performance`                                       |
| `ceph_flavor`                     | `8 GB Performance`                                       |

### Troubleshooting

The build process is spawned inside a tmux session, which allows you to attach and follow along, or to troubleshoot or resume a failed build. There are also tmux windows tailing the various log files that are produced.

![screen shot 2016-01-29 at 5 56 12 pm](https://cloud.githubusercontent.com/assets/954353/12691456/a1f1a17a-c6b1-11e5-91b2-bfb27b9a1e25.png)

#### Attaching To tmux Session

```
# tmux list-sessions
rpc-heat-ansible: 3 windows (created Fri Jan 29 23:17:33 2016) [159x44]
# tmux attach-session -t rpc-heat-ansible
```

The default window `0:runcmd-bash` is the spawned build process. There is nothing much to see here. You can switch to one of the other windows `1:runcmd-bash-logs` or `2:deploy-sh-logs`, which both are tailing various logs. To switch windows, press `ctrl+b` then `1` or `2`, depending on which window you want to switch to.
