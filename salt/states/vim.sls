{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

vim:
  pkg.installed

{{ home }}/.vim/autoload/:
  file.directory:
    - makedirs: True
    - user: {{ user }}
    - group: {{ user }} 
    - dir_mode: 755
    - file_mode: 755

{{ home }}/.vim/autoload/plug.vim:
  file.managed:
    - source: https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    - source_hash: D9C76B2797BCE73FAC4811333C760EAD
    - require:
      - file: {{ home }}/.vim/autoload/
