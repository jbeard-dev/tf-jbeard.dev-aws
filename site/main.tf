# Deployment of AWS resources for jbeard.dev
module "jbeard_dev_aws" {
    source = "github.com/joshbeard/tf-aws-site.git"

    domain      = "jbeard.dev"
    bucket_name = "s3-website-jbeard-dev"
    iam_name    = "s3-deployer-jbeard-dev"
}

module "jbeard_dev_migadu" {
    source = "github.com/joshbeard/tf-migadu-route53.git"

    dkim          = "v=DKIM1; k=rsa; s=email; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwLut0Bap/mh3HE2rDPchHVrEcaKAfE1X5/k+7fBiIdRgk8GFoMiG3WpbaWygLS0Hw03ZjdeiIPQW/bfB7tz88NIwhIlq4VI2w+oBjF9pciLgzu0gFRGEC1KdRjn7M3YD/KTURS9kAAkgLKFWXqrUsuhuM00mZQn72MA/N9DSPfwIDAQAB"
    domain        = "jbeard.dev"
    zone_id       = module.jbeard_dev_aws.zone_id
    migadu_verify = "3zbtwhss"
}