# 1. TOOLBOX Luanix

The "TOOLBOX Luanix" is a toolbox that automates file backup, file organization, system cleanup, tool installation, and log auditing tasks. Packaging these scripts in .deb is not recommended, as they are intended solely for the debian operating system, and due to their complexity. The shell scripting language used was bash. If you want, you can schedule some scripts with cron, using crontab -e in terminal. Nano editor is recommended for cron.

# 2. Permissions (cd scripts)

- chmod +x audit_logs.sh

- chmod +x files_backup.sh

- chmod +x files_organization.sh

- chmod +x update_clean.sh

- chmod +x update_install.sh

- (project root) chmod +x docker_trivy.sh

# 2.1. Features (cd scripts)

- sudo ./audit_logs.sh - Audit of system log and authentication log.

- ./files_backup.sh - Backup files from the documents, music, pictures, videos and downloads
directories.

- ./files_organization.sh - Organizing file extensions into their respective directories.

- sudo ./update_clean.sh - Update and upgrade packages, remove orphaned dependencies and clean old packages.

- sudo ./update_install.sh - Update, upgrade and installs packages.

- (project root) ./docker_trivy.sh - Build a Docker image and scan it with Trivy.

# 2.2. Makefile features (project root)

- sudo make logs - Audit of system log and authentication log.

- make backup - Backup files from the documents, music, pictures, videos and downloads
directories.

- make organization - Organizing file extensions into their respective directories.

- sudo make clean - Update and upgrade packages, remove orphaned dependencies and clean old packages.

- sudo make install - Update, upgrade and installs packages.

- make image - Build a Docker image and scan it with Trivy.

# 2.3. Ansible features (cd ansible)

- ansible-playbook playbook_sudo.yml --ask-become-pass - Update, upgrade and install packages, remove orphaned dependencies and clean old packages.

- ansible-playbook playbook_user.yml - Organization of files by extensions and backup of files of main directories.

# 3. Technologies

- Shell Scripting: Bash
- IaC Language (1): Terraform
- IaC Language (2): Ansible
- Environment: Linux/Debian
- Files Format: Makefile & Yaml
- Code Versioning: Git
- Containerization: Docker
- Scanner (docker image): Trivy
- CI: Github Actions
- Optional: Cron

# 4. Clone the Repository

- Bash

git clone https://github.com/jose-techcode/TOOLBOX_Luanix

# 5. Project Folder

- Bash

cd TOOLBOX_Luanix

# 5.1. Scripts Folder

- Bash

cd scripts

# 5.2. Ansible Folder

- Bash

cd ansible

# 5.3. Terraform Folder

- Bash

cd terraform

# 6. Run in Docker (only some scripts)

- Build the image

docker build -t toolbox_luanix .

- Scan the docker image with Trivy (false positives are expected)

trivy image toolbox_luanix:latest

- Run the image with privileges

docker run --rm --privileged toolbox_luanix:latest

# 6.1. Run in docker (only some scripts with bash)

- Execute this script to build docker image and scan with Trivy

./docker_trivy.sh

- Run the image with privileges

docker run --rm --privileged toolbox_luanix:latest

# 6.2. Run in docker (only some scripts with makefile)

- Execute this makefile command to build docker image and scan with Trivy

make image

- Run the image with privileges

docker run --rm --privileged toolbox_luanix:latest

# 7. Terraform features (cd terraform)

- terraform init - Start the project directory.

- terraform plan - Show what terraform will create, change, and destroy.

- terraform apply (optional: -auto-approve) - Applies infrastructure provisioning (container).

- terraform destroy (optional: -auto-approve) - Destroy infrastrcture (container).

- terraform fmt - Formats the organization of .tf files.

- terraform validate - Check if the terraform configuration is correct.

- terraform show - Show the status of infrastructure.

- terraform graph - Show the dependency graph.

- **Note:** 

There are other Terraform commands, but they are not yet applicable to this project. Terraform in this project is more for learning purposes, as the docker_trivy.sh script solves much of the problem proposed to be solved by Terraform.

# 8. Contribution

Feel free to open Issues or submit Pull Requests.

# 9. License

This project is licensed under the MIT license.

# 10. Notes

This scripting toolbox is intended exclusively for the debian operating system. It is not guaranteed to work on other linux distros without adaptation. It is not recommended to use docker for these scripts, given the dependence on the operating system for the correct functioning of the automations. But, can use the scripts update_clean.sh and update_install.sh in docker. Much of this project is for learning purposes.