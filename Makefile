FISH_CONFIG_PATH ?= $(HOME)/.config/fish

all:

install:
	install -d $(FISH_CONFIG_PATH)/functions
	install functions/awsenv.fish              $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_disconnect.fish $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_saml.fish       $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_status.fish     $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_vault.fish      $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_cli.fish        $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_list.fish       $(FISH_CONFIG_PATH)/functions
	install functions/__awsenv_usage.fish       $(FISH_CONFIG_PATH)/functions
	install functions/__flseg_awsenv.fish       $(FISH_CONFIG_PATH)/functions
	install -d $(FISH_CONFIG_PATH)/completions
	install completions/awsenv.fish $(FISH_CONFIG_PATH)/completions

uninstall:
	rm -f $(FISH_CONFIG_PATH)/functions/awsenv.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_disconnect.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_saml.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_status.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_vault.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_cli.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_list.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__awsenv_usage.fish
	rm -f $(FISH_CONFIG_PATH)/functions/__flseg_awsenv.fish
	rm -f $(FISH_CONFIG_PATH)/completions/awsenv.fish

.PHONY: all install uninstall
