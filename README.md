# 1. TOOLBOX Luanix

The "TOOLBOX_Luanix" is a toolbox that automates file backup, file organization, system cleanup, tool installation, and log auditing tasks. Packaging these scripts is not recommended, as they are intended solely for the Debian operating system, and due to their complexity. The shell scripting language used was Bash.

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
- File Format: Makefile
- Code Versioning: Git
- Containerization: Docker

# 4. Clone the Repository

- Bash

git clone https://github.com/jose-techcode/TOOLBOX_Luanix

# 5. Project Folder

- Bash

cd TOOLBOX_Luanix

# 6. Contribution

Feel free to open Issues or submit Pull Requests.

# 7. License

This project is licensed under the MIT license.

# 8. Observations

This scripting toolkit is intended exclusively for the Debian operating system. It is not guaranteed to work on other Linux distros without adaptation.