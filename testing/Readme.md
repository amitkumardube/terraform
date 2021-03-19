# Test Driven terraform development using Terratest

- Terratest runs the same code(Real terraform configuration) to validate if everything is ok.
- If everything is fine then it will move to next step in CI/CD workflow.
- If something is not right, then it stops right there and execution stops.
- It's a good candidate for implementing CI/CD.