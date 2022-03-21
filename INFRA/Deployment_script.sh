--Login
az login
az account set --subscription 'Azure subscription 1'

--Resource Group (rg-mc-data-management-dev)
az group create \
  --name rg-mc-data-management-dev \
  --location "East US"

--Storege Account   (dlsmcdatastoredev)
templateFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.storage\storage-account-create\adls_deploy.json"
parametersFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.storage\storage-account-create\adls_deploy.parameters.json"
az deployment group create \
  --name ADLS_2_deployment \
  --resource-group rg-mc-data-management-dev \
  --template-file $templateFile \
  --parameters $parametersFile
  
  
--Azure Data Factory (adf-data-integration-dev)
templateFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.datafactory\data-factory-v2-create\adf_deploy.json"
parametersFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.datafactory\data-factory-v2-create\adf_deploy.parameters.json"
az deployment group create \
  --name ADF_Deployment \
  --resource-group rg-mc-data-management-dev \
  --template-file $templateFile \
  --parameters $parametersFile

--Azure Key Vault (akv-data-kv-dev)
templateFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.keyvault\key-vault-create\akv_deploy.json"
parametersFile="C:\Users\harshitgoyal\Downloads\gitUseFullPublicRepo\harshgl47\INFRA\microsoft.keyvault\key-vault-create\akv_deploy.parameters.json"
az deployment group create \
  --name ADF_Deployment \
  --resource-group rg-mc-data-management-dev \
  --template-file $templateFile \
  --parameters $parametersFile
