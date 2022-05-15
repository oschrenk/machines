# README #

## Setting up new machine

To trigger the installation of "command line developer tools" (required for homebrew) we can "pretend that we have `git` already.

```
mkdir -p ~/Projects/devops
cd ~/Projects/devops
git clone https://github.com/oschrenk/machines.git
```

This will trigger a popup asking for the installation of the "command line developer tools" . Choose "Install". Then, repeat the command above and continue.

```
git clone https://github.com/oschrenk/machines.git
cd machines
./01-system-setup.sh
```

Follow the on-screen instructions. You will sometimes be asked for a password.
Downloading and compiling all the various applications and packages will take roughly 1 hour.

After casks are installed you can already start important apps and configure them

* 1Password. Configure.
* Timing. Login.
* BetterTouchTool. Apply license via 1Password.
* Chrome. Login, synchronize, then log into services.
* Karabiner Elements. Itw will currently trigger a "System Extensions Blocked" popup. Click on "Open Security Preferences" and press "Allow".
* Bear. Leave it in the background to synchronize.
* IntelliJ. Configure plugins.
* Hammerspoon. Preferences, apply accessibility settings.
* alacritty. macOS will complain that it's from an unidentified developer. "System Preferences" > "Security & privacy" > General. Click Allow.

## User Setup

```
./02-user-setup.sh
```

Takes around 30 [minutes](minutes).
Ruby installation will make your fans spin.


## dotfiles

```
./03-dotfiles.sh
```

The dotfiles setup is kind of screwed up.

- `.config`
- `.rbenv`
- `.ssh`

were already created before tilde. So you need to do some manual cleanup

```
rm -rf .config
rm -rf .ssh
mv .rbenv .rbenv2
tilde source dotfiles
mv .rbenv2/* .rbenv
rmdir .rbenv2
```

Open vim, Lot's of errors the first time around

```
nvim +PlugClean +PlugUpgrade +PlugUpdate +PlugInstall
cd ~/.config/coc/extensions/package.json
yarn
```

## Post install

Run `caffeinate` and let spotlight index the disk

