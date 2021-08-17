ICNS:=/usr/share/icons
APPS:=/usr/share/applications
OS := $(shell uname -s)

.PHONY: install uninstall

install:
ifeq ($(OS),Linux)
	@sudo cp icons/* $(ICNS)
	@sudo cp *.desktop $(APPS)
else
	@echo "This is intended to be runned in a Linux machine"
endif

uninstall:
ifeq ($(OS),Linux)
	@ls icons | sudo xargs -n1 -I{} rm $(ICNS)/{}
	@ls | grep .desktop | sudo xargs -n1 -I{} rm $(APPS)/{}
else
	@echo "This is intended to be runned in a Linux machine"
endif

