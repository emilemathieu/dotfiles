#!/bin/sh
ST3_LOCAL="$HOME/Library/Application Support/Sublime Text 3"
DOTFILES="$HOME/dotfiles"

# st3 is not installed
test -n "$ST3_LOCAL" || exit 1

# create needed directories
mkdir -p "$ST3_LOCAL/Installed Packages"

# Install Package Control
PKG_CTRL_FILE="$ST3_LOCAL/Installed Packages/Package Control.sublime-package"
[ ! -f "$PKG_CTRL_FILE" ] && curl -o "$PKG_CTRL_FILE" \
	"https://sublime.wbond.net/Package Control.sublime-package"
echo "4"

# Link all sublime-settings files
ln -sf "$DOTFILES/sublime/User" "$ST3_LOCAL/Packages"
echo "5"