# Firejail profile for transmission-qt
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/transmission-qt.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.cache/transmission
noblacklist ${HOME}/.config/transmission

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

mkdir ~/.cache/transmission
mkdir ~/.config/transmission
whitelist  ${DOWNLOADS}
whitelist ~/.cache/transmission
whitelist ~/.config/transmission
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nonewprivs
noroot
nosound
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin transmission-qt
private-dev
private-tmp
nodvd
