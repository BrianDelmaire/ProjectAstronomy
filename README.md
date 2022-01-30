# Tp final Cours intégration continue
EISI I1A Groupe J - Mathieu COUROUBLE - Brian DELMAIRE - Quentin LEONARD

### Technologies utilisées
* Github
* Jenkins
* Nexus
* Docker

### Minimum attendu
* build du code
* exécution de tests unitaires (si le projet en fourni), et de tests statiques
* génération d'un package
* publication du package sur Nexus


# Projet utilisé : simple-astronomy-lib
https://github.com/SimpleAstronomy/simple-astronomy-lib


# Compte rendu du projet

## Simple Astronomy

La première chose réalisée était de récupérer en local le projet sélectionné par l'équipe.

Nous avons tout d'abord exploré le code pour comprendre le fonctionnement du programme et également analyser le fichier pom.xml à la racine du projet.

Nous avons exécuter le projet et exécutons les tests.

Nous avons procédé à l'installation de Jenkins et Nexus.

Nous avons modifié le pom.xml afin de pouvoir exécuter notre script Jenkins en adéquation.

La création du ficher Jenkins (en parallèle)

La configuration du fichier ~/.m2/settings.xml

L'installation des différents plugins pour permettre le déploiement sur Nexus mais également pour la compilation de notre projet.

La création d'un rôle sur Nexus qui va nous permettre de déployer via Jenkins.

La configuration du serveur Nexus sur Jenkins.


#  Problèmes Rencontrés 
- Nous avons rencontré des difficultés pour compiler et lancer le projet. Il s'agit d'un problème de version de Java, de notre configuration machine et de certaines dépendances qui étaient dépréciées. Nous avons alors utilisé la version 1.8 de Java. Par ailleurs nous avons suivi la documentation du projet pour exécuter le projet. 

Cependant pour utiliser la librairie il fallait donc créer une classe.

![image](https://user-images.githubusercontent.com/57291078/151716178-5861d401-bb40-481c-9f79-450453c7b3f1.png)

La méthode MoonPhaseFinder.findFullMoonFollowing prend pour paramètre un 'ZonedDateTime'. Un type Calendar était passé en argument.
Voici notre code:
![image](https://user-images.githubusercontent.com/57291078/151716265-708bdddb-ccaa-4ce1-a9c2-49b7c834af67.png)


- Des problèmes de dépréciations ont également été présents. il manquait la librairie "org.Hamcrest" que nous avons dû rajouter.
- Dans le jenkinsfile nous avons remplacé les commandes "sh" par "bat" car nous utilisons Windows et non Linux.

- Nous avons rencontré des problèmes de paramétrage entre Jenkins et Nexus. Problème de connexion, problème d'autorisation à déployer la solution en realese.
Nous avons procédé à des modifications dans le fichier pom .xml, Jenkins file et .m2/settings.xml

# Screenshots

![image](https://user-images.githubusercontent.com/57291078/151717043-651400e5-a9c5-4c73-884c-51c4140ae2e4.png)

![image](https://user-images.githubusercontent.com/57291078/151717053-d06b72d5-5668-4c45-9125-4440bd850829.png)

![image](https://user-images.githubusercontent.com/57291078/151717100-058606d2-de19-485d-a7b0-ae0de86d12ff.png)

![image](https://user-images.githubusercontent.com/57291078/151717062-caec4437-62da-4e26-b0bb-583a8a9cb80e.png)

![image](https://user-images.githubusercontent.com/57291078/151717067-4a54f39c-1a9f-4964-8066-83fa35bf75fb.png)

![image](https://user-images.githubusercontent.com/57291078/151717077-5a7476e3-c4cb-426c-9ad6-d8b480b930b1.png)
