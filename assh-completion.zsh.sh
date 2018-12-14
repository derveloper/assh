#compdef assh

_assh() {
  source $HOME/.assh

  if ! [ -x "$(command -v ansible)" ]; then
    echo 'Error: ansible is not installed.' >&2
    exit 1
  fi

  selected_alias=${2:-$ANSIBLE_DEFAULT_ALIAS}

  selected_inventory_var="ANSIBLE_INVENTORY_$selected_alias"
  selected_inventory=(${(P)selected_inventory_var})

  if [[ ! -f $selected_inventory ]] ; then
    echo "File $selected_inventory is not there, aborting." >&2
    exit 1
  fi

  local -a groups
  groups=$(ansible all -i $selected_inventory -m debug -a 'var=groups.keys()' 2> /dev/null | grep '"groups.keys()"' | head -1 | sed -n 's/.*"dict_keys(\[\(.*\)\])".*/\1/p' | sed -n "s/[,']//gp")

  _arguments \
    '1: :->group'\
    '*: :->env'

  case $state in
    (group) _arguments "1:groups:($groups)" ;;
    (*) compadd "$@" prod staging dev
  esac
}

