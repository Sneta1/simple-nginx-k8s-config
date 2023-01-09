resource "kubernetes_namespace" "nsexample" {
  metadata {
    name = "k8s-ns-tf"
  }
}

resource "kubernetes_deployment" "deployexample" {
  metadata {
    name = "k8s-tf-example"
    labels = {
        test = "Nginx-App"
    }
    namespace = "k8s-ns-tf"
  }
  spec {
    replicas = 2

    selector {
        match_labels = {
            test = "Nginx-App"
        }
    }
    template {
        metadata {
            labels = {
                test = "Nginx-App"
            }
        }
    spec {
       container {
         image = "nginx:1.21.6"
         name = "nginx-image"
       }
     }
    }
  }
}