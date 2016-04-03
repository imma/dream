#!/usr/bin/env bash -ux

umask 022

# upgrade everything except libpcre3
aptitude hold libpcre3
aptitude dist-upgrade -y
aptitude upgrade -y

sync

reboot
sleep 60
