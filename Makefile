.PHONY: all clean pkg

all: pkg clean

clean:
	rm -rf pkg/build

pkg:
	mkdir -p pkg/build && cp pkg/PKGBUILD pkg/build/ && cd pkg/build && makepkg -Acs && cd ../../