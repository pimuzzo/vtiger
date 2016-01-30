#!/bin/bash
set -e

if [ -z "$DB_HOSTNAME" ]; then
        echo >&2 'error: missing DB_HOSTNAME environment variable'
        exit 1
fi

if [ -z "$DB_USERNAME" ]; then
        echo >&2 'error: missing DB_USERNAME environment variable'
        exit 1
fi

if [ -z "$DB_PASSWORD" ]; then
        echo >&2 'error: missing DB_PASSWORD environment variable'
        exit 1
fi

if [ -z "$DB_NAME" ]; then
        echo >&2 'error: missing DB_NAME environment variable'
        exit 1
fi

sed -i "s/\$defaultParameters\['db_hostname'\]/'"${DB_HOSTNAME}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_username'\]/'"${DB_USERNAME}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_password'\]/'"${DB_PASSWORD}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_name'\]/'"${DB_NAME}"'/" vtigercrm/modules/Install/views/Index.php

exec "$@"

