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
A simple and free astronomy library for calculating moon phases.

A simple (and free) astronomy library for calculating moon phase, solar eclipses, etc. This is intended to be used as a library within other projects, thus the list of dependencies will remain as small as possible.

Initial code based on the book [_Practical Astronomy with your Calculator_](http://amzn.to/1FXRxoi) by Peter Duffett-Smith. (If there are errors in the output it is due to my implementation and not because of that text.) The next book I plan to purchase is [_Practical Astronomy with Your Calculator or Spreadsheet_](http://amzn.to/1D7C8up) by the same author.

NOTE: additional collaborators welcome

### Current Functionality
Find dates for Moon Phases
 * full moon
 * new moon
 * first quarter
 * last quarter 

### Getting Started / Example
For a brief page on how to use this library, read the [Getting Started page](https://github.com/dustmachine/simple-astronomy-lib/blob/wiki/GettingStartedExample.md)

### Project Goals
  * Minimize number of dependencies (useful for mobile device usage)
  * Automated unit test coverage of more than 75% of code
  * Accuracy to within 5 minutes (currently +/-15 minutes)

### New Features Under Consideration
  * Sunrise / Sunset
  * Rising and setting of other celestial objects
  * Solar Eclipse - find date of next solar eclipse
  * Lunar Eclipse - find date of next lunar eclipse
  * Find location of sun or moon (right ascension, declination)

### Schedule
  * ~~move the "Getting Started" example to GitHub~~
  * ~~Initial code commit before April 1, 2011~~ DONE!
  * ~~Decent documentation on usage before June 30, 2011~~
  * Jenkins CI builds (Q2 2015)

##  Problèmes Rencontrés 
- Nous avons rencontrer des difficultés pour compilé et lancer le projet. En utilisant java 1.8 le projet se lance mais ne compile pas contrairement a java 17 où le projet ne se lance pas mais réussi a compiler. Il s'agit probablement d'un problème de configuration. Nous avons alors utilisé les deux version de java pour compilé et lancer le projet. 

- Des problèmes de dépréciations ont également été présent. il manquais la librairie "org.hamcrest" que nous avons du rajouter.

- Dans le jenkinsfile nous avons remplacé les commande "sh" par "bat" car nous utilisons windows et non linux. 
