//Resource Group
module "rg" {
  source = "./modules/resource_groups"
  #rg_name          = local.rg_name
  #rg_location      = var.primary_location
}

module "law" {
  source = "./modules/log_analytics_workspaces"
}