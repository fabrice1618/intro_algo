# Les tableaux

## 1. Description

Au chapitre 08, la production de chaque jour était écrasée au tour suivant. Pour **conserver** toutes les valeurs, on utilise un tableau.

Un **tableau** est une variable pouvant stocker N éléments, numérotés **à partir de 0**. Dans AlgoFab, un tableau est une variable de type `LISTE`.

| Indice | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|--------|---|---|---|---|---|---|---|
| `production[indice]` | 10 | 12 | 14 | 9 | 11 | 13 | 15 |

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

### Taille du tableau et parcours

`length(tableau)` donne le nombre d'éléments. Le dernier élément a donc l'indice `length(tableau) - 1`. Pour parcourir tout le tableau :

```
POUR index ALLANT_DE 0 A length(tableau) - 1
```

> `LIRE` sur une liste vise toujours un élément : `LIRE tableau[i]`.
> `AFFICHER tableau` affiche tous les éléments séparés par des espaces.
> Un tableau ne se calcule pas en entier (`tableau + 1` n'a pas de sens) : on travaille élément par élément.

---

## 3. Exemple : jours au-dessus de la moyenne

Pour savoir quels jours dépassent la moyenne, il faut connaître la moyenne... donc avoir lu tous les jours. Le tableau permet de **relire** les valeurs dans un second parcours.

```
VARIABLES
  production EST_DU_TYPE LISTE
  jour EST_DU_TYPE NOMBRE
  total EST_DU_TYPE NOMBRE
  moyenne EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  // 1er parcours : saisir et mémoriser les productions
  total PREND_LA_VALEUR 0
  POUR jour ALLANT_DE 0 A 6
    DEBUT_POUR
    AFFICHER "Production du jour "
    AFFICHER jour + 1
    AFFICHER " : "
    LIRE production[jour]
    AFFICHER production[jour] ↵
    total PREND_LA_VALEUR total + production[jour]
    FIN_POUR
  moyenne PREND_LA_VALEUR total / length(production)
  AFFICHER "Moyenne : "
  AFFICHER moyenne ↵
  // 2e parcours : relire les valeurs mémorisées
  POUR jour ALLANT_DE 0 A length(production) - 1
    DEBUT_POUR
    SI (production[jour] > moyenne) ALORS
      DEBUT_SI
      AFFICHER "Jour "
      AFFICHER jour + 1
      AFFICHER " : au-dessus de la moyenne" ↵
      FIN_SI
    FIN_POUR
FIN_ALGORITHME
```

Fichier : [exemples/09_production_semaine.algo](exemples/09_production_semaine.algo)

---

## 4. Algorithmes classiques

### Recherche d'une valeur

On avance dans le tableau **tant qu'**on n'a ni trouvé la valeur, ni atteint la fin :

```
VARIABLES
  tableau EST_DU_TYPE LISTE
  cherche EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  tableau PREND_LA_VALEUR [12, 7, 25, 3, 18]
  LIRE cherche
  i PREND_LA_VALEUR 0
  TANT_QUE (i < length(tableau) ET tableau[i] != cherche) FAIRE
    DEBUT_TANT_QUE
    i PREND_LA_VALEUR i + 1
    FIN_TANT_QUE
  SI (i < length(tableau)) ALORS
    DEBUT_SI
    AFFICHER "Trouvé à l'indice "
    AFFICHER i ↵
    FIN_SI
  SINON
    DEBUT_SINON
    AFFICHER "Absent" ↵
    FIN_SINON
FIN_ALGORITHME
```

Fichier : [exemples/09_recherche.algo](exemples/09_recherche.algo)

Si la valeur est en première position, un seul tour suffit ; si elle est absente, il faut parcourir tout le tableau. Ce meilleur et ce pire cas sont étudiés au chapitre 12.

### Tri par sélection

Principe : chercher le plus petit élément et l'échanger avec le premier, puis chercher le plus petit des éléments restants et l'échanger avec le deuxième, et ainsi de suite.

| Tour `i` | Plus petit élément entre `i` et la fin | Tableau après l'échange |
|----------|----------------------------------------|-------------------------|
| départ | | 5 3 8 1 4 |
| 0 | 1 (indice 3) | **1** 3 8 5 4 |
| 1 | 3 (indice 1, déjà en place) | 1 **3** 8 5 4 |
| 2 | 4 (indice 4) | 1 3 **4** 5 8 |
| 3 | 5 (indice 3, déjà en place) | 1 3 4 **5** 8 |

Après le tour `i`, les éléments d'indice 0 à `i` sont définitivement triés. Le dernier élément se retrouve en place tout seul : la boucle s'arrête à `length(tableau) - 2`.

```
VARIABLES
  tableau EST_DU_TYPE LISTE
  i EST_DU_TYPE NOMBRE
  j EST_DU_TYPE NOMBRE
  indice_min EST_DU_TYPE NOMBRE
  temporaire EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  tableau PREND_LA_VALEUR [5, 3, 8, 1, 4]
  AFFICHER tableau ↵
  POUR i ALLANT_DE 0 A length(tableau) - 2
    DEBUT_POUR
    // indice du plus petit élément entre i et la fin
    indice_min PREND_LA_VALEUR i
    POUR j ALLANT_DE i + 1 A length(tableau) - 1
      DEBUT_POUR
      SI (tableau[j] < tableau[indice_min]) ALORS
        DEBUT_SI
        indice_min PREND_LA_VALEUR j
        FIN_SI
      FIN_POUR
    // échange de tableau[i] et tableau[indice_min]
    temporaire PREND_LA_VALEUR tableau[i]
    tableau[i] PREND_LA_VALEUR tableau[indice_min]
    tableau[indice_min] PREND_LA_VALEUR temporaire
    FIN_POUR
  AFFICHER tableau ↵
FIN_ALGORITHME
```

Fichier : [exemples/09_tri_selection.algo](exemples/09_tri_selection.algo)

L'échange utilise une variable `temporaire`, comme l'échange de deux variables (exercice du chapitre 06).

---

## 5. Tableau à 2 dimensions

AlgoFab ne connaît que les tableaux à 1 dimension. Pour simuler un tableau de `nb_lignes` lignes et `nb_colonnes` colonnes, on range l'élément de la ligne `li` et de la colonne `col` (numérotées à partir de 0) à l'indice `li * nb_colonnes + col` :

```
tableau[li * nb_colonnes + col] PREND_LA_VALEUR 12
```

Avec 2 lignes et 3 colonnes, les lignes sont rangées l'une après l'autre :

| | colonne 0 | colonne 1 | colonne 2 |
|---|---|---|---|
| **ligne 0** | indice 0 | indice 1 | indice 2 |
| **ligne 1** | indice 3 | indice 4 | indice 5 |

L'élément de la ligne 1, colonne 2, est à l'indice `1 * 3 + 2 = 5`.

---

## Exercices

Fiche [exercices/09_tableaux.md](exercices/09_tableaux.md) : minimum, maximum et moyenne, jeu de dés (versions 2 et 3), plus petites et plus grandes valeurs.
