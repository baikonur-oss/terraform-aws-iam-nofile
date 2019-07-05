output "arn" {
  description = "IAM Role ARN"
  value       = "${aws_iam_role.iam_role.arn}"
}

output "name" {
  description = "IAM Role name"
  value       = "${aws_iam_role.iam_role.name}"
}
