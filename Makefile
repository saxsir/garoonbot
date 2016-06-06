.PHONY: deps daily-schedule reminder

UID := 681
NOW := $(shell date +%Y-%m-%d-%H:%M:%S)

deps:
	which pyenv || exit
	pyenv install -s 2.7.11
	pyenv rehash
	pip install -r requirements.txt

daily-scheduler:
	@echo $(NOW)
	python garoon.py -u $(UID)

reminder:
	@echo $(NOW)
	python remind.py -u $(UID)
