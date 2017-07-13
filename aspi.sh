#!/usr/bin/env bash
#Petit script pour juste aspirer un site web pour faire des tests en local
#ATTENTION: ça été fait pour une structure perso !
#faudra modifier le script pour d'autres structures
#zf170713.1115
#source: https://stackoverflow.com/questions/22614331/authenticate-on-wordpress-with-wget


#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./aspi.sh site_name user passwd \n\n"
    exit
fi

echo ---------- start aspi.sh

server="test-web-wordpress.epfl.ch"
site_name=$1
url="/v1-testwp/"$1
site="http://"$server$url
login_address="$site/wp-login.php"
log=$2
pwd=$3
cookies="cookies.txt"
agent="Mozilla/5.0"

#source ../aspi.credentials.sh

echo $server$url
echo $server$url".html"

echo $site
echo $log
echo $pwd

exit

rm -R $cookies $server$url $server$url".html"


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

echo -e "
il y a comme nombre de pages HTML:
"

find $server |grep '\.html' |wc


#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_en.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/
#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_fr.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/

