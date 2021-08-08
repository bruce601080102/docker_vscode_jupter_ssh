FROM jmcdice/vscode-server

MAINTAINER bruce

RUN apt-get update && apt-get install -y \
    python3-pip

RUN mkdir home/jupytertest
RUN pip3 install jupyter

COPY jupyter_notebook_config.py /root/.jupyter/
COPY init.sh /

CMD ["/bin/bash","/init.sh"]


