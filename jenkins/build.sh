#!/bin/bash

#set -ex

sudo pip install python-heatclient
sudo pip install oslo.config

# Environment Binding
$PUBLIC_CLOUD_CREDENTIALS

HEAT_TEMPLATE=${HEAT_TEMPLATE-"compute"}
ANSIBLE_TAG=${ANSIBLE_TAG:-"none"}
STACK_NAME=rpc-jenkins-$BUILD_NUMBER-$HEAT_TEMPLATE-$ANSIBLE_TAG

heat stack-create -f rpc-10.1-$HEAT_TEMPLATE-template.yml -t 240 -P ansible_tag=$ANSIBLE_TAG $STACK_NAME

BUILD_COMPLETED=0
BUILD_FAILED=0

until [[ $BUILD_COMPLETED -eq 1 ]]; do
  sleep 10
  STACK_STATUS=`heat stack-list | awk '/'$STACK_NAME'/ { print $6 }'`
  RESOURCES_FAILED=`heat resource-list $STACK_NAME | grep CREATE_FAILED | wc -l`
  SWIFT_SIGNAL_FAILED=`heat event-list $STACK_NAME | grep SwiftSignalFailure | wc -l`
  if [[ "$STACK_STATUS" == 'CREATE_COMPLETE' || "$STACK_STATUS" == 'CREATE_FAILED' || $RESOURCES_FAILED -gt 0 ]]; then
    BUILD_COMPLETED=1
  fi
  if [[ "$STACK_STATUS" == 'CREATE_FAILED' || $RESOURCES_FAILED -gt 0 ]]; then
    BUILD_FAILED=1
  fi
  echo "===================================================="
  echo "Stack Status:        $STACK_STATUS"
  echo "Resources Failed:    $RESOURCES_FAILED"
  echo "Build Completed:     $BUILD_COMPLETED"
  echo "Build Failed:        $BUILD_FAILED"
  echo "Swift Signal Failed: $SWIFT_SIGNAL_FAILED"
done

if [[ $BUILD_FAILED -eq 1 ]]; then
  echo "===================================================="
  heat stack-list
  echo "===================================================="
  heat resource-list $STACK_NAME
  echo "===================================================="
  heat event-list $STACK_NAME
fi

if [[ $BUILD_FAILED -eq 1 && $SWIFT_SIGNAL_FAILED -gt 0 || ( $BUILD_FAILED -eq 0 ) ]]; then
  INFRA1_IP=`heat output-show $STACK_NAME server_infra1_ip -F raw`
  heat output-show $STACK_NAME private_key -F raw > $STACK_NAME.pem
  chmod 400 $STACK_NAME.pem
  scp -i $STACK_NAME.pem -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$INFRA1_IP:/opt/cloud-training/runcmd-bash.* .
fi

if [[ $BUILD_FAILED -eq 0 ]]; then
  heat stack-delete $STACK_NAME
fi

exit $BUILD_FAILED
