#!/bin/bash
#Décryptage des credentials
#zf170711.1920

zfile="aspi.credentials.sh"

sudo apt-get install -y gnupg2

gpg2 $zfile.gpg
mv $zfile ../.
rm -R ../.gnupg
