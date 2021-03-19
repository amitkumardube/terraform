package testing

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	"testing"
)

func TestTerraformIntegrationEnv(t *testing.T) {

	t.Parallel()
	terraformOptions := &terraform.Options{
		// website::tag::1::Set the path to the Terraform code that will be tested.
		// The path to where our Terraform code is located
		TerraformDir: "../",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"region" : "us-east1",
			"zone" : "us-east1-b",
		},

		// Variables to pass to our Terraform code using -var-file options
		//VarFiles: []string{"../terraform.tfvars"},

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: true,
	}

	//this will destroy the infra after exiting from the function

    defer terraform.Destroy(t, terraformOptions)

	// this will init and apply the infra code
    terraform.InitAndApply(t, terraformOptions)

}