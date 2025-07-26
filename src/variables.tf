
variable "aws_region" {
  description = "Região usada para criar os recursos da AWS"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Nome da vpc"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "Nome da cidr da vpc"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Nome da availability zones"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "Nome da private subnets da vpc"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "Nome da public subnets da vpc"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Nome do eks"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Nome da eks version"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Nome da eks managed node groups instance types"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Nome dos tags do projeto"
  type        = map(any)
  nullable    = false
}