all: echo # to not run any script unintentionally

# Test (to not run any script unintentionally)

echo:
	@echo "Makefile"

# sudo make logs

logs:
	scripts/audit_logs.sh

# make backup

backup:
	scripts/files_backup.sh

# make organization

organization:
	scripts/files_organization.sh

# sudo make clean

clean:
	scripts/update_clean.sh

# sudo make install

install:
	scripts/update_install.sh

# make image

image:
	./docker_trivy.sh