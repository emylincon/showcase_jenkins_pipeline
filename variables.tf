variable "ami_id" {
  default = "ami-0ed961fa828560210"
}

variable "snapshot_id" {
  default     = "ami-0b3f070a579f165bd"
  description = "ami of the prebuilt jenkins image"
}

variable "instance_type" {
  default     = "t2.medium"
  description = "type and size of the jenkins ec2 server"
}

variable "public_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet 1"
}

variable "public_cidr_one" {
  default     = "10.0.3.0/24"
  description = "public subnet 2"
}

variable "task_name" {
  default     = "ecs_demo"
  description = "name of container task"
}

variable "image_name" {
  default     = "ktao329/showcase_flask_app" #  "ktao329/showcase_flask_app"
  description = "image hosted on dockerhub used to create service"
}

variable "container_port" {
  default     = 5000
  description = "container port"
}

variable "container_count" {
  default     = 1
  description = "number of containers to be deployed in the ecs cluster"
}

variable "env" {
  type        = string
  default     = "development"
  description = "development environment"
}

variable "availability_zone" {
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  description = "availability zones used to separate public subnets"
}

