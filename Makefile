.PHONY: all clean pkg

all: pkg clean

clean:
	rm -rf pkg/build

pkg:
	cd pkg && makepkg -Acs && cd ../