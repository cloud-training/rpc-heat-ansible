#!/bin/bash

# Cause Escaping
sed -r -i 's/^glance_swift_store_auth_address:(.+)?/glance_swift_store_auth_address: "{{ auth_identity_uri }}"/' /etc/rpc_deploy/user_variables.yml
sed -r -i 's/^glance_swift_store_key:(.+)?/glance_swift_store_key: "{{ glance_service_password }}"/' /etc/rpc_deploy/user_variables.yml
