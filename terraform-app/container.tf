resource "docker_container" "wordpress" {
  count = var.wordpress_instance_count
  name  = "wordpress.${count.index}"
  image = "wordpress:latest"
  restart = "always"

  ports {
    internal = "80"
    external = count.index + 9001
  }
}