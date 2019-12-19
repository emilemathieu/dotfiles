if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask

# Install packages

apps=(
  # atom
  sublime-text
  pycharm
  daisydisk
  # alfred
  # dash2
  # flux
  glimmerblocker
  google-chrome
  iterm2
  mactex
  skim
  skype
  slack
  spectacle
  the-unarchiver
  transmission
  # virtualbox
  vlc
  whatsapp
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
