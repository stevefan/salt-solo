
nodejs:
  pkg.installed

npm:
  pkg.installed

elm:
  npm.installed:
    - require:
      - pkg: npm
