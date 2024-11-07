terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_iam_policy" "policies" {
  for_each = local.account_policies[var.account_number]
  name   = each.key
  policy = file(each.value)
}