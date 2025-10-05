# home-lab-management
Automation (ansible / terraform / bash) around building out and managing a homelab based on proxmox and libvirt

## ansible-core

### Create a virtual environment for ansible-core, activate it upgrade pip

#### Linux
```bash
python -m venv ~/.venv-ansible-core-proxmox
source ~/.venv-ansible-core-proxmox/bin/activate
pip install --upgrade pip
```

### Install ansible-core, proxmoxer and requests (needed by community.general.proxmox_*)

```bash
pip install ansible-core proxmoxer requests
```

### Install ansible collections

```
ansible-galaxy collection install community.general
ansible-galaxy collection install community.crypto
ansible-galaxy collection install community.proxmox
```

### Host checking reminder

CLI argument:
--ssh-common-args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

CLI env var:
ANSIBLE_HOST_KEY_CHECKING=false <command>

CLI env var (for the session):
export ANSIBLE_HOST_KEY_CHECKING=false

Inventory:
ansible_ssh_common_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

ansible.cfg:
[defaults]
host_key_checking = False

## terraform

### install terraform

#### fedora

```
sudo dnf config-manager addrepo --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install terraform
terraform --version
```

### proxmox API Token

Data Center > Permissions > API Tokens

in proxmox when creating the token, un-chcek priv separation

create user and role and then api token
token ID [user]@[auth method]![token name]  put this in single quotes

```
export PM_API_TOKEN_ID='....'
export PM_API_TOKEN_SECRET="...."
```

## packer

### install packer

#### fedora

```
sudo dnf config-manager addrepo --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install packer
packer --version
```


##### Special Thanks

https://github.com/ChristianLempa/boilerplates/blob/main/packer/proxmox/
