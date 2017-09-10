#!/bin/sh
ATOM_LOCAL="$HOME/.atom"
DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/atom/config.cson" $ATOM_LOCAL
ln -sf "$DOTFILES/atom/init.coffee" $ATOM_LOCAL
ln -sf "$DOTFILES/atom/keymap.cson" $ATOM_LOCAL
ln -sf "$DOTFILES/atom/snippets.cson" $ATOM_LOCAL
ln -sf "$DOTFILES/atom/styles.less" $ATOM_LOCAL
ln -sf "$DOTFILES/atom/packages.cson" $ATOM_LOCAL