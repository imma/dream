#!/usr/bin/env bash -ux

umask 022

passwd -l ubuntu

# install cloud-init last until TODO ssh breakage identified
aptitude install -y cloud-init

aptitude -y purge nano mlocate ubuntu-release-upgrader-core

cat ~ubuntu/.ssh/authorized_keys 2>/dev/null || true

chown -R ubuntu:ubuntu ~ubuntu

sync
