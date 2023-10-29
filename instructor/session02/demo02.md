# Session 02: Demo 02 - Authentication

## Run ping command

```bash
ansible nodes -m ping
```

## Use ssh key on command line

```bash
ansible nodes -m ping --private-key=/home/ubuntu/ssh-keys/tiberna-key.pem
```

## Use user on command line

```bash
ansible nodes -m ping --user=ubuntu -k

ansible nodes -m ping --user=ubuntu --ask-pass
```

## Use ssh key in config file

1. Edit ansible.cfg
2. Uncomment private_key_file

```bash
ansible nodes -m ping
```
