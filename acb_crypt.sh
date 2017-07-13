#!/bin/bash
#Cryptage des credentials
#zf170713.2350

sudo apt-get install -y gnupg2

zfile="aspi.credentials.sh"

gpg2 -c ../$zfile
mv ../$zfile.gpg .
rm -R ../.gnupg

zfile="aspi.list_serveurs.csv"

gpg2 -c ../$zfile
mv ../$zfile.gpg .
rm -R ../.gnupg
