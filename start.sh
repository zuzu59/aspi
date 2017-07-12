#!/usr/bin/env bash
#Petit script pour juste aspirer un site web pour faire des tests en local
#zf170712.1052
#source: https://stackoverflow.com/questions/22614331/authenticate-on-wordpress-with-wget

server="test-web-wordpress.epfl.ch"
url="/v1-testwp/reme"
site="http://"$server$url
login_address="$site/wp-login.php"
log="admin"
pwd="toto"
cookies="cookies.txt"
agent="Mozilla/5.0"

source ../aspi.credentials.sh

echo $log
echo $pwd


rm -R $server $cookies


# authenticate and save cookies
wget \
    --user-agent="$agent" \
    --save-cookies $cookies \
    --keep-session-cookies \
    --delete-after \
    --post-data="log=$log&pwd=$pwd&testcookie=1" \
    "$login_address"

# access home page with authenticated cookies
wget \
    --user-agent="$agent" \
    --load-cookies $cookies \
    -p -k -E -m -e robots=off –w 2 --no-parent "$site"

rm $cookies



#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_en.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/
#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_fr.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/

