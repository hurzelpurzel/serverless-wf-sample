# Goal

Create a sample application with serverless workflows as a task chain
- Start at certain point in  time
- Spring Boot runtime
- Kubernetes Serverless workflows (kogito)


# Prerequisites

Existing cluster

<pre>


# Install Knative operator
kubectl apply -f https://github.com/knative/operator/releases/download/knative-v1.14.5/operator.yaml

# Install kn cli
wget https://github.com/knative/client/releases/download/knative-v1.15.0/kn-linux-amd64
mv kn-linux-amd64 kn
chmod +x kn
mv kn /usr/bin
wget https://github.com/knative/func/releases/download/knative-v1.15.0/func_linux_amd64
mv func_linux_amd64 func
chmod +x func
mv func /usr/bin

#serving
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-core.yamlkn 

#eventing
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.14.5/eventing-crds.yaml
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.14.5/eventing-core.yaml


# Install OLM
curl -sL https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.28.0/install.sh | bash -s v0.28.0

# Install sonatoflow
kubectl create -f https://operatorhub.io/install/sonataflow-operator.yaml

# check progress
kubectl get csv -n operators

</pre>


# GCR Registry
cat ../registry-430716-d17542a2a5da.json | podman login -u _json_key --password-stdin europe-west3-docker.pkg.dev/registry-430716/functions



# Links
https://sonataflow.org/serverlessworkflow/latest/getting-started/create-your-first-workflow-service-with-kn-cli-and-vscode.html
https://knative.dev/docs/install/operator/knative-with-operators/#prerequisites
