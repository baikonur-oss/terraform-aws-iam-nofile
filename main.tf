resource "aws_iam_instance_profile" "instance_role" {
  name = "${var.type}_${var.name}"
  role = "${aws_iam_role.iam_role.name}"
}

resource "aws_iam_role_policy" "role_policy" {
  name   = "${var.type}_${var.name}"
  role   = "${aws_iam_role.iam_role.id}"
  policy = "${var.policy_json}"
}

resource "aws_iam_role" "iam_role" {
  name = "${var.type}_${var.name}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "${var.type}.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}
