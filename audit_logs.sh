#!/bin/bash

# Sudo

# Stop in first error

set -e

# Shows the last 10 lines of the syslog (system log)

echo "-----Syslog-----"
echo ""

tail -n 10 /var/log/syslog

echo ""

# Shows the last 10 lines of the authlog (authentication log)

echo "-----Auth.log-----"
echo ""

tail -n 10 /var/log/auth.log

echo ""

# Shows the last 10 lines of the kernlog (kernel log)

echo "-----Kern.log-----"
echo ""

tail -n 10 /var/log/kern.log

echo ""