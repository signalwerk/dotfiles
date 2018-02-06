# --------------------------------------------------
# Atom preferences
# --------------------------------------------------

# brew cask install atom

# linkFromDropbox "${preferencesRoot}/com.github.atom.plist" "${dropboxSettingsRoot}/Atom/preferences/com.github.atom.plist"
# linkFromDropbox "${HOME}/.atom/config.cson" "${dropboxSettingsRoot}/Atom/settings/config.cson"
# linkFromDropbox "${HOME}/.atom/init.coffee" "${dropboxSettingsRoot}/Atom/settings/init.coffee"
# linkFromDropbox "${HOME}/.atom/keymap.cson" "${dropboxSettingsRoot}/Atom/settings/keymap.cson"
# linkFromDropbox "${HOME}/.atom/snippets.cson" "${dropboxSettingsRoot}/Atom/settings/snippets.cson"
# linkFromDropbox "${HOME}/.atom/styles.less" "${dropboxSettingsRoot}/Atom/settings/styles.less"

# install plugins
echo "Atom Packages install"
apm install Sublime-Style-Column-Selection
apm install highlight-line
apm install highlight-selected
apm install lint
apm install linter
apm install linter-eslint
apm install minimap
apm install pigments
apm install prettier-atom
