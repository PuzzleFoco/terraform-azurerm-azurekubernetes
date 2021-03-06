resource "azurerm_resource_group" "resource_group" {
    name        = var.resource_group_name
    location    = var.location
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
    name                = var.aks_cluster_name
    location            = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name
    dns_prefix          = var.dns_prefix

    addon_profile {
        kube_dashboard {
            enabled = var.kube_dashboard
    }
  }

    default_node_pool {
        name        = "default"
        node_count  = var.node_count
        vm_size     = var.vm_size
    }

    service_principal {
        client_id       = var.client_id
        client_secret   = var.client_secret
    }

    tags = {
        Environment = var.tag_environment
    }
}