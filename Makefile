all: echo

echo:
	@echo "Makefile"

logs:
	./audit_logs.sh

backup:
	./files_backup.sh

organization:
	./files_organization.sh

clean:
	./update_clean.sh

install:
	./update_install.sh