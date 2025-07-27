#!/bin/bash

# Execute with sudo

# Stop in first error

set -e

# Shows the last 10 lines of the syslog

echo "-----Syslog-----"
echo ""

tail -n 10 /var/log/syslog

echo ""

# Shows the last 10 lines of the authlog

echo "-----Authlog-----"
echo ""

tail -n 10 /var/log/auth.log

echo ""

# Shows the last 10 lines of the kernlog

echo "-----Kernelog-----"
echo ""

tail -n 10 /var/log/kern.log

echo ""