# Ansible Role: Elasticsearch

An Ansible Role that installs Elasticsearch on RedHat/CentOS.

## Requirements

None

## Role Variables
Available variables are listed below, along with default values (see `defaults/main.yml`):

    elasticsearch_network_host: localhost

Network host to listen for incoming connections on. By default we only listen on the localhost interface. Change this to the IP address to listen on a specific interface, or `0.0.0.0` to listen on all interfaces.

    elasticsearch_http_port: 9200

The port to listen for HTTP connections on.

    elasticsearch_script_inline: true
    elasticsearch_script_indexed: true

## Example Playbook

    - hosts: search
      roles:
        - ansible_elasticsearch_role


## Ansible Kitchen

Install the `kitchen-ansible` gem in your system, along with [kitchen-vagrant](https://github.com/test-kitchen/kitchen-vagrant) or [kitchen-docker](https://github.com/test-kitchen/kitchen-docker) or any other suitable driver:

```
gem install test-kitchen
gem install kitchen-ansible
gem install kitchen-vagrant
gem install kitchen-verifier-serverspec
gem install serverspec
```
