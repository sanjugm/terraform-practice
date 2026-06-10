resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "Hello"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = local_file.file1.id
}
resource "local_file" "filel1" {
  filename = "filel1.txt"
  content  = "Hello"
}

resource "local_file" "filel2" {
  filename   = "filel2.txt"
  content    = "World"
  depends_on = [local_file.file1]
}
resource "local_file" "test" {
  filename = "demo1.txt"
  content  = "Version1"

  lifecycle {
    create_before_destroy = true
  }
}
resource "local_file" "test4" {
  filename = "demo3.txt"
  content  = "Hello"

  lifecycle {
    prevent_destroy = true
  }
}
