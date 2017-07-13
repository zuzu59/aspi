#!/bin/bash
#Décryptage des credentials
#zf170713.2350

sudo apt-get install -y gnupg2

zfile="aspi.credentials.sh"

gpg2 $zfile.gpg
mv $zfile ../.
rm -R ../.gnupg

zfile="aspi.list_serveurs.csv"

gpg2 $zfile.gpg
mv $zfile ../.
rm -R ../.gnupg
