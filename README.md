# awx-config-operator

An Ansible AWX config operator for Kubernetes built with [Operator SDK](https://github.com/operator-framework/operator-sdk) and Ansible.

## Description
This project shows how to develop a custom ansible operator via the [Operator SDK](https://github.com/operator-framework/operator-sdk). It complements [awx-operator](https://github.com/ansible/awx-operator) and adds a ServiceMonitor for an AWX instance by creating a AWXConfig.

## Prerequisites

operator-sdk v1.32.0 as there is a current [issue](https://github.com/operator-framework/operator-sdk/issues/6750) with more recent versions.

## Create the Structure
```
operator-sdk init --domain acme.com --plugins ansible
operator-sdk create api --group awx --version v1alpha1 --kind AWXConfig --generate-role
```

