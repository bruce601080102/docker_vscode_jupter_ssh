FROM nvcr.io/nvidia/deepstream:6.1.1-devel


RUN mkdir /opt/nvidia/deepstream/deepstream-6.1/jupytertest
RUN mkdir /opt/nvidia/deepstream/deepstream-6.1/commonFolder

RUN pip3 install jupyter && \ 
    apt-get install ssh -y && \
    apt-get install openssh-server 

COPY jupyter_notebook_config.py /root/.jupyter/
COPY sshd_config /etc/ssh/


RUN echo "jupyter notebook --no-browser --ip=0.0.0.0 --NotebookApp.token= --notebook-dir=\'/opt/nvidia/deepstream/deepstream-6.1\' &" >> ~/.bashrc
RUN echo "root:16313302" | chpasswd
RUN echo "/etc/init.d/ssh restart " >> ~/.bashrc


RUN apt install zsh -y &&  \
     y |sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
     chsh -s $(which zsh)

RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
COPY .zshrc  /
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/bruce601080102/docker_vscode_jupter_ssh/main/build_zsh1.sh)"
# cp /opt/nvidia/deepstream/deepstream-6.1/commonFolder/.zshrc ~/
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zshrc