{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

generate_github_ssh_key:
  cmd.run:
    - name: ssh-keygen -q -N '' -f {{ home }}/.ssh/id_rsa_github
    - runas: {{ user }}
    - unless: test -f {{ home}}/.ssh/id_rsa_github
