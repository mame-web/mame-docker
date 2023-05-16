#!/bin/bash

apk add mame

echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "  Content of [${HOME}/.mame/mame.ini] BEFORE interpolation :"
cat ${HOME}/.mame/mame.ini
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"

sed -i "s~http .*~http 1~g" ${HOME}/.mame/mame.ini
sed -i "s~http_port .*~http_port 8080~g" ${HOME}/.mame/mame.ini
sed -i "s~http_path .*~http_path /usr/share/games/mess/web~g" ${HOME}/.mame/mame.ini

echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "  Content of [${HOME}/.mame/mame.ini] AFTER interpolation :"
cat ${HOME}/.mame/mame.ini
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"


chmod -R 777 ${HOME}/.mame/roms ${HOME}/.mame/sta ${HOME}/.mame/cfg
touch  ${HOME}/.mame/mame.log
chmod 666 ${HOME}/.mame/mame.log

which a2enmod
a2enmod cgi