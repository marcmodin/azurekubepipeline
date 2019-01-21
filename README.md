# azurekubepipeline

A CI/CD pipleline to an Azure Kubernetes Service and Image Reqistry

[![Build status](https://dev.azure.com/marcmodin/kubetest/_apis/build/status/kubetest-Docker%20container-CI)](https://dev.azure.com/marcmodin/kubetest/_build/latest?definitionId=5)

## Steps to take

1. Do az login first
2. Login to azure Devops
3. Make sure azure kubernetes cluster-machine is running

- `az vm start -n [azure cluster machine name] --debug -g [azure cluster resource group name]`

4. check: is frontend-service from `service.yaml` running the loadbalancer
5. connect to kubecluster

- `az aks browse --resource-group [resource group name] --name [cluster name]`

6. make changes on a feature branch and push. Then merge >
7. start a new build queue in Azure Devops

- the build should push an image to your own image-repo
- then copy the kubeconfig into a release artifact
- release will run `kubectl apply -f azuredeployment-prod.yml` rolling out the new deployment

## Running your own pipeline

To build this pipeline yourself. Clone this repo and set it up in your Devops environment.

Im currently working on updating the complete instructions for setting up relese steps. Which are not present in this text as of yet.
