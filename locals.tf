locals {
  # Mapping AWS Account Number to Policy Files
  account_policies = {
    "123456789012" = {
      "PolicyA" = "${path.module}/policies/policyA.json"
      "PolicyB" = "${path.module}/policies/policyB.json"
      "PolicyC" = "${path.module}/policies/policyC.json"
    }
  }
}
