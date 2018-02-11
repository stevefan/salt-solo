{% set home = salt['environ.get']('HOME') %}
{% set user = salt['environ.get']('SUDO_USER') %}

{{ home }}/.vim/colors/:
  file.directory:
    - makedirs: True
    - user: {{ user }}
    - group: {{ user }} 
    - dir_mode: 755
    - file_mode: 755

{{ home }}/.vim/colors/zenburn.vim:
  file.managed:
    - source: https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
    - source_hash: 0E4ED69DE57DCEBE673371FBE7433989
