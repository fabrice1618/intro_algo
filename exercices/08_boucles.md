# Exercices 08 - Structures itératives

> Notions : chapitres [05](../05_variables.md) à [08](../08_structures_iteratives.md) : variables, entrées-sorties, calculs, conditions, `POUR`, `TANT_QUE`, `FAIRE ... TANT_QUE`.

---

## Exercice 1 - Factorielle ★

Lire un entier `n` et afficher `n! = 1 × 2 × 3 × ... × n` (par convention, `0! = 1! = 1`).

Exemple : `5! = 120`.

Indice : un accumulateur de produit commence à 1.

Solution : [solutions/08_factorielle.algo](solutions/08_factorielle.algo)

---

## Exercice 2 - Division entière par soustractions ★

Cet exercice a pour but de vous faire pratiquer la division entière et le calcul du modulo uniquement avec des soustractions (sans `%` ni `int()`).

1. Demander à l'utilisateur de saisir deux nombres entiers `dividende` et `diviseur`.
2. Calculer la division entière de ces deux nombres à l'aide de soustractions successives.
3. Calculer le reste (modulo) en utilisant également des soustractions.
4. Afficher le quotient (résultat de la division entière) et le reste (modulo).

Exemple de sortie :

- Dividende : 25
- Diviseur : 4
- Quotient : 6
- Reste (modulo) : 1

Solution : [solutions/08_division_entiere.algo](solutions/08_division_entiere.algo)

---

## Exercice 3 - Racine carrée entière par soustractions ★★

Calculer la racine carrée d'un nombre sans utiliser de fonction mathématique existante, uniquement à l'aide de soustractions successives.

1. Demander à l'utilisateur de saisir un nombre positif `n`.
2. Calculer la racine carrée de ce nombre en utilisant une méthode basée sur des soustractions successives.
3. Afficher la racine carrée entière (approchée par défaut à l'entier inférieur).

Exemples : 16 donne 4, 20 donne 4.

Indice : soustraire du nombre les impairs successifs 1, 3, 5, 7... tant que c'est possible sans devenir négatif. Le nombre de soustractions effectuées est la racine carrée entière, car `1 + 3 + 5 + ... + (2k - 1) = k²`.

Solution : [solutions/08_racine_entiere.algo](solutions/08_racine_entiere.algo)

---

## Exercice 4 - Moyenne de la classe ★★

Lire les prénoms et les notes des élèves de la classe, tant que le prénom saisi est différent de: « FIN ». Vérifier que la note saisie soit comprise entre 0 et 20.

Afficher ensuite: 
- la moyenne de la classe
- la meilleure note de la classe et le prénom correspondant.
- la moins bonne note de la classe et le prénom correspondant.

Indice : c'est le problème décomposé au chapitre 04. Le prénom est lu une première fois avant la boucle, puis à la fin de chaque tour.

Solution : [solutions/08_moyenne_classe.algo](solutions/08_moyenne_classe.algo)

---

## Exercice 5 - Jeu de dés, version 1 ★★

Lire le nombre de joueurs et le nombre de tirages pour paramétrer le jeu. 

A chaque tirage, chaque joueur jette 2 dés. Vous utiliserez la fonction randint(p, n) qui renvoie un entier pseudo-aléatoire compris entre p et n. Le joueur disposant du plus grand total gagne.

Afficher le joueur gagnant pour chaque tirage.

Indice : une boucle sur les tirages, qui contient une boucle sur les joueurs.

Solution : [solutions/08_des_v1.algo](solutions/08_des_v1.algo)

---

## Exercice 6 - Triangles de Pythagore ★★

Un triangle rectangle est appelé **triangle de Pythagore** lorsque les longueurs de ses trois côtés `a`, `b` et `c` (avec `c` l’hypoténuse) sont des **nombres entiers positifs** vérifiant la relation `a² + b² = c²`.

Exemple : `(3, 4, 5)` est une solution, car `9 + 16 = 25`.

Écrire un algorithme qui recherche et affiche tous les triplets `(a, b, c)` tels que `1 ≤ a < b < c < 100`, sans répétition.

*Indication :* On pourra utiliser des boucles imbriquées ou exploiter le calcul de la racine carrée.

Solution : [solutions/08_pythagore.algo](solutions/08_pythagore.algo) (la version avec la racine carrée est étudiée au chapitre 12)

---

## Exercice 7 - Chemin de vie ★★★

Le chemin de vie en numérologie est calculé en additionnant les chiffres du jour, du mois et de l'année de naissance, puis en réduisant cette somme à un nombre compris entre 1 et 9.

1. Demander à l'utilisateur de saisir son jour de naissance, son mois de naissance et son année de naissance.
2. Additionner les chiffres du jour, du mois et de l'année jusqu'à obtenir un nombre compris entre 1 et 9.
3. Afficher le chemin de vie calculé.

Exemple de sortie :

- Date de naissance : 15/08/1990
- Somme des chiffres : 1 + 5 + 0 + 8 + 1 + 9 + 9 + 0 = 33
- Réduction : 3 + 3 = 6
- Chemin de vie : 6

Indice : `n % 10` donne le dernier chiffre de `n`, `int(n / 10)` le retire.

Solution : [solutions/08_chemin_de_vie.algo](solutions/08_chemin_de_vie.algo)
