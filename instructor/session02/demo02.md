# Session 02: Demo 02 - Authentication

## Run ping command

```bash
ansible k8snodes -m ping
```

## Use ssh key on command line

```bash
ansible k8snodes -m ping --private-key=/home/ubuntu/ssh-keys/tiberna-key.pem
```

## Use user on command line

```bash
ansible k8snodes -m ping --user=ubuntu -k

ansible k8snodes -m ping --user=ubuntu --ask-pass
```

## Use ssh key in config file

1. Edit ansible.cfg
2. Uncomment private_key_file

```
ansible k8snodes -m ping
```

