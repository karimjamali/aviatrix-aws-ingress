output "lb_dns_name" {
  value = aws_lb.centralized_ingress_lb.dns_name
}

output "sg_ids" {
  value = {
    lb    = module.security_group_centralized_lb.security_group_id
    proxy = module.security_group_proxy_vm.security_group_id
    web   = module.security_group_web_vm.security_group_id
  }
}
