ICNS:=/usr/share/icons
APPS:=/usr/share/applications

.PHONY: install uninstall

install:
	@sudo cp icons/* $(ICNS)
	@sudo cp *.desktop $(APPS)

uninstall:
	@ls icons | sudo xargs -n1 -I{} rm $(ICNS)/{}
	@ls | grep .desktop | sudo xargs -n1 -I{} rm $(APPS)/{}

