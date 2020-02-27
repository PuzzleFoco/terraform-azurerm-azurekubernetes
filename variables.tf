/*
 * Created Date: 14.01.2020
 * Author: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Last Modified: 15.01.2020 10:34:11
 * Modified By: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Copyright (c) 2020 msg nexinsure ag
 */

variable "client_id" {}

variable "client_secret" {}


variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "aks_cluster_name" {
    description = "Name of the AKS Cluster"
    type        = string
}

variable "location" {
    description = "The Azure location where all ressources in this example should be created"
    type        = string
}

variable "dns_prefix" {
    description = "DNS-Prefix for Cluster"
    type        = string
}

variable "tag_environment" {
    description = "The environment tag to group components"
    default     = "Development"
}

variable "node_count" {
    description = "The count of VMs for the AKS"
    default     = 1
}

variable "vm_size" {
    description = "The size of the VMs"
    default     = "Standard_B2s"
    /*
    available Values: https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes-general
    */
}

variable "kube_dashboard" {
    type    = boolean
    default = false
}