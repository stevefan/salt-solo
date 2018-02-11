{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

# make non sudo verion for just pulling light weight vim config into a system

{{ home }}/.vim/colors/zenburn.vim:
  file.managed:
    - source: https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
    - source_hash: 0E4ED69DE57DCEBE673371FBE7433989
    - require:
      - file: {{ home }}/.vim/colors/
