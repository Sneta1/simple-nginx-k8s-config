This is a simple nginx app deployed in minikube kubernetes local cluster through terraform.

There's a namepace for the deployment to differntiate the environment of k8s resources deployed on.

kubectl get ns
kubectl get pods -n <namespace>
kubectl get deployment -n <namespace> 
