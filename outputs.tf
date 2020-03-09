/*
 * Created Date: 14.01.2020
 * Author: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Last Modified: 14.01.2020 15:41:46
 * Modified By: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Copyright (c) 2020 msg nexinsure ag
 */

output "client_key" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_key}"
}

output "client_certificate" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate}"
}

output "cluster_ca_certificate" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.cluster_ca_certificate}"
}

output "cluster_username" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.username}"
}

output "cluster_password" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.password}"
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config_raw}"
}

output "host" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.kube_config.0.host}"
}

output "node_resource_group" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.node_resource_group}"
}

output "cluster_name" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.name}"
}

output "resource_group_name" {
  value = "${azurerm_resource_group.resource_group.name}"
}