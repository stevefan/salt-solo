{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

run_nvm_install:
  cmd.run:
    - name: sudo -u {{ user }} bash -c '. {{ home }}/.nvm/nvm.sh; nvm install stable'
    - runas: {{ user }}

# nodejs:
#   pkg.installed
# 
# npm:
#   pkg.installed
# 
# create-react-app:
#   npm.installed:
#     - pkgs:
#       - create-react-app
# 
