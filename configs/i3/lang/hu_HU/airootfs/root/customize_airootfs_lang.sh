#!/bin/bash

set -e -u

# hu_HU.UTF-8 locales
sed -i 's/#\(hu_HU\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Hungary, Budapest timezone
ln -sf /usr/share/zoneinfo/Europe/Budapest /etc/localtime
