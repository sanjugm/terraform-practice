resource "local_file" "file1" {
  filename = var.filename1

  content = "this is samlpe"
}
resource "local_file" "file2" {
  filename = var.filename2[1]

  content = "This is sample2"
}
resource "local_file" "file3" {
  filename = var.filename3

  content = "hello this is sample"
}

