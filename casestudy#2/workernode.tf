
# EKS currently documents this required userdata for EKS worker nodes to
# properly configure Kubernetes applications on the EC2 instance.
# We utilize a Terraform local here to simplify Base64 encoding this
# information into the AutoScaling Launch Configuration.
# More information: https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html
locals {
  demo-node-userdata = <<USERDATA
#!/bin/bash
set -o xtrace
/etc/eks/bootstrap.sh --apiserver-endpoint '${aws_eks_cluster.level-up-eks.endpoint}' --b64-cluster-ca '${aws_eks_cluster.level-up-eks.certificate_authority[0].data}' '${var.cluster-name}'
USERDATA

}

resource "aws_launch_configuration" "eks-node-launch-config" {
  associate_public_ip_address = true
  iam_instance_profile = aws_iam_instance_profile.eks-node.name
  image_id = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.small"
  name_prefix = "levelup-eks-node"
  security_groups = [aws_security_group.eks-node.id]
  user_data_base64 = base64encode(local.demo-node-userdata)

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "eks-node-autoscaling" {
  desired_capacity = 2
  launch_configuration = aws_launch_configuration.eks-node-launch-config.id
  max_size = 2
  min_size = 1
  name = "levelup-eks-auto-scaling"
  vpc_zone_identifier = module.vpc.public_subnets

  tags = {
    Name = "levelup-eks-auto-scaling"
  }
}

