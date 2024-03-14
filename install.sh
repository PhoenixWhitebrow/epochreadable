#!/bin/bash

# Exit if something fails
set -e


if [[ -z "$XDG_DATA_HOME" ]]; then
    prefix=~/.local/share
else
    prefix="$XDG_DATA_HOME"
fi

mkdir -p $prefix/krunner/dbusplugins/
mkdir -p $prefix/dbus-1/services/

cp plasma-runner-epochreadable.desktop $prefix/krunner/dbusplugins/
sed "s|/home/luke/projects/epochreadable/epochreadable.py|${PWD}/epochreadable.py|" "org.kde.epochreadable.service" > $prefix/dbus-1/services/org.kde.epochreadable.service

kquitapp6 krunner 2>/dev/null

