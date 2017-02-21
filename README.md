# Challenge MovieDB

## Objectif
S'entraîner à concevoir des schémas.


## Exercices
### Exo 1
Une société produisant des téléphones désire créer un système de suivi des défauts de ses produits. On veut créer sa BD.
  – Un identifiant unique est attribué à chaque téléphone qui est également caractérisé par un nom et une description.
  – Un utilisateur est identifié par un numéro unique, et est caractérisé par son nom, son prénom et une adresse.
  – Un rapport d’erreur est identifié par un numéro unique, et est caractérisé par la description de l’erreur, le téléphone, l’utilisateur ayant signalé l’erreur, la date de création du rapport et, éventuellement, la date de résolution du problème.  Chaque rapport d’erreur a un statut qui est soit “en cours”, soit “corrigé”.

### Exo 2
Une bibliothèque dispose d’une base de données reprenant des ouvrages, respectant les contraintes suivantes :
– Chaque ouvrage est doté d’un numéro l’identifiant au sein de la bibliothèque et est caractérisé par son numéro ISBN, son titre, son éditeur, sa date de parution, ses auteurs (décrits par leurs numéro, nom et prénom) et ses références bibliographiques (les ouvrages qu’il cite).
– Un exemplaire est caractérisé par un numéro qui le distingue des autres exemplaires du même ouvrage, sa date d’acquisition, son état de vétusté.
– La bibliothèque dispose en outre d’un catalogue reprenant des ouvrages (identifiés par un numéro unique et décrits par leur numéro ISBN, leur titre, leur éditeur, leur date de parution et leurs auteurs).
– Un inscrit est caractérisé par un numéro d’inscription, ses nom, prénom et adresse.
– Quand une personne emprunte un ouvrage, on retient la date de début d’un emprunt en cours, ainsi que sa date de retour prévue. Quand l’exemplaire est
restitué, on conserve l’information relative à l’emprunt en y ajoutant la date de restitution.
– On supposera qu’un même exemplaire ne peut être emprunté deux fois le même
jour

### Exo 3
- Construire la base de données du projet de la semaine, "Movie DB!(titre provisoire)".
On veut recréer un équivalent (light) de Allociné, qui présente des films, classés par genres, et associés (encore!) à des mots clés (keywords).
Créez le schéma de bases de données correspondant à ces maquettes:
![allmovies.png](allmovies.png)
![onemovie.png](onemovie.png)
