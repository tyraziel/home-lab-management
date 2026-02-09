## Environment Variables:

These playbooks rely on the following environment variables to be set in order for the playbooks to work.

PROXMOX_HOST - just the host name, no port
PROXMOX_USER - the user including @ if needed
PROXMOX_TOKEN_ID - the token ID
PROXMOX_TOKEN_SECRET - the secret for the token


## Examples:
ansible-playbook pxmx_create_vms_from_template.yml --extra-vars='{"proxmox_target_node":"proxmox-target-node", "proxmox_node_storage":"proxmox-node-storage", "template":"image-base", "vm_guests_to_create": [{"hostname": "vm-test-001", vmid: 101}, {"hostname": "vm-test-002", "vmid": 102}]}'

ansible-playbook pxmx_start_vms.yml --extra-vars='{"vm_guests_to_start": ["vm-test-001", "vm-test-002"]}'

ansible-playbook pxmx_snapshot_vms.yml --extra-vars '{"vm_guests_to_snapshot": ["vm-test-001","vm-test-002"], "live": true, "snapshot": "TESTING_LIVE_SNAP"}'
ansible-playbook pxmx_snapshot_vms.yml --extra-vars '{"vm_guests_to_snapshot": ["vm-test-001","vm-test-002"], "live": false, "snapshot": "TESTING_SNAP"}'

ansible-playbook pxmx_update_cpu_vms.yml --extra-vars='{"proxmox_target_node":"proxmox-target-node", "vm_guests_to_update": ["vm-test-001"], "cores":4, "sockets":1}'
ansible-playbook pxmx_update_memory_vms.yml --extra-vars='{"proxmox_target_node":"proxmox-target-node", "vm_guests_to_update": ["vm-test-001"], "memory_mb":16384}'

ansible-playbook pxmx_stop_vms.yml --extra-vars='{"vm_guests_to_start": ["vm-test-001", "vm-test-002"]}'

ansible-playbook pxmx_remove_vms.yml --extra-vars='{"vm_guests_to_remove": ["vm-test-001","vm-test-002"]}'
