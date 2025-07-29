all: echo # to not run any script unintentionally

# Test (to not run any script unintentionally)

echo:
	@echo "Makefile"

# sudo make logs

logs:
	./audit_logs.sh

# make backup

backup:
	./files_backup.sh

# make organization

organization:
	./files_organization.sh

# sudo make clean

clean:
	./update_clean.sh

# sudo make install

install:
	./update_install.sh