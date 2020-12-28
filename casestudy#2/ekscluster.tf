resource "aws_eks_cluster" "level-up-eks" {
  name     = var.cluster-name
  role_arn = aws_iam_role.eks-iam-cluster.arn

  vpc_config {
    security_group_ids = [aws_security_group.levelup-eks-sg.id]
    subnet_ids = module.vpc.public_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.eks-cluster-AmazonEKSServicePolicy,
  ]
}