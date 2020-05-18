# ARM FAQ
## Can I export a template from existing resources?
Yes, you can export a template form existing resources throught Azure portal, see [Export template in Azure portal](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/export-template-portal).

## Can I reuse templates?
Yes, the ARM template is designed to be reusable. You may deploy ARM templates through [portal](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-portal), [CLI](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-cli), [PowerShell](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-powershell), [REST API](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-rest) or [from GitHub](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button).

## Is it good practice to deploy multiple different templates to the same resource group?
Good practice is to have a single template or a set of main and [linked templates](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/linked-templates) to deploy resources into a resource group. This allows for change tracking and single source of truth.

## Which API Version should I use?
It depends on features of the resource that you want to use. Each resource providers has it own API versions. The latest version will have latest features available.

## If Microsoft makes changes to resources will it break my template?
Microsoft keeps previous versions of resource providers and makes available via versioning of REST API.

## Do you recommend complete or incremental mode?
For most situations incremental mode is recommended. It is important to understand diffrences between two [deployment modes](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deployment-modes).

## How do I manage secrets in a template?
We recommend [integrate Azure Key Vault](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-use-key-vault) in your ARM template deployment. You can store secrets on Azure Key Vault and retrive them as deployment template parameters.

## How can I run non ARM actions as part of my ARM deployment e.g run a powershell or upload a blob?

## Should I build using kudu or my pipeline?

## Should I handle complex logic in my template using nested templates and logic operator or should i move it up to powershell or an ochestrator?

## What the best tool for authoring templates?

## Where should I start? Create in the portal and export, quickstart templates and modify, or using snippets

## How do I manage dependencies against existing resources that are not defined in my template?
You can refer to existing resource(s) by Resoure Id. You may use build-in [resourceId](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-functions-resource#resourceid) function for ARM template. You will need scription id and resoure group name of dependent resource.

## Can I create resource groups with an ARM template?
No, you cannot create resource group(s) with an ARM template. However, you may do this using PowerShell, CLI or Azure Pipelines

## Can I assign permissions in an arm template

## How do I share common templates with my team or end users

## When should I use blueprints vs standalone ARM templates?

## Any Anitpatterns I should be aware of?

# IaC FAQ
## Should I automate everything including resources I only provision once?
You need to evaluate effort required to create deployment template. If the resource(s) are meant to be provision once, the portal can be the quickest way to deploy.

## How do I manage changes that cant be automated?

## How do I choose my tooling? ARM, TerraForm, Ansible, Puppet, Chef, DSC, git etc

## How do I manage shared resources when working with teams of teams, e.g Applicaiton Gateway or APIM

## How do I encourage my team to start using  declaritive methods, source control and be test driven?

