# Wiki.js Deploy Files

## Required changes for configuration file

Make a copy of the example configuration file, name the file as `config.yml`.

These changes are required for actual deployment due to containing confidential information.

- auth.github.clientId
- auth.github.clientSecret
- sessionSecret

## Adding Deploy Key for Git Integration

1. Generate a key-pair for Git Integration, this can be done via the `generate-git-key.sh` script located at the upper level folder.
2. Head to [Settings > Deploy keys](https://github.com/ZSCNetSupportDept/wiki/settings/keys),
make sure the `Allow write access` option is checked.

## Starting the Service

Execute `docker-compose up -d` and you're good to go.
