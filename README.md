# MailHeaderLock
macOS Mail plugin to lock headers, for OS X 10.9 and up, as described [here](http://apple.stackexchange.com/q/274213).

# Installation
Download the [latest release](https://github.com/saagarjha/MailHeaderLock/releases/latest) and move it to `~/Library/Mail/Bundles`.

If you've never used a Mail plugin before, you may have to run
```sh
defaults write com.apple.mail EnableBundles -bool true
```
before Mail loads this plugin.
