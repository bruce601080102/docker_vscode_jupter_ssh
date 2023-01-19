## Motivation
How to share the environment of a top-level computer through DOCKER's technology, make a record, and share here

## Installation from sources

* [Desktop environments for the Window10 System](https://docs.docker.com/docker-for-windows/install/)

* [Window10(WSL2)]( https://docs.microsoft.com/en-us/windows/wsl/install-win10) ``` sudo apt-get install docker.io ```

* ubuntu  ``` sudo apt-get install docker.io ```

## Usage
1. Clone the repo
   ```sh
   git clone https://github.com/bruce601080102/docker_vscode_jupter_ssh.git
   cd docker_vscode_jupter_ssh
   ```

2. Then build and run the documentation with Docker
   ```sh
   docker build -t vsjupyter . --no-cache
   docker run -tid --restart=always --privileged=true -p 7777:8080 -p 8888:8888 -p 422:22 --name vscode -h myenv-1 vsjupyter
   ```

Once the container is built and running

  * Visit VScode URL : [http://localhost:7777/](http://localhost:7777/)
  * Visit Jupter Notebook URL : [http://localhost:8888/](http://localhost:8888/ )



## SET UP SSH

   
1. Visit VSCODE, and you need to set the "sudo" permission name. [Example image](https://github.com/bruce601080102/docker_vscode_jupter_ssh/blob/main/images/adduser.jpg)
   ```sh
   adduser yourUserName
   su yourUserName
   ```

2. Go back to the local computer and open cmd
    ```sh
    ssh  bruce@192.168.0.11 -p 422
    ```
## Momo
* Download the vs. code extension kit Remote-SSH

