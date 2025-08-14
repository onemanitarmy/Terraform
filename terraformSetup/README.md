This folder prepares you to setup Terraform in Azure via AzureDevOps WITHOUT Self-Hosted Agent Pools.
Everything is done via Hosted Agents from Microsoft.
For safety reasons, an additional stage has been added to enable and disable public network access on the storage account where the tfstate is located.

This is not best practice, but a good and efficiënt way to start.
