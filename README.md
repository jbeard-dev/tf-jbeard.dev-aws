# jbeard.dev AWS Deployment

This is a Terraform codebase for deploying AWS resources for the
[jbeard.dev](https://jbeard.dev) website.

* Uses the [tf-aws-site](https://github.com/joshbeard/tf-aws-site) module for
  deploying the common resources for this website (S3, CloudFront, ACM, IAM, Route53)
* Uses the [tf-migadu-route53](https://github.com/joshbeard/tf-migadu-route53)
  module for managing DNS records for mail in Route53.

The [`Makefile`](Makefile) is included for local use for running Terraform in Docker.
