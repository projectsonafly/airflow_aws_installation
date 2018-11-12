#!/bin/bash
#
echo "Creating postgresql airflow and ubuntu relation"
	sudo -u postgres psql << EOF
	CREATE USER airflow PASSWORD NULL;
	CREATE DATABASE airflow;
	GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO airflow;
	CREATE USER ubuntu PASSWORD NULL;
	CREATE DATABASE ubuntu;
	GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ubuntu;
	GRANT ALL PRIVILEGES on database airflow to ubuntu;
	GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ubuntu;
	ALTER ROLE ubuntu SUPERUSER;
	ALTER ROLE ariflow SUPERUSER;
	EOF

