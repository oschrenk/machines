## What is worth reinstalling

```shell
# all top-level brew installs
brew leaves      		  > brew-list.txt
brew cask list 			  > cask-list.txt
npm list -g --depth=0 > npm-g-list.txt
```

## Dealing with multiple users

### Allowing other users to `sudo`

To allow all users in `Local` group to execute certain commands, that require `sudo` you can add these command to `/etc/sudoers/`

Starting with El Capitan they include a `/private/etc/sudoers.d` directory which is included by default, which makes upgrading easier.

For now I put the files in `sudoers.d`.

# Sharing file access

1. Create a new group called `Local` (or any way you want)

The easiest way to do this is through the Accounts pane in System Preferences. Just click on the Plus sign to add a new account and then select Group from the New Account drop-down menu. Add all the users who you want to participate in your newly-created group.

Open Terminal:

```
cd /Users/Shared
mkdir Local
sudo chown -R admin:Local Local
```

Change the default permissions, if you wish: `sudo chmod 770 Local` (this is optional if you're happy with the default permissions).

Create the ACL entry for the new folder:

```
$ sudo chmod +a "group:Local allow delete,readattr,writeattr,readextattr,writeextattr,list,search,add_file,add_subdirectory,delete_child,file_inherit,directory_inherit" Local
```

You now have a folder where all members of the group `Local` can read, write and delete files, as well as read, write to and create new sub folders. The ACL rule takes precedence over standard UNIX file permissions and is automatically inherited. It's this automatic inheritance that is really important. Now you are ready to copy your iTunes, Aperture, iPhoto libraries, plus anything else you want to share, into the shared folder.

**IMPORTANT**: You must copy (hold down Option in Finder prior to dragging), and not merely move, items. Moving items doesn't inherit the correct ACL rules. Moving doesn't change POSIX file attributes, permissions, ...

## Sharing homebrew

```shell
sudo chmod -R 770 /usr/local/
sudo chmod -R +a "group:Local allow delete,readattr,writeattr,readextattr,writeextattr,list,search,add_file,add_subdirectory,delete_child,file_inherit,directory_inherit" /usr/local/

```
