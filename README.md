# awsenv.fish

**A simple multi-provider AWS profile manager for fish-shell with backed-in
supports for saml2aws and aws-vault.**

## Usage

```txt
# awsenv 0.1.0 (https://github.com/0rax/awsenv.fish)

A simple multi-provider AWS profile manager for fish-shell with backed-in
supports for saml2aws and aws-vault. The aws-cli is required for this software
to work.

Usage:

    awsenv saml <profile>
        Switch current profile to <profile> using saml2aws

    awsenv vault <profile>
        Switch current profile to <profile> using aws-vault

    awsenv cli <profile>
        Switch current profile to <profile> using aws-cli

    awsenv get
        Print currently loaded profile (if "<none>" is returned, the aws-cli
        will use its default profile)

    awsenv list
        List all available profiles (sorted by provider)

    awsenv status
        Get the current status of the profile, including the account number
        linked to the profile and the configured region if any

    awsenv disconnect
        Cleanup all profile specific environment variable from the current
        shell session

    awsenv help
        Print this help and exit

```

## Installation

### Using Make

```shell
# Will copy all necessary files to ~/.config/fish/{functions,completions}
make install

# The target path can be overridden via
make install FISH_CONFIG_PATH=/home/me/myfolder
```

### Using Symlinks

```shell
# This method allows you to update awsenv using git pull
git clone https://github.com/0rax/awsenv.fish.git ~/.config/fish/awsenv
mkdir -p ~/.config/fish/functions/ ~/.config/fish/completions/
ln -s ~/.config/fish/awsenv/functions/*.fish ~/.config/fish/functions/
ln -s ~/.config/fish/awsenv/completions/awsenv.fish ~/.config/fish/completions/
```
