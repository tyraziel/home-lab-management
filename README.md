# home-lab-management
Automation (ansible / bash) around building out and managing a homelab based on proxmox and libvirt

## Create a virtual environment for ansible-core, activate it upgrade pip

### Linux
```bash
python -m venv ~/.venv-ansible-core-proxmox
source ~/.venv-ansible-core-proxmox/bin/activate
pip install --upgrade pip
```

## Install ansible-core, proxmoxer and requests (needed by community.general.proxmox_*)

```bash
pip install ansible-core proxmoxer requests
```

## Install ansible collections

```
ansible-galaxy collection install community.general
ansible-galaxy collection install community.crypto
ansible-galaxy collection install community.proxmox
```
