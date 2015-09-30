#!/bin/bash

# Fix MaaS
sed -i "44s/^    .+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -i "48s/^    .+$/    groups['neutron_server']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -i "52s/^    .+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['utility'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -i "56s/^    .+$/    groups['nova_api_os_compute']|length > 0 and inventory_hostname != groups['utility'][0] and (inventory_hostname in groups['utility'] or inventory_hostname in groups['neutron_all'])/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_support/tasks/main.yml
sed -i "35s/inventory_hostname == groups\['cinder_api'\]\[0\]/groups['cinder_api']|length > 0 and inventory_hostname == groups['cinder_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "56s/inventory_hostname == groups\['glance_api'\]\[0\]/groups['glance_api']|length > 0 and inventory_hostname == groups['glance_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "77s/inventory_hostname == groups\['keystone'\]\[0\]/groups['keystone']|length > 0 and inventory_hostname == groups['keystone'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "98s/inventory_hostname == groups\['neutron_server'\]\[0\]/groups['neutron_server']|length > 0 and inventory_hostname == groups['neutron_server'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "119s/inventory_hostname == groups\['nova_api_os_compute'\]\[0\]/groups['nova_api_os_compute']|length > 0 and inventory_hostname == groups['nova_api_os_compute'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "140s/inventory_hostname == groups\['horizon'\]\[0\]/groups['horizon']|length > 0 and inventory_hostname == groups['horizon'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "161s/inventory_hostname == groups\['heat_api'\]\[0\]/groups['heat_api']|length > 0 and inventory_hostname == groups['heat_api'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "182s/inventory_hostname == groups\['heat_api_cfn'\]\[0\]/groups['heat_api_cfn']|length > 0 and inventory_hostname == groups['heat_api_cfn'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml
sed -i "203s/inventory_hostname == groups\['heat_api_cloudwatch'\]\[\0\]/groups['heat_api_cloudwatch']|length > 0 and inventory_hostname == groups['heat_api_cloudwatch'][0]/g" /opt/rpc-openstack/rpcd/playbooks/roles/rpc_maas/tasks/remote.yml