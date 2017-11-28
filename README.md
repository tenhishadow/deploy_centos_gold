Role Name
=========

Ansible Role for prepare new gold image of Centos(e.g. for VMWare template)

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
---
- hosts: target_prep
  gather_facts: true
  vars_files:
    - variables.yml
  roles: tenhishadow.deploy_centos_gold
```

Example of variables.yml
```yaml
---
resolve_domains:
  - test.local
  - test.dmz
nameservers:
  - 10.1.0.250
  - 10.1.1.251
users:
  rmgmt01:
    comment: "Management_User"
    createhome: "yes"
    group: "wheel"
    password: "$6$0VV4tm/L$QApSwqW42rkVmx3EPjlqvKAG8p3kFwUUukuPcnjykKJBXCmpix05g.LGBlFTgZlnbbkO.Z5GAuV4yl5Mj37Qo/"
    state: "present"
    system: "no"
    uid: "50000"
    update_password: "no"
  rmgmt02:
    comment: "Management_User"
    createhome: "yes"
    group: "wheel"
    password: "$6$0VV4tm/L$QApSwqW42rkVmx3EPjlqvKAG8p3kFwUUukuPcnjykKJBXCmpix05g.LGBlFTgZlnbbkO.Z5GAuV4yl5Mj37Qo/"
    state: "present"
    system: "no"
    uid: "50001"
    update_password: "no"
root_passwd: "$6$0VV4tm/L$QApSwqW42rkVmx3EPjlqvKAG8p3kFwUUukuPcnjykKJBXCmpix05g.LGBlFTgZlnbbkO.Z5GAuV4yl5Mj37Qo/"
root_ssh_keys: "/root/ssh-keys/active.pub"
users_ssh_keys: "/root/ssh-keys/active.pub"
...
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
