ICNS:=/usr/share/icons
APPS:=/usr/share/applications
install:
	@sudo cp icons/* $(ICNS)
	@sudo cp *.desktop $(APPS)
