resource "local_file" "testfilet1" {
  filename = var.filenamet1[1]
  content  = var.content
}

variable "content" {
  default = "Hello Terraform"
}

variable "filenamet1" {
  default = ["test", 123, [1,2,3]]
  type    = tuple([string, number, list(number)])
}
resource "local_file" "testfilet2" {
  filename = var.filenamet2[2]
  content  = var.content
}

variable "content1" {
  default = "Hello Terraform"
}

variable "filenamet2" {
  default = ["sam",000, "jyo"]
  type    = tuple([string, number, string])
}
resource local_file testfileo1 {
				filename = var.filenameo1.name
				content = "object sample"
			}

variable "filenameo1" {
  type = object({
    name    = string
    id      = number
    address = list(string)
  })

  default = {
    name    = "sanju"
    id      = 01
    address = ["channagiri","Davanagere"]
  }
}
resource "local_file" "testfileo2" {
  filename = var.filenameo2.name
  content  = "Object Practice"
}

variable "filenameo2" {
  type = object({
    name    = string
    id      = number
    address = list(string)
  })

  default = {
    name    = "Jarvice.txt"
    id      = 101
    address = ["mysore","karnataka"]
  }
}
