# Lab 01 - Run Ad-Hoc Commands and simple playbook

## Contents

- [Objective](#objective)
- [Prerequisites](#prerequisites)
- [Part 1: Ad-hoc Commands](#part-1-ad-hoc-commands)
  - [Ping Localhost](#ping-localhost)
  - [Gather Facts](#gather-facts)
  - [List Files in Current Directory](#list-files-in-current-directory)
  - [Expected Outcome](#expected-outcome)
- [Part 2: Simple Playbook](#part-2-simple-playbook)
  - [Run playbook](#run-playbook)
- [Conclusion](#conclusion)

## Objective

Familiarize yourself with Ansible's ad-hoc commands and create a basic playbook with tasks to be executed locally.

## Prerequisites

Install Ansible on your machine.

## Part 1: Ad-hoc Commands

### Ping Localhost

Let's test Ansible's connection to your local machine.

```bash
ansible localhost -m ping
```

### Gather Facts

Use the `setup` module to gather facts about your local machine.

```bash
ansible localhost -m setup
```

### List Files in Current Directory

Use the `command`` module to list files.

```bash
ansible localhost -m command -a "ls -l"
```

### Expected Outcome

After running the ad-hoc commands, you should see successful outputs for the ping, setup, and command modules.

## Part 2: Simple Playbook

Create a new file named `simple_playbook.yml`.

Add the following content to `simple_playbook.yml`:

```yaml
---
---
- name: Expanded Ansible Playbook with 5 Tasks
  hosts: localhost
  connection: local
  tasks:
    - name: Ensure the "ansible_lab" directory exists
      file:
        path: ./ansible_lab
        state: directory

    - name: Create a file named "info.txt" in the "ansible_lab" directory
      copy:
        content: "This is a test file for Ansible lab."
        dest: ./ansible_lab/info.txt

    - name: Install "htop" package
      apt:  # This assumes a Debian/Ubuntu system. Use 'yum' for RedHat/CentOS.
        name: htop
        state: present
      become: yes  # This is to execute the task as sudo

    - name: Ensure "cron" service is started
      service:
        name: cron
        state: started
      become: yes

    - name: Create a symbolic link to "info.txt"
      file:
        src: ./ansible_lab/info.txt
        dest: ./ansible_lab/link_to_info.txt
        state: link

```

This playbook will run the following tasks:

1. Creates a directory named "ansible_lab" in the current directory.
2. Creates a file named "info.txt" inside the "ansible_lab" directory with the content "This is a test file for Ansible lab."
3. Installs the "htop" package.
4. Starts the "cron" service.
5. Creates a symbolic link named "link_to_info.txt" pointing to "info.txt" inside the "ansible_lab" directory.

### Run playbook

Run the playbook using the following command:

```bash
ansible-playbook simple_playbook.yml
```

## Conclusion

This lab provided a basic introduction to Ansible's ad-hoc commands and playbook structure.

You learned how to execute simple tasks on your local machine using both ad-hoc commands and a playbook.
