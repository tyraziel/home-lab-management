# home-lab-management
Automation (ansible / bash) around building out and managing a homelab based on proxmox and libvirt

Create a virtual environment for ansible-core, source it upgrade pip.

```bash
python -m venv ~/.venv-ansible-core-proxmox
source ~/.venv-ansible-core-proxmox
pip install --upgrade pip
```

Install ansible-core, proxmoxer and requests (needed by community.general.proxmox_*)

```bash
pip install ansible-core proxmoxer requests
```