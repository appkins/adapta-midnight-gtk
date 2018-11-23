.PHONY: all clean pkg

all: pkg clean

clean:
	rm -rf pkg/build

pkg:
	mkdir -p pkg/build && cp pkg/PKGBUILD pkg/build/ && cd pkg/build && makepkg -Acs && cd ../../

install:
	sudo pacman -U pkg/build/adapta-midnight-gtk-theme-git-5d3048c-1-any.pkg.tar