# Présentation du projet

[![](https://framagit.org/assets/favicon-075eba76312e8421991a0c1f89a89ee81678bcde72319dd3e8047e2a47cd3a42.ico)](https://framagit.org)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Faquinum%2Fframadate.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Faquinum%2Fframadate?ref=badge_shield)

![English:](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Flag_of_the_United_Kingdom.svg/20px-Flag_of_the_United_Kingdom.svg.png) **Framasoft uses GitLab** for the development of its free softwares. Our Github repositories are only mirrors.
If you want to work with us, **fork us on [framagit.org](https://framagit.org)**. (no registration needed, you can sign in with your Github account)

![Français :](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/20px-Flag_of_France.svg.png) **Framasoft utilise GitLab** pour le développement de ses logiciels libres. Nos dépôts Github ne sont que des miroirs.
Si vous souhaitez travailler avec nous, **forkez-nous sur [framagit.org](https://framagit.org)**. (l'inscription n'est pas nécessaire, vous pouvez vous connecter avec votre compte Github)
* * *

# Compatibilités des navigateurs
_Dernière mise à jour le 21 avril 2014_

| Navigateur | Version testée          |
|------------|-------------------------|
| Firefox    | Ubuntu 13.10/FF28       |
| Chrome     | Ubuntu 13.10/Chromium33 |
| Opera      | (non testé)             |
| Konqueror  | (non testé)             |
| Links      | (non testé, inutile)    |
| Safari     | (non testé)             |
| IE         | Win7/IE9                |

# Installation

Un fichier est dédié à l'installation de framadate : [INSTALL.md](INSTALL.md).

# Utilisation avec docker et docker-compose

## Pré-requis

- Il vous faut un serveur SMTP disponible, soit en ligne (service type 
[mailgun](https://mailgun.org)), soit via une [image docker séparé](https://hub.docker.com/r/namshi/smtp/).

## En développement

Le docker-compose de développement inclus un montage du projet afin que le code
modifié soit directement accessible depuis le conteneur. Le script d'entrée se
chargera donc au premier démarrage d'installer composer et les vendors (le dossier 
vendor/ ne doit pas exister). Un service SMTP est également fourni via l'image
docker [namshi/smtp](https://hub.docker.com/r/namshi/smtp/).

1. Modifier les variables d'environnement du fichier `docker-compose.yml`.
Ne pas oublier de changer la variable `MAILNAME` du service `smtp` pour un nom de 
domaine complet afin que les mails puissent être reçus.
1. Lancer les conteneurs grâce à la commande `$ docker-compose up`. Au premier
lancement, docker va télécharger les images mariadb, php et adminer puis construire
le conteneur framadate. Cela prend quelques minutes. Les prochaines fois, cela sera
instantané.
1. Un fois le conteneur lancé, configurer l'application et installer la base de donnée 
en utilisant le script  d'installation `http://localhost:8080/admin/install.php`. Le
host mysql est `db`, la base de donnée est `framadate` et le mot de passe mysql root 
est `root`.
1. Adminer (pour administrer la bdd MySQL) est disponible sur `http://localhost:8081` 
(avec les mêmes paramètres qu'au point précédent)

## En production

TODO :)

# Comment contribuer

## De votre côté

1. Créer un compte sur [https://framagit.org](https://framagit.org)
1. Créer un fork du projet principal : [Créer le fork](https://framagit.org/framasoft/framadate/forks/new)
1. Créer une branche nommée feature/[Description]
    * Où [Description] est une description en anglais très courte de ce qui va être fait
1. Faire des commits dans votre branche
1. Pusher la branche sur votre fork
1. Demander une merge request vers **develop**

## La suite se passe de notre côté

1. Quelqu'un relira votre travail
    * Essayez de rendre ce travail plus facile en organisant vos commits
1. S'il y a des remarques sur le travail, le relecteur fera des commentaires sur la merge request
1. Si la merge request lui semble correcte il peut merger votre travail avec la branche **develop**

## Corrections suite à une relecture

La relecture de la merge request peut vous amener à faire des corrections.
Vous pouvez faire ces corrections dans votre branche, ce qui aura pour effet de les ajouter à la merge request.

## Comprendre le code

Un fichier est dédié à l'appréhension du code de framadate : [Document technique](doc/TECHNICAL.md).

# Traductions

Les traductions se trouvent dans le dossier `locale`. Chaque langue est dans un fichier JSON différent organisé par section.

# Synthèses des librairies utilisées

[Smarty](http://www.smarty.net/),
gestion des templates pour PHP

[o80-i18n](https://github.com/olivierperez/o80-i18n),
système d'internationalisation

[PHP 5.4.4](http://php.net)

PostgreSQL ou MySQL

---

Framadate est un fork du projet [STUdS](https://sourcesup.cru.fr/projects/studs/), il motorise framadate.org pour framasoft.org

Les auteurs principaux de Framadate sont :
* Simon LEBLANC
* Pierre-Yves GOSSET

Les auteurs principaux du projet STUdS sont :
* Guilhem BORGHESI
* Raphaël DROZ

---

Université de Strasbourg - Direction Informatique
Auteur : Guilhem BORGHESI
Création : Février 2008

borghesi@unistra.fr

Ce logiciel est régi par la licence CeCILL-B soumise au droit français et
respectant les principes de diffusion des logiciels libres. Vous pouvez
utiliser, modifier et/ou redistribuer ce programme sous les conditions
de la licence CeCILL-B telle que diffusée par le CEA, le CNRS et l'INRIA
sur le site "http://www.cecill.info".

Le fait que vous puissiez accéder à cet en-tête signifie que vous avez
pris connaissance de la licence CeCILL-B, et que vous en avez accepté les
termes. Vous pouvez trouver une copie de la licence dans le fichier LICENCE.

---

Université de Strasbourg - Direction Informatique
Author : Guilhem BORGHESI
Creation : Feb 2008

borghesi@unistra.fr

This software is governed by the CeCILL-B license under French law and
abiding by the rules of distribution of free software. You can  use,
modify and/ or redistribute the software under the terms of the CeCILL-B
license as circulated by CEA, CNRS and INRIA at the following URL
"http://www.cecill.info".

The fact that you are presently reading this means that you have had
knowledge of the CeCILL-B license and that you accept its terms. You can
find a copy of this license in the file LICENSE.

---

    Janvier 2008
    Guilhem BORGHESI
    Université de Strasbourg

    Mai 2010
    Raphaël DROZ, raphael.droz@gmail.com


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Faquinum%2Fframadate.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Faquinum%2Fframadate?ref=badge_large)
