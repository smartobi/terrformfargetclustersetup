# provider "helm" {
#   kubernetes {
#     host                   = aws_eks_cluster.cluster.endpoint
#     cluster_ca_certificate = base64decode(aws_eks_cluster.cluster.certificate_authority[0].data)
#     exec {
#       api_version = "client.authentication.k8s.io/v1beta1"
#       args        = ["eks", "get-token", "--cluster-name", aws_eks_cluster.cluster.id]
#       command     = "aws"
#     }
#   }
# }


# resource "helm_release" "metrics-server" {
#   name = "metrics-server"

#   repository = "https://charts.bitnami.com/bitnami"
#   chart      = "metrics-server"
#   namespace  = "kube-system"
#   version    = "6.6.5"

#   set {
#     name  = "metrics.enabled"
#     value = true
#   }

#   depends_on = [aws_eks_fargate_profile.kube-system]
# }
