# Exercices 09 - Les tableaux

> Notions : chapitres [05](../05_variables.md) à [09](../09_tableaux.md) : variables, entrées-sorties, calculs, conditions, boucles, `LISTE`, recherche et tri par sélection.

---

## Exercice 1 - Minimum, maximum et moyenne ★

### Consignes

1. Créer un tableau de 10 nombres entiers aléatoires.
2. Rechercher le plus petit (minimum) et le plus grand (maximum) nombre du tableau.
3. Calculer la moyenne des nombres du tableau.

### Étapes à suivre :

1. **Initialisation** :
   - Créer un tableau vide `tableau`.
   - Utiliser une boucle pour générer 10 nombres entiers aléatoires (par exemple entre 0 et 100) et les ajouter au tableau.

2. **Recherche du minimum et maximum** :
   - Initialiser deux variables `minimum` et `maximum` avec respectivement la première valeur du tableau.
   - Parcourir le tableau pour comparer chaque élément avec `minimum` et `maximum`, et mettre à jour ces variables si nécessaire.

3. **Calcul de la moyenne** :
   - Utiliser une boucle pour calculer la somme des éléments du tableau.
   - Diviser la somme par 10 pour obtenir la moyenne.

### Exemple de sortie :

- Tableau généré : [12, 43, 5, 29, 56, 77, 15, 34, 22, 9]
- Minimum : 5
- Maximum : 77
- Moyenne : 30.2

---

## Exercice 2 - Jeu de dés, version 2 ★★

Lire le nombre de joueurs et le nombre de tirages pour paramétrer le jeu. Variante : paramétrer le nombre de dés.

A chaque tirage, chaque joueur jette 2 dés. Vous utiliserez la fonction randint(p, n) qui renvoie un entier pseudo-aléatoire compris entre p et n. Le joueur disposant du plus grand total gagne.

Afficher le joueur gagnant pour chaque tirage, puis à la fin le joueur ayant gagné le plus grand nombre de tirages.

Indice : reprendre la version 1 ([fiche 08](08_boucles.md), exercice 5) et compter les victoires de chaque joueur dans un tableau.

Solution : [solutions/09_des_v2.algo](solutions/09_des_v2.algo)

---

## Exercice 3 - Jeu de dés, version 3 ★★★

Refaire l’exercice 2 en 2 phases:
- Phase 1: Réaliser tous les tirages et stocker les données dans un tableau.
- Phase 2: Analyser les données pour afficher les informations demandées.

Attention: 
Pour cet exercice, vous auriez besoin d'un tableau à 2 dimensions (une ligne par tirage, une colonne par joueur), mais AlgoFab ne connaît que les tableaux à 1 dimension : voir le chapitre 09, section 5.

Solution : [solutions/09_des_v3.algo](solutions/09_des_v3.algo)

---

## Exercice 4 - Plus petites et plus grandes valeurs ★★★

### Consignes

1. Demander à l'utilisateur combien d'éléments le tableau doit contenir.
2. Demander à l'utilisateur combien de valeurs minimum et combien de valeurs maximum il souhaite afficher.
3. Générer un tableau avec des nombres aléatoires compris entre 1 et 100.
4. Rechercher les `n` plus petites valeurs et les `m` plus grandes valeurs dans le tableau, où `n` et `m` sont les valeurs fournies par l'utilisateur.
5. Afficher la moyenne des nombres du tableau.

Attention: il est possible que le tableau contienne des valeurs identiques. Cela a des conséquences sur l'algorithme.

### Étapes à suivre :

1. **Initialisation** :
   - Demander à l'utilisateur le nombre d'éléments `taille_tableau`.
   - Initialiser un tableau `tableau` vide.
   - Utiliser une boucle pour remplir le tableau avec des nombres aléatoires compris entre 1 et 100.

2. **Recherche des valeurs minimum et maximum** :
   - Demander à l'utilisateur combien de valeurs minimum `nombre_minimum` et combien de valeurs maximum `nombre_maximum` il veut afficher.
   - Trier le tableau (tri par sélection, chapitre 09).
   - Afficher les `nombre_minimum` premières valeurs pour les minimums et les `nombre_maximum` dernières valeurs pour les maximums.

3. **Calcul de la moyenne** :
   - Utiliser une boucle pour calculer la somme des éléments du tableau.
   - Diviser la somme par `taille_tableau` pour obtenir la moyenne.

### Exemple de sortie :

- Nombre d'éléments : 12
- Nombres aléatoires : [12, 43, 5, 29, 56, 77, 15, 34, 22, 9, 80, 7]
- Nombre de valeurs minimum à afficher : 3
- Nombre de valeurs maximum à afficher : 2
- Les 3 plus petites valeurs : 5, 7, 9
- Les 2 plus grandes valeurs : 77, 80
- Moyenne : 34.4

Solution : [solutions/09_extremes.algo](solutions/09_extremes.algo)
