code-server --host 0.0.0.0 --port 8080 --user-data-dir \"/home\" --no-auth &

jupyter notebook --no-browser --ip=0.0.0.0 --NotebookApp.token= --notebook-dir=\"/home//jupytertest\"&

apt-get install ssh&

service ssh start