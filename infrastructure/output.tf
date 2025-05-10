output "web_application_server_instance_ip_address" {
    description = "The private IP address of the web app instance"
    value = module.web_application_server.instance_ip_address
}