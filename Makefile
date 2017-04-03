.PHONY: deps daily-schedule reminder help uids

UID := 681
NOW := $(shell date +%Y-%m-%d-%H:%M:%S)

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

deps: ## Install dependencies, need pyenv
	which pyenv || exit
	pyenv install -s 2.7.11
	pyenv rehash
	pip install -r requirements.txt

daily-scheduler: ## Mention today's schedule of specified user to you on slack
	@echo $(NOW)
	python garoon.py -u $(UID)

reminder: ## Mention schedules that are scheduled in 10 minutes later
	@echo $(NOW)
	python remind.py -u $(UID)
