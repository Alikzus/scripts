scripts
=======

This repository contains small stand-alone scripts to automate the boring stuff,
perform various tasks et cetera.

Nota bene, that the scripts are designed for OpenBSD (http://www.openbsd.org),
-stable and -current, if nothing else is stated. Please feel free to send me
patches if you want to extend the support to other operating systems.

### akvavit

Akvavit is yet another wrapper for rsnapshot. It is a wordplay on the Swedish
word snaps.

### artisan

This artisan creates cover art copies with a smaller file size. I have a quite
large collection of compact discs and are keeping digital copies of them for
private use, as both FLAC and MP3. I scan the artwork with a high resolution
and therefore need copies that are smaller for use on my smartphone and with
mpd(1).

### check-host

Check-host is used to monitor if a host is alive or not (with ping). I use it
both on- and offsite.

### minion

Create a static WWW site from Markdown files. I use it for my personal home
page: http://www.alikzus.se.

### mount_img, umount_img

Mount and unmount image files on an OpenBSD system.

### mount_sshfs, umount/sshfs

Mount and unmount sshfs volumes via sftp on MacOS.

### mpd-www

Create an artwork directory in a httpd(8) chroot for use with mpd (Music Player
Daemon).

### tmux.default

[BROKEN] My default tmux setup.

### tvilling

Tvilling means twin in Swedish and this is yet another wrapper for Duplicity.

### unbound-blacklist

Blacklist (host block) domains with unbound(8). Uses, as default, the same
sources as AdAway for Android and hence works as a adblocker on the gateway.

attic
-----

Scripts that have been abandoned for various reasons.

### dhcp2dns

### unbound-leases
