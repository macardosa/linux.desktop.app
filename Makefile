ICNS:=/usr/share/icons
APPS:=/usr/share/applications

all: install
.PHONY: install all

install:
	@sudo cp icons/* $(ICNS)
	@sudo cp *.desktop $(APPS)
