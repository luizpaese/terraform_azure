[all]
%{ for vm in vms ~}
${vm.name}  ansible_host=${vm.public_ip_address}
%{ endfor ~}
[all:vars]
ansible_user=${username}