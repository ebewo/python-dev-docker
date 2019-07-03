#!/bin/bash
set -e

if [ $# -eq 0 ]
  then
    jupyter lab --ip=0.0.0.0 --NotebookApp.password=$JUPYTER_PASS --allow-root --no-browser &> /dev/null &
    code-server*/code-server --allow-http --user-data-dir /data /code
  else
    exec "$@"
fi