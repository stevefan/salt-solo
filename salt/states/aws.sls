
#aws-cli:
#  snap.installed
# No support for Snappy in Salt Stack 6/4/19

aws-amplify:
  npm.installed:
    - pkgs:
      - "@aws-amplify/cli"
    - require:
      - pkg: npm
