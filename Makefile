init:
	    terraform init

plan:
	    terraform plan -out terraform.tfplan

apply:
	    terraform apply terraform.tfplan
