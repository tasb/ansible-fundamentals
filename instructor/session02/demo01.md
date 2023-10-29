# Session 02: Demo 01 - Run Ad-hoc commands

## Create an Ansible config file

```bash
ansible-config init –disabled > ansible_full.cfg
```

#### Topics Covered

- [ ] This command creates a full ansible config file with all the options
- [ ] The file is named ansible_full.cfg
- [ ] The -disabled option disables (comments) all the options

## Check smaller Ansible config file

Open the file ansible.cfg in the current directory

#### Topics Covered

- [ ] Check inventory parameter
- [ ] SSH key comment out

## Run ping locally

```bash
ansible localhost -m ping
```

#### Topics Covered

- [ ] Use of localhost pattern
- [ ] JSON return
- [ ] ping module: Try to connect to host, verify a usable python and return pong on success

## Run cp file locally

```bash
ansible localhost -m copy -a "src=/home/ubuntu/ssh-keys/tiberna-key.pem dest=/home/ubuntu/.ssh/id_rsa"
```

#### Topics Covered

- [ ] -a parameters for module
- [ ] JSON return and check mode

## Change mode of file locally

```bash
ansible localhost -m file -a "path=/home/ubuntu/.ssh/id_rsa mode=0600" --connection=local
```

#### Topics Covered

- [ ] --connection=local to not use ssh to localhost
- [ ] Return with mode set

## Run ping on all remote host

```bash
ansible all -m ping
```

#### Topics Covered

- [ ] all pattern
- [ ] List of all affected servers

## Run copy file on k8snodes pattern

```bash
ansible nodes -m copy -a "src=/etc/hosts dest=/tmp/hosts"
```

## Install nginx-light

```bash
ansible webserver -m apt -a "name=nginx-light state=present" --become
```

## Check if nginx service is running

```bash
ansible webserver -m command -a "systemctl status nginx" --become
```

## Stop nginx service

```bash
ansible webserver -m service -a "name=nginx state=stopped" --become
```

## Check if nginx service is running

```bash
ansible webserver -m command -a "systemctl status nginx" --become
```

## Uninstall nginx-light

```bash
ansible webserver -m apt -a "name=nginx-light state=absent" --become
```

## Delete id_rsa file on localhost

```bash
ansible localhost -m file -a "path=/home/ubuntu/.ssh/id_rsa state=absent" --connection=local
```

## Check file is deleted

```bash
ansible localhost -m command -a "ls /home/ubuntu/.ssh" --connection=local
```
