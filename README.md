# assh
connect to a ansible hostgroup via ssh

original idea from https://github.com/SkaveRat/ansishell which seems to be unmaintained

## setup

clone this repo

```git clone https://github.com/derveloper/assh```

put the ```assh``` script in your ```$PATH```

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

```./assh <host_group> [<inventory_alias>]```

## license

```
Copyright 2018 Tristan Leo

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
