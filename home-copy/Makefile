

fish: $(HOME)/.config/fish

$(HOME)/.config/fish:
	mkdir -p $@

#TODO:
#  * target to copy files
#  * fish-kubectl-completions depends on copy files

$(HOME)/.config/fish/fish-kubectl-completions:
	git -C $@/../ clone fish-kubectl-completions
