# BorderMC - Datapack Minecraft

**BorderMC** est un datapack Minecraft (Java Edition) qui permet aux joueurs d'agrandir progressivement la bordure du monde en échange de leurs niveaux d'expérience.

---

## Fonctionnalités

- **Agrandissement de la zone :** Chaque utilisation de la boussole agrandit la zone de **2 blocs**.
- **Coût évolutif :** Le prix en niveaux d'expérience augmente au fur et à mesure des achats.
- **Compatible Multijoueur :** Possibilité de jouer en multijoueur (Potentiellement buggé).

---

## Version Compatible

- **Minecraft Java Edition :** `23.6`

---

## Installation

### Nouveau monde :
1. Téléchargez la dernière version du datapack et dezippez le.
2. Dans le menu création du nouveau monde allez dans `Plus`, `Pack de données` ou `Datapacks`, <br> faites `Ouvrir le dossier des packs` et placez le datapack à l'intérieur.
3. Activez les commandes.
4. Lancez votre monde.
5. Executez la commande `/function bordermc:load`.

### Monde déjà existant :
Vous devez avoir l'accès aux commandes pour utiliser le datapack.
1. Téléchargez la dernière version du datapack et dezippez le.
2. Placez le datapack dans le dossier `datapacks` de votre monde :
   - `.minecraft/saves/<nom_du_monde>/datapacks/`
3. Lancez votre monde.
4. Executez la commande `/function bordermc:load`. <br>
Attention cette commande vous fait perdre tout votre inventaire et niveaux.

---

## Commandes

1. `/function bordermc:help` : Affiche la liste des commandes du datapack.
2. `/function bordermc:compass` : Donne l'outil boussole pour augmenter la taille de la zone.
3. `/function bordermc:load` : Démarre le jeu en plaçant la zone autour de celui qui execute la commande.
4. `/function bordermc:reset` : Désactive le jeux et réinitialise tous les paramètres.
