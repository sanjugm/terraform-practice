resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "Hello"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = local_file.file1.id
}
