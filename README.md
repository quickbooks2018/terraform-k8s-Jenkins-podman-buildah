# Terraform Jenkins Eks

- Jenkins Helm
```jenkins
helm repo add jenkins https://charts.jenkins.io
helm repo update
helm repo ls
helm search repo jenkins
helm search repo jenkins/jenkins --versions
helm show values jenkins/jenkins --version 4.5.0
helm show values jenkins/jenkins --version 4.5.0 > jenkins-values.yaml
helm upgrade --install jenkins --namespace jenkins --create-namespace jenkins/jenkins --version 4.5.0 -f jenkins-values.yaml --wait


# Set up port forwarding to the Jenkins UI from Cloud Shell
kubectl -n jenkins port-forward svc/jenkins --address 0.0.0.0 8090:8080

# Jenkins Secrets

kubectl get secrets -n jenkins 

kubectl get secrets/jenkins -n jenkins -o yaml

jenkins-admin-password: b1NuY1NpWmdnR25ZemtuNWx5Mnl0NQ==
jenkins-admin-user: YWRtaW4=

echo -n 'b1NuY1NpWmdnR25ZemtuNWx5Mnl0NQ==' | base64 -d
oSncSiZggGnYzkn5ly2yt5
```