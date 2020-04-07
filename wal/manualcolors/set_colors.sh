#!/bin/bash
cp unedited/* ../templates
sed -i 's/{color0}/#0A1729/g' ../templates/color*
sed -i 's/{color7}/#fafcfd/g' ../templates/color*
sed -i 's/{color15}/#fafcfd/g' ../templates/color*
sed -i 's/{background}/#0A1729/g' ../templates/color*
sed -i 's/{foreground}/#fafcfd/g' ../templates/color*
sed -i 's/{cursor}/#fafcfd/g' ../templates/color*
wal -li ~/.config/desktop/background.png
wal -R
