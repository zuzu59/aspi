# aspi
Petit aspirateur de sites WEB WordPress

Des fois il est très intéressant de pouvoir aspirer un site WEB pour archive ou pour raison de sécurité (on a après plus que de l'HTML, donc plus de trous de sécurité liés à WordPress).

Quand on veut aspirer un site WordPress, cela se complique un peu, en particulier quand le site à aspirer n'est pas publique, donc où il faut s'identifier avant l'aspiration.


# Utilisation

## Récupération du dépôt
On récupère le dépôt avec:
```
git clone https://github.com/zuzu59/aspi.git
```

## Installer les crédentials
On décrypte les crédentials utilisés pour le site WEB avec:
```
./acb_uncrypt.sh
```
ATTENTION: ici c'est MON crédential, donc je ne vous donne pas le password ;-)<br>
C'est à vous de mettre vos crédentials dans le fichier:

```
aspi.credentials.sh.template
```
et de faire après:

```
mv aspi.credentials.sh.template ../aspi.credentials.sh
./acb_crypt.sh
```

## Lancer l'aspirateur
Simplement avec la commande:
```
./batch_aspi.sh
```

## Exécuter le tout petit serveur WEB pour vérifier le résultat
Simplement avec la commande:
```
./web_server.sh
```






