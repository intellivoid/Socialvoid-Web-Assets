clean:
	rm -rf build

build:
	mkdir build
	ppm --no-intro --compile="assets" --directory="build"

update:
	ppm --generate-package="assets"

install:
	ppm --no-intro --no-prompt --fix-conflict --install="build/net.intellivoid.socialvoid_web_assets.ppm"

install_fast:
	ppm --no-intro --no-prompt --fix-conflict --skip-dependencies --install="build/net.intellivoid.socialvoid_web_assets"
