# Vagrant AWX

With this repository you can create a local **[Ansible AWX server](https://github.com/ansible/awx)** implementation with vagrant (CentOS 7 VM).


# Table of contents

- [Vagrant AWX](#vagrant-awx)
- [Table of contents](#table-of-contents)
  - [Usage](#usage)
    - [Dependencies](#dependencies)
    - [First usage](#first-usage)
    - [Credentials](#credentials)
    - [Manual start / stop](#manual-start--stop)
  - [Used technologies & Software](#used-technologies--software)
    - [Bash script](#bash-script)
    - [Ansible](#ansible)
    - [Docker](#docker)
    - [Visual Studio Code](#visual-studio-code)
    - [Vagrant](#vagrant)
  - [Describe files](#describe-files)
    - [Vagrantfile](#vagrantfile)
    - [README.md](#readmemd)
    - [LICENSE](#license)
    - [.gitignore](#gitignore)
    - [install_scripts\docker.sh](#install_scriptsdockersh)
    - [install_scripts\os_dep.sh](#install_scriptsos_depsh)
  - [License](#license-1)
  - [Author Information](#author-information)

## Usage

### Dependencies

From technology point of view:

- Installed Vagrant

- Windows OS

### First usage

Change your current working directory here, and execute: `vagrant up`. It takes ~ 11mins (basebox exist in cache, with SSD - Dell latitude e6540) to spin up the VM with vagrant.

After vagrant up, you should able to login AWX `http://192.168.56.150` with **default credentials**.

Please be patient (it takes ~2mins after installation finished to be able to open). AWX migration / upgrade should takes additional ~ 5mins.

### Credentials

Default credentials for installed AWX server.

Username: `admin`

Password: `password`

### Manual start / stop

Basic information to be able to start it manually, after vagrant box was created succesfully (Starts automatically, it is just for debugging purpose):

**docker-compose** file's location: `/root/.awx/awxcompose/docker-compose.yml`

**Start it manually**:
```sh
[root@localhost awxcompose]# cd /root/.awx/awxcompose/
[root@localhost awxcompose]# docker-compose up -d
```

## Used technologies & Software

### Bash script

[Bash script](https://medium.com/sysf/bash-scripting-everything-you-need-to-know-about-bash-shell-programming-cd08595f2fba) is responsible to install OS dependencies to the VM && install docker.

### Ansible

[Provisioning tool](https://www.ansible.com/) to set up AWX server.

### Docker

Ansible AWX runs in [docker](https://www.docker.com/) containers. It is required to be able to install AWX.

### Visual Studio Code

This IDE was used to prepare and handle all of the code.

### Vagrant

[Vagrant](https://www.vagrantup.com/) is a hashicorp tool which provides you a way to spin up a virtual machine in your local computer (via virtualbox). It is ideal to reproduce the server in your local computer, without any cloud provider.

## Describe files

### Vagrantfile

Settings of VM created by vagrant.

### README.md

This file, what you are reading now. It is in [Markdown](https://www.markdownguide.org/getting-started/) language.

### LICENSE

License file.

### .gitignore

File to define excluded files, folders, patterns by git.

### install_scripts\docker.sh

Bash script to install docker to the VM. Docker is a dependency for AWX.

### install_scripts\os_dep.sh

Bash script to install OS dependencies to the VM.

## License

MIT

## Author Information

Peter Mikaczo - <petermikaczo@gmail.com>