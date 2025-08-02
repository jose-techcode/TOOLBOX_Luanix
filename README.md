# 1. TOOLBOX Luanix

The "TOOLBOX Luanix" is a toolbox that automates file backup, file organization, system cleanup, tool installation, and log auditing tasks. Packaging these scripts in .deb is not recommended, as they are intended solely for the debian operating system, and due to their complexity. The shell scripting language used was bash. If you want, you can schedule some scripts with cron, using crontab -e.

# 2. Features

- (sudo) ./audit_logs.sh - Audit of system logs, authentication/security logs, and kernel logs.

- ./files_backup.sh - Backup files from the documents, music, pictures, videos and downloads
directories.

- ./files_organization.sh - Organizing file extensions into their respective directories.

- (sudo) ./update_clean.sh - Package update and disk cleanup.

- (sudo) ./update_install.sh - Update packages and installs tools.

# 2.5 Makefile features

- (sudo) make logs - Audit of system logs, authentication/security logs, and kernel logs.

- make backup - Backup files from the documents, music, pictures, videos and downloads
directories.

- make organization - Organizing file extensions into their respective directories.

- (sudo) make clean - Package update and disk cleanup.

- (sudo) make install - Update packages and installs tools.

# 3. Technologies

- Shell Scripting: Bash
- Environment: Linux/Debian
- Files Format: Makefile & Yaml
- Code Versioning: Git
- Containerization: Docker
- CI: Github Actions

# 4. Clone the Repository

- Bash

git clone https://github.com/jose-techcode/TOOLBOX_Luanix

# 5. Project Folder

- Bash

cd TOOLBOX_Luanix

# 5.5 Scripts Folder (with makefile)

- Bash

cd TOOLBOX_Luanix/scripts/

# 6. Contribution

Feel free to open Issues or submit Pull Requests.

# 7. License

This project is licensed under the MIT license.

# 8. Observations

This scripting toolkit is intended exclusively for the debian operating system. It is not guaranteed to work on other linux distros without adaptation. It is not recommended to use docker for these scripts, given the dependence on the operating system for the correct functioning of the automations.