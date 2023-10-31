# Demo 02 - Change to Idempotent Playbook

## Edit web.yaml playbook

- Add the content from file final/web.yaml

## Run command with check

```bash
ansible-playbook -i inventory/dev web web.yaml --check
```

- Check outcome

## Change nginx version variable

- Edit inventory/dev/group_vars/web.yaml and set variable with `1.25.1-1~jammy`

```bash
ansible-playbook -i inventory/dev web web.yaml --check
```

```bash
ansible-playbook -i inventory/dev web web.yaml
```
