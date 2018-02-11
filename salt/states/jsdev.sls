
nodejs:
  pkg.installed

npm:
  pkg.installed

elm:
  npm.installed:
    - require:
      - pkg: npm

elm.vim:
  npm.installed:
    - pkgs:
      - elm-test
      - elm-oracle
      - elm-format


