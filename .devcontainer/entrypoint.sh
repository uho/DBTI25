#!/bin/bash
# Startet den MariaDB-Dienst und eine Bash-Shell

# Starte MariaDB
service mysql start

# Halte den Container offen
exec bash

