{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

# make non sudo verion for just pulling light weight vim config into a system

{{ home }}/.vim/colors/zenburn.vim:
  file.managed:
    - source: https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
    - source_hash: 4e4cec47c395bd15922c8d2a753cd62e
    - require:
      - file: {{ home }}/.vim/colors/
