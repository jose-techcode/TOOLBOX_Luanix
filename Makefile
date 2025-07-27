all: echo

# Test

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