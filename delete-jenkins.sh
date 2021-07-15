#! /bin/bash

# Uninstall the deployment
helm uninstall jenkins -n jenkins

# delete persistent vol
kubectl delete pv jenkins-pv -n jenkins
