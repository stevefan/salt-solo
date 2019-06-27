{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

run_user_nvm_install:
  cmd.run:
    - name: sudo -u {{ user }} bash -c '. {{ home }}/.nvm/nvm.sh; nvm install stable'
    - runas: {{ user }}

run_root_nvm_install:
  cmd.run:
    - name: sudo bash -c '. /opt/nvm/nvm.sh; nvm install stable'

create-react-app:
  cmd.run:
    - name: sudo bash -c '. /opt/nvm/nvm.sh; npm install create-react-app'
