# Les tableaux

## 1. Description

Un **tableau** est une variable pouvant stocker N éléments, numérotés **à partir de 0**. Dans AlgoFab, un tableau est une variable de type `LISTE`.

### Déclaration

```
tableau EST_DU_TYPE LISTE
```

À la déclaration, la liste est vide (`[]`).

### Accès à un élément

L'**indice** s'écrit entre crochets et peut être un calcul : `tableau[0]`, `tableau[i]`, `tableau[2*k+1]`.

- le premier élément est `tableau[0]`
- l'indice est un entier entre 0 et 10 000
- lire un élément jamais rempli renvoie `0`

---

## 2. Remplissage

### Par affectation simple

```
tableau[2] PREND_LA_VALEUR 5
```

### Toute la liste d'un coup

```
tableau PREND_LA_VALEUR [5, 4, 3, 45, 18]
```

### Par itération

```
POUR index ALLANT_DE 0 A 9
  DEBUT_POUR
  tableau[index] PREND_LA_VALEUR index
  FIN_POUR
```

### Taille du tableau

`length(tableau)` donne le nombre d'éléments. Pour parcourir tout le tableau :

```
POUR index ALLANT_DE 0 A length(tableau) - 1
```

> `LIRE` sur une liste vise toujours un élément : `LIRE tableau[i]`.
> `AFFICHER tableau` affiche tous les éléments séparés par des espaces.
> Un tableau ne se calcule pas en entier (`tableau + 1` n'a pas de sens) : on travaille élément par élément.

---

## 3. Exemple : moyenne de nombres aléatoires

`randint(p, n)` renvoie un entier aléatoire compris entre `p` et `n` (inclus).

```
VARIABLES
  hasard EST_DU_TYPE LISTE
  index EST_DU_TYPE NOMBRE
  total EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  // renseigner la liste avec des nombres aléatoires
  POUR index ALLANT_DE 0 A 9
    DEBUT_POUR
    hasard[index] PREND_LA_VALEUR randint(0, 100)
    FIN_POUR
  AFFICHER hasard ↵
  // calcul de la moyenne
  total PREND_LA_VALEUR 0
  POUR index ALLANT_DE 0 A length(hasard) - 1
    DEBUT_POUR
    total PREND_LA_VALEUR total + hasard[index]
    FIN_POUR
  AFFICHER "Moyenne "
  AFFICHER total / length(hasard) ↵
FIN_ALGORITHME
```

Fichier : [exemples/09_tableau_moyenne.algo](exemples/09_tableau_moyenne.algo)

---

## 4. Tableau à 2 dimensions

AlgoFab ne connaît que les tableaux à 1 dimension. Pour simuler un tableau de `nb_lignes` lignes et `nb_colonnes` colonnes, on range l'élément de la ligne `li` et de la colonne `col` (numérotées à partir de 0) à l'indice `li * nb_colonnes + col` :

```
tableau[li * nb_colonnes + col] PREND_LA_VALEUR 12
```
