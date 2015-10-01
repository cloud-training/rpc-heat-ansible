#!/bin/bash

# Fix MaaS
sed -r -i "44s/^.+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -r -i "48s/^.+$/    groups['neutron_server']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -r -i "52s/^.+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -r -i "56s/^.+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname != groups['utility'][0] and (inventory_hostname in groups['utility'] or inventory_hostname in groups['neutron_all'])/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -r -i "35s/^.+$/    groups['cinder_api']|length > 0 and inventory_hostname == groups['cinder_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "56s/^.+$/    groups['glance_api']|length > 0 and inventory_hostname == groups['glance_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "77s/^.+$/    groups['keystone']|length > 0 and inventory_hostname == groups['keystone'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "98s/^.+$/    groups['neutron_server']|length > 0 and inventory_hostname == groups['neutron_server'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "119s/^.+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['nova_api_os_compute'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "140s/^.+$/    groups['horizon']|length > 0 and inventory_hostname == groups['horizon'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "161s/^.+$/    groups['heat_api']|length > 0 and inventory_hostname == groups['heat_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "182s/^.+$/    groups['heat_api_cfn']|length > 0 and inventory_hostname == groups['heat_api_cfn'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -r -i "203s/^.+$/    groups['heat_api_cloudwatch']|length > 0 and inventory_hostname == groups['heat_api_cloudwatch'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
