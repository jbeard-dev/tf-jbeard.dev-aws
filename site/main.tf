# Deployment of AWS resources for jbeard.dev
module "jbeard_dev_aws" {
  source = "github.com/joshbeard/tf-aws-site.git"

  domain      = "jbeard.dev"
  bucket_name = "s3-website-jbeard-dev"
  iam_name    = "s3-deployer-jbeard-dev"
  tags        = { "git_repo" : "https://github.com/jbeard-dev/tf-jbeard.dev-aws" }
}

module "jbeard_dev_migadu" {
  source = "github.com/joshbeard/tf-migadu-route53.git"

  domain        = "jbeard.dev"
  zone_id       = module.jbeard_dev_aws.route53_zone_id
  migadu_verify = "3zbtwhss"
}
