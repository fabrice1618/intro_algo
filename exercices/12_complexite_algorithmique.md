# Exercices 12 - Complexité algorithmique

> Notions : chapitre [12](../12_complexite_algorithmique.md), appliqué aux algorithmes des chapitres 08 à 10.

---

## Exercice 1 - Reconnaître la complexité ★

Donner la complexité en temps (notation grand O) de chaque algorithme, en fonction de la taille des données :

1. Afficher le premier élément d'un tableau de `n` éléments.
2. Jours au-dessus de la moyenne pour `n` jours ([09_production_semaine.algo](../exemples/09_production_semaine.algo) avec `n` jours au lieu de 7).
3. Table de multiplication `N × N` ([08_boucles_imbriquees.algo](../exemples/08_boucles_imbriquees.algo)).
4. Tri par sélection de `n` valeurs ([09_tri_selection.algo](../exemples/09_tri_selection.algo)).
5. Jeu de dés version 1 avec `t` tirages et `j` joueurs ([fiche 08](08_boucles.md), exercice 5).

<details>
<summary>Solution</summary>

1. `O(1)` : un seul accès, quelle que soit la taille.
2. `O(n)` : deux boucles **successives** de `n` tours, soit `2n` tours ; la constante 2 est ignorée.
3. `O(N^2)` : deux boucles **imbriquées** de `N` tours.
4. `O(n^2)` : deux boucles imbriquées (voir l'exercice 2).
5. `O(t × j)` : pour chaque tirage, chaque joueur lance les dés.
</details>

---

## Exercice 2 - Comparaisons du tri par sélection ★★

Combien de fois la comparaison `tableau[j] < tableau[indice_min]` est-elle exécutée par le tri par sélection d'un tableau de 5 éléments ? de `n` éléments ? Ce nombre dépend-il de l'ordre initial des valeurs ?

<details>
<summary>Solution</summary>

Au tour `i = 0`, la boucle sur `j` fait `n - 1` comparaisons, puis `n - 2` au tour suivant, etc. : `(n - 1) + (n - 2) + ... + 1 = n(n - 1) / 2`.

Pour `n = 5` : `4 + 3 + 2 + 1 = 10` comparaisons. Le terme dominant est `n^2 / 2`, donc `O(n^2)`.

Le nombre de comparaisons ne dépend pas de l'ordre initial : pour ce tri, meilleur cas et pire cas sont identiques.
</details>

---

## Exercice 3 - Recherche séquentielle ou dichotomique ★★

Un tableau **trié** contient 1 000 000 de valeurs. Combien de comparaisons faut-il, dans le pire cas, pour savoir si une valeur s'y trouve :

1. avec la recherche séquentielle du chapitre 09 ?
2. avec une recherche dichotomique (comparer à l'élément du milieu, puis ne garder que la moitié utile) ?

<details>
<summary>Solution</summary>

1. 1 000 000 comparaisons (valeur absente) : `O(n)`.
2. Environ 20 : le tableau est divisé par 2 à chaque comparaison et `2^20 ≈ 1 000 000` : `O(log n)`.
</details>

---

## Exercice 4 - Améliorer les triangles de Pythagore ★★★

La solution de l'exercice 6 de la [fiche 08](08_boucles.md) utilise trois boucles imbriquées sur les longueurs `a < b < c < 100`.

1. Quelle est sa complexité en fonction de la borne `n` = 100 ?
2. Écrire une version en `O(n^2)` : pour chaque couple `(a, b)`, **calculer** `c = sqrt(a * a + b * b)` au lieu de le chercher, puis vérifier que `c` est entier (`c == int(c)`) et inférieur à 100.
3. Exécuter les deux versions dans AlgoFab et comparer les **tours de boucle** affichés dans le volet Exécution.

Solution : [solutions/12_pythagore_n2.algo](solutions/12_pythagore_n2.algo)

<details>
<summary>Solution</summary>

1. `O(n^3)`.
3. Les deux versions trouvent les mêmes 50 triplets, mais la première fait 161 799 tours de boucle, la seconde 4 950 : environ 33 fois moins.
</details>

---

## Exercice 5 - Mesurer la complexité ★★

Modifier [09_tri_selection.algo](../exemples/09_tri_selection.algo) pour trier `n` nombres aléatoires, `n` étant saisi au clavier. L'exécuter pour `n` = 10, 20 et 40 et relever le nombre de **tours de boucle**. Que se passe-t-il quand `n` double ?

<details>
<summary>Solution</summary>

Avec une boucle de remplissage de `n` tours avant le tri : 64, 229 puis 859 tours. Quand `n` double, le nombre de tours est multiplié par presque 4 : c'est la signature d'un algorithme en `O(n^2)`. Le rapport tend vers 4 quand `n` grandit, car le terme en `n` (remplissage, boucle extérieure) pèse de moins en moins face au terme en `n^2`.
</details>
