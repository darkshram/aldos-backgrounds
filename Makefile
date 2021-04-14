PKGNAME = aldos-backgrounds
MAINTAINER = Joel Barrios <darkshram@gmail.com>
PREFIX ?= /usr

1920x1080 = \
	alcancelibre-background-1980x1080 \
	aldos-02-1920x1080 aldos-03-1920x1080 \
	aldos-04-1920x1080 \
	aldos-abstracto00-1920x1080 \
	aldos-abstracto01-1920x1080 \
	aldos-abstracto02-1920x1080 \
	aldos-abstracto03-1920x1080 \
	aldos-abstracto04-1920x1080 \
	aldos-bliss-clouds-1920x1080 \
	aldos_click_1920x1080 \
	aldos-clouds-1920x1080 \
	aldos-green-sunset \
	aldos-sunshine1-1920x1080 \
	aldos-sunshine2-1920x1080 \
	aldos-sunshine3-1920x1080 \
	aldos-sunshine4-1920x1080 \
	algodon_de_azucar-1920x1080 \
	bliss-numix-1920x1080 \
	space-1920x1080 \
	space-small-logo-1920x1080 \
	winter-aldos-1920x1080

1920x1200= \
	aldos-02-1920x1200 \
	aldos-03-1920x1200 \
	aldos-04-1920x1200 \
	aldos-abstracto00-1920x1200 \
	aldos-abstracto01-1920x1200 \
	aldos-abstracto02-1920x1200 \
	aldos-abstracto03-1920x1200 \
	aldos-abstracto04-1920x1200 \
	aldos-bliss-clouds-1920x1200 \
	aldos-canyon-sumidero-00-1920x1200 \
	aldos-canyon-sumidero-01-1920x1200 \
	aldos_click_1920x1200 \
	aldos-clouds-1920x1200 \
	aldos-sumidero00-1920x1200 \
	aldos-sumidero01-1920x1200 \
	aldos-sumidero02-1920x1200 \
	aldos-sunshine1-1920x1200 \
	aldos-sunshine2-1920x1200 \
	aldos-sunshine3-1920x1200 \
	aldos-sunshine4-1920x1200 \
	algodon_de_azucar-1920x1200 \
	bliss-numix-1920x1200 \
	space-1920x1200 \
	winter-aldos-1920x1200

all:

install:
	mkdir -p $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080 ; \
	for wallpaper in $(1920x1080) ; do \
		install -m 0644 1920x1080/$${wallpaper}.svg \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080/$${wallpaper}.svg ; \
	done; \
	mkdir -p $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200 ; \
	for wallpaper in $(1920x1200) ; do \
		install -m 0644 1920x1200/$${wallpaper}.svg \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200/$${wallpaper}.svg ; \
	done;

install-png:
	mkdir -p $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080-png ; \
	for wallpaper in $(1920x1080) ; do \
		rsvg-convert -w 1920 -h 1080 -f png \
			1920x1080/$${wallpaper}.svg -o \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080-png/$${wallpaper}.png ; \
		optipng \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080-png/$${wallpaper}.png; \
	done; \
	mkdir -p $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200-png ; \
	for wallpaper in $(1920x1200) ; do \
		rsvg-convert -w 1920 -h 1200 -f png \
			1920x1200/$${wallpaper}.svg -o \
			-o \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200-png/$${wallpaper}.png ; \
		optipng \
			$(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080-png/$${wallpaper}.png; \
	done;

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080;
	rm -rf $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200;

uninstall-png:
	rm -rf $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1080-png;
	rm -rf $(DESTDIR)$(PREFIX)/share/backgrounds/aldos/1920x1200-png;

.PHONY: all install install-png uninstall uninstall-png
