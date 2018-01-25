# assh
connect to a ansible hostgroup via ssh

original idea from https://github.com/SkaveRat/ansishell which seems to be unmaintained

## setup

create a file in your ```$HOME``` named ```.assh```

```bash
# your multi ssh command, choose whatever you like
ASSH_CMD=sshmulti

# the default inventory to use if none was provided
ANSIBLE_DEFAULT_ALIAS="dev"

# inventory alias paths, add as many as you want with arbitrary names
ANSIBLE_INVENTORY_dev="<your dev environment inventory path>"
ANSIBLE_INVENTORY_production="<your production environment inventory path>"
```

## usage

```assh <host_group> [<inventory_alias>]```
