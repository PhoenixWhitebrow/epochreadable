### epochreadable

This plugin provides a simple way of converting an epoch millisecond or second time into UTC and localtime
It allows for copying the result into the clipboard


### Local installation

The install script copies the Krunner config file and a dbus activation service file
to their appropiate locations.  
This way the python script gets executed when KRunner
requests matches and it does not need to be autostarted.

If you want to run the plugin manually to debug it you can do the following:  
```bash
mkdir -p ~/.local/share/kservices5/krunner/dbusplugins/
cp plasma-runner-epochreadable.desktop ~/.local/share/kservices5/krunner/dbusplugins/
kquitapp5 krunner
python3 epochreadable.py
```

More information can be found here:  
https://cgit.kde.org/krunner.git/plain/src/data/org.kde.krunner1.xml  
https://techbase.kde.org/Development/Tutorials/D-Bus/Introduction


If you feel confident about your runner you can upload it to the KDE Store
https://store.kde.org/browse/cat/628/order/latest/.
