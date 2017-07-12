#!/bin/bash
#Cryptage des credentials
#zf170711.1920

zfile="aspi.credentials.sh"

sudo apt-get install -y gnupg2

gpg2 -c ../$zfile
mv ../$zfile.gpg .
rm -R ../.gnupg
