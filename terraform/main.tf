provider "azurerm" {
  features {}
   subscription_id = "c371d301-3275-437a-b83d-fbd24b765127"
}

# Resource Group
module "rg" {
  source   = "./modules/resource-group"
  rg_name  = "towfiqueResourceGroup"
  location = var.location
}

# AKS Cluster
module "aks" {
  source              = "./modules/aks"
  cluster_name        = "towfiqueAKSCluster"
  dns_prefix          = "towfiqueaks"
  location            = module.rg.location
  resource_group_name = module.rg.name
  ssh_key_path        = "~/.ssh/TowfiqueLinuxVM_key.pub"
  node_count          = 3
  node_size           = "Standard_B2s"
}