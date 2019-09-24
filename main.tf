  
resource "null_resource" "OneHelloWorld" {
  provisioner "local-exec" {
    command = "echo Hello world!"
  }
}


resource "null_resource" "MultiHelloWorld" {
  count = "${var.multiple}"
  provisioner "local-exec" {
    command = "echo Hello world ${count.index + 1}!"
  }
}
