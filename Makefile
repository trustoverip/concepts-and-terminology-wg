
#----------------------------------------------------
# Makefile
#
# setup: Prepares Python and MkDocs Environments
# prepare_macos: Installs Homebrew and pip3
# install_mkdocs: Installs Mkdocs, themes and plugins
# pages: Builds and pushes new Github Pages and generates PDF
# dev: Generates HTML content for local dev/test
#----------------------------------------------------
.PHONY: help prepare_macos install_mkdocs dev pages
.DEFAULT_GOAL: help

help:
	@echo "\nToIP Concepts and Terminology: Build Process Options\n"
	@(grep -h "##" Makefile  | tail -5) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

pages : ## Builds and pushes new Github Pages and generates PDF
	rm -f ./pdf/toip-glossary.pdf
	export ENABLE_PDF_EXPORT=1; mkdocs gh-deploy

dev : ## Generates HTML content for local dev/test
	export ENABLE_PDF_EXPORT=0; mkdocs build

setup : prepare_macos install_mkdocs ## Prepares Python and MkDocs Environments

prepare_macos : ## Installs Homebrew and pip3
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install pango gdk-pixbuf libffi
	brew upgrade python3 cairo pango gdk-pixbuf libffi
	pip3 install --upgrade pip

install_mkdocs : ## Installs Mkdocs, themes and plugins
	pip3 install weasyprint
	pip3 install mkdocs==1.0.4
	pip3 install mkdocs-material
	pip3 install mkpdfs-mkdocs==1.0.1
	pip3 install mkdocs-pdf-export-plugin
