#!/bin/bash

# Path to the Python virtual environment 'activate' script
PYTHON_ENV=

# Path to the project root directory
PROJECT_DIR=

# Override the default gunicorn process name
PROCESS_NAME=

# Path to the gunicorn 'access.log' file (usually put in /var/log/ directory)
ACCESS_LOG_FILE=

# Path to the gunicorn 'error.log' file (usually put in /var/log/ directory)
ERROR_LOG_FILE=

echo "Restarting server..."

echo -e "\t> Activate Python virtual environment..."
source ${PYTHON_ENV}

echo -e "\t> Switch to project directory..."
cd ${PROJECT_DIR}

echo -e "\t> Kill Gunicorn master and worker processes..."
kill -9 `ps aux | grep -E "gunicorn:\s(master|worker)\s\[${PROCESS_NAME}\]" | awk '{ print $2 }'`

echo -e "\t> Restart Gunicorn..."
gunicorn \
    --daemon \
    --workers=4 \
    --worker-class=sync \
    --worker-connections=1024 \
    --name=${PROCESS_NAME} \
    --backlog=2048 \
    --access-logfile=${ACCESS_LOG_FILE} \
    --error-logfile=${ERROR_LOG_FILE} \
    example_application.wsgi:application

echo "Server restarted..."
