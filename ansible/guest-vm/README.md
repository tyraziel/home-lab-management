ansible-playbook -i 192.168.1.42, --extra-vars='{"new_hostname": "vm-test-001"}' -u [playbook-user] -k -K gvm_update_network.yml

ansible-playbook -i vm-test-001,vm-test-002, -u [playbook-user] -k -K gvm_patching_dnf.yml

## to avoid having to SSH before running the playbook to accept the host ssh key
--ssh-common-args '-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
