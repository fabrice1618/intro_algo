# Exercices 10 - Les fonctions

> Notions : chapitres [05](../05_variables.md) à [10](../10_fonctions.md) : tout ce qui précède, plus les fonctions utilisateur (paramètres, `RENVOYER`, portée, récursivité).

---

## Exercice 1 - Maximum ★

Écrire une fonction `maximum(a, b)` qui renvoie le plus grand de deux nombres. L'utiliser pour afficher le plus grand de trois nombres saisis, sans écrire d'autre `SI`.

Solution : [solutions/10_maximum.algo](solutions/10_maximum.algo)

---

## Exercice 2 - Nombres premiers ★★

Un nombre est premier s'il a exactement deux diviseurs : 1 et lui-même (2, 3, 5, 7, 11...).

1. Écrire une fonction `est_premier(n: NOMBRE) → BOOLEEN`.
2. L'utiliser pour afficher tous les nombres premiers de 1 à 100.

Indice : `RENVOYER FAUX` dès qu'un diviseur est trouvé ; il suffit de tester les diviseurs `d` tels que `d * d <= n`.

Solution : [solutions/10_nombres_premiers.algo](solutions/10_nombres_premiers.algo)

---

## Exercice 3 - Approximation de PI ★★

Calculer une approximation de PI en utilisant la série (ou formule) de Madhava-Leibniz : 
PI=4×(1−1/3+1/5−1/7+1/9−1/11+1/n −….)

Demander à l’utilisateur le plus grand dénominateur n pour le calcul.

Le calcul est fait par une fonction `calcul_pi(denominateur_max)` qui renvoie l'approximation. Comparer le résultat avec la constante `PI` pour n = 11, 101, 1001.

Solution : [solutions/10_approximation_pi.algo](solutions/10_approximation_pi.algo)

---

## Exercice 4 - PGCD ★★

Le PGCD (plus grand commun diviseur) se calcule avec l'algorithme d'Euclide : `pgcd(a, 0) = a`, et sinon `pgcd(a, b) = pgcd(b, a % b)`.

Exemple : `pgcd(60, 48) = pgcd(48, 12) = pgcd(12, 0) = 12`.

1. Écrire une fonction `pgcd(a, b)` avec une boucle `TANT_QUE`.
2. Écrire une fonction `pgcd_recursif(a, b)` qui s'appelle elle-même. Quel est le cas d'arrêt ?

Solution : [solutions/10_pgcd.algo](solutions/10_pgcd.algo)

---

## Exercice 5 - Interclassement de tableaux ★★★

A partir de 2 tableaux de 10 entiers tirés au hasard entre 0 et 100, créer un tableau dans l'ordre croissant des nombres des 2 tableaux.

Découper le problème en trois fonctions :

- `tableau_aleatoire(taille) → LISTE` : un tableau de nombres aléatoires
- `trier(t) → LISTE` : le tri par sélection du chapitre 09
- `interclasser(a, b) → LISTE` : fusionne deux tableaux **déjà triés** en les parcourant en parallèle ; à chaque étape, on prend le plus petit des deux éléments courants

Solution : [solutions/10_interclassement.algo](solutions/10_interclassement.algo)
