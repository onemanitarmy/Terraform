> **⚠️ WARNING:**
> **CLONE THIS REPOSITORY AND RUN THE PIPELINE ONLY ONCE PER SUBSCRIPTION ENVIRONMENT!**

This repository prepares you to use Terraform via Azure DevOps in Azure.

Running the preparation.yaml pipeline will run

**Terraform**
1) **storage_account.tf** - Create a Storage Account (to store .tfstate)
2) **rbac_role_assignment.tf** - Assign 'Storage Blob Data Contributor' RBAC role to your Service Principal (to create Blob Container and to read/write .tfstate)
3) **networking.tf** - Create Private Endpoint for Storage Account to privately run pipeline via self-hosted agent pools.

**Yaml**
1) Run Terraform Plan and Apply without storing .tfstate in storage account.

## More info

More information about the usage of this code, please visit [This Link](https://linkofthemanual)


## License

This repository is intended for internal use and demonstration purposes. Please review and update licensing as needed for your organization.
