# README #

To sync

```
make
```

## Bootstrap new machine

To trigger the installation of "command line developer tools" (required for homebrew) we can "pretend" that we have `git` already.

```
mkdir -p ~/Projects/ops
cd ~/Projects/ops
git clone https://github.com/oschrenk/machines.git
```

This will trigger a popup asking for the installation of the "command line developer tools" . Choose "Install". Then, repeat the command above and continue.

```
git clone https://github.com/oschrenk/machines.git
```

Then start the setup procedure

```
cd machines
01-packages.sh
```

Follow the on-screen instructions. You will sometimes be asked for a password.
Downloading and compiling all the various applications and packages will take roughly 1 hour.

After casks are installed you can already start important apps and configure them

- 1Password. Login, let it sync.
- Chrome. Login, synchronize, log into services.
    - Grammarly
    - Instapaper
* Karabiner Elements. It will trigger a "System Extensions Blocked" popup. Click on "Open Security Preferences" and press "Allow".
* Bear. Open. Leave it in the background to synchronize.
* Noteplan. Open settings, switch to `cloudkit`. Leave open to sync
* IntelliJ. Configure plugins.
  - Scala,
  - Key Promoter
  - Ideavim.
* Hammerspoon. Preferences, apply accessibility settings.
* alacritty. macOS will complain that it's from an unidentified developer. "System Preferences" > "Security & privacy" > General. Click Allow.
* App Store, Press continue.
* Calendar, configure them,
* Photos. Sync, stay with power cable
* Open Mail, configfure

