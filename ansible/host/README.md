ansible-playbook -i pve-host-001,pve-host-002, -u [playbook-user] -k -K host_patching_apt.yml

The `-i` needs to have a comma at the end of the list, even if it's one server.