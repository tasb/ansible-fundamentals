# Demo 01 - Run Playbook

## Show files

- Go through Inventory, Group and Host vars
- Show the playbook all.yaml

## Change user and group

- Edit `inventory/dev/group_vars/all`
- Change user and group variable value

## Run all.yaml playbook

```bash
ansible-playbook all.yaml
```

- No inventory specified because it's configured on ansible.cfg
- Check the outcomes

## Check the results

- Login on rasp002
- Check the user, group and home folder created
- Check ssh key on home folder
- Go back to rasp001
- Check folder ~/ssh-keys

## Rerun with --check flag

```bash
ansible-playbook -i inventory/dev all.yaml --check
```

- Check the outcomes

## Run playbook for web servers

```bash
ansible-playbook -i inventory/dev web web.yaml
```

- Check the outcome

## Let's rerun the web playbook with --check

```bash
ansible-playbook -i inventory/dev web web.yaml --check
```

- As a non-idempotent playbook the check will change a lot
