# This is not at all what a Makefile could or should be ;)

build:
	flatpak-builder --repo=repo --force-clean build-dir/ com.raise3d.ideamaker.yaml
repo-add:
	flatpak --user remote-add --no-gpg-verify ideamaker-local repo

install:
	flatpak --user install --reinstall -y ideamaker-local com.raise3d.ideamaker

run:
	mkdir -p ~/cad
	flatpak run com.raise3d.ideamaker

debug:
	echo "Don't be confused, the shell will be inside the flatpak without change of promt!"
	flatpak run --devel --command=bash com.raise3d.ideamaker