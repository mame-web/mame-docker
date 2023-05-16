#!/bin/bash


echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "  Content of [${HOME}/.mame/mame.ini] BEFORE interpolation :"
cat ${HOME}/.mame/mame.ini
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"

# sed -i "s~http .*~http 1~g" ${HOME}/.mame/mame.ini
mkdir -p ${HOME}/.mame/
touch ${HOME}/.mame/mame.ini
# sed -i "s~http_port .*~http_port 8080~g" ${HOME}/.mame/mame.ini
# sed -i "s~http_path .*~http_path /usr/share/games/mess/web~g" ${HOME}/.mame/mame.ini
echo 'http 1' | tee -a ${HOME}/.mame/mame.ini
echo 'http_port 8080' | tee -a ${HOME}/.mame/mame.ini
echo 'http_path /usr/share/games/mess/web' | tee -a ${HOME}/.mame/mame.ini


echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "  Content of [${HOME}/.mame/mame.ini] AFTER interpolation :"
cat ${HOME}/.mame/mame.ini
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"
echo "# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- #"

mkdir -p ${HOME}/.mame/roms 
mkdir -p ${HOME}/.mame/sta 
mkdir -p ${HOME}/.mame/cfg
chmod -R 777 ${HOME}/.mame/roms ${HOME}/.mame/sta ${HOME}/.mame/cfg
touch  ${HOME}/.mame/mame.log
chmod 666 ${HOME}/.mame/mame.log

# which a2enmod
# a2enmod cgi