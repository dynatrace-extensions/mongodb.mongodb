.POSIX:
DOCKER_PORT = 9090
DATASOURCE = prometheus
ONESHOT = 

# ===== please do not remove this =====
.DEFAULT_GOAL = init
# sources are at: https://github.com/dynatrace-extensions/toolz/blob/main/common.mk
include $(shell which __dt_ext_common_make)
include $(shell test -n "$$DT_EXTENSION_TOOLING_LOC" && echo "$$DT_EXTENSION_TOOLING_LOC/common.mk" || echo "")
# ===== please do not remove this =====

# Porcelain
# ###############
.PHONY: test
test: ## run all tests
	@echo "Not implemented"; false

# Bootstrap
# ###############
.PHONY: init clean really_clean 
init: ## one time setup
	@# this is used to squash the "direnv is blocked" prompt which misguides the first time users, it's silenced to not show the error message if the clobber fails
	@git update-index --assume-unchanged _.envrc
	@mv --no-clobber _.envrc .envrc 2>/dev/null || true
	@
	#====================================================================
	#
	# The extension development environment can download large amounts of
	# data. Depending on your internet bandwidth, this may trigger a red
	# time-out warning.
	#
	# Please let the the download finish.
	#
	#====================================================================
	direnv allow .

# Utility hooks
# ###############
clean: gitclean ## remove artifacts
	rm -f extension.zip bundle.zip

really_clean: gitclean-with-libs ## remove EVERYTHING