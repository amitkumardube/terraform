# terraform

Getting started with terraform

There are 3 terraform concepts explained in this getting started guide.

- Provider - One of the cloud providers. This guide is designed for GCP. For other cloud providers please check terrafrom documentation at <a>https://learn.hashicorp.com/terraform.
- Resource - The list of resources you like to create. In this guide we created a VPC network and a compute instance.
- Module - module provides reusability to your code. you define it once like templates and then just pass values to get desired result.

<b> how to use this guide? </b>

- Download terraform binary from terraform website <a>https://www.terraform.io/downloads.html.
- Add binary to classpath.
- git clone https://github.com/amitkumardube/terraform.git
- git checkout release/1.0.0
- modify main.tf file to add the json file for the service account which has required access to create resources as per config
- terraform -chdir=DIR init (ignore -chdir flag if you are in the directory where your terraform config files are else enter the PATH of the directory which contains your terraform config files)
- terraform -chdir=DIR plan -out terraform.tfplan
- terraform -chdir=DIR apply terraform.tfplan

Now grab a coffee and let terraform do all the magic. You will see your resources getting created in gcp console.

And this is all. Have terraforming.

<b>Documentation</b>
- Terraform Detailed documentation : https://www.terraform.io/docs/index.html
- Getting Started with GCP : https://learn.hashicorp.com/collections/terraform/gcp-get-started
- Google configuration reference with GCP ( detailed documentation ) : https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference

<
