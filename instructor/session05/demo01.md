# Gathering facts and use custom facts

## Show facts on localhost

```bash
ansible localhost -m setup
```

## Show facts on all nodes

```bash
ansible nodes -m setup
```

## Show custom facts files

- Show static facts
- Show bash script to generate dynamic facts

## Run playbook

```bash
ansible-playbook -i inventory/testing.yml custom_facts.yaml
```
