# Les variables

## 1. Usage

Les variables servent à **stocker des valeurs** :

- définitives
- intermédiaires

Elles sont stockées dans la **mémoire** du PC.

---

## 2. Déclaration

Chaque variable est déclarée **une seule fois**, avec un **type**, dans la section `VARIABLES`.

Le **nom** d'une variable doit être :

- simple
- sans espace
- sans ponctuation
- pas d'accents
- commencer par une lettre (ou `_`), jamais par un chiffre
- différent des mots réservés du langage (`SI`, `POUR`, `NOMBRE`, `VALEUR`, `VRAI`, `length`...)

La **casse compte** : `Total` et `total` sont deux variables différentes.

AlgoFab applique une **convention de nommage** choisie pour l'algorithme :

- **snake_case** (par défaut) : mots en minuscules séparés par `_` (`nb_essais`)
- **camelCase** : premier mot en minuscules, les suivants avec une majuscule (`nbEssais`)

Une lettre seule s'écrit en minuscule (`i`, `a`).

Exemple :

```
VARIABLES
  qte_piece EST_DU_TYPE NOMBRE
  nom_piece EST_DU_TYPE CHAINE
```

---

## 3. Types

### Nombre

Nombres entiers et nombres à virgule flottante.

```
a EST_DU_TYPE NOMBRE
rayon EST_DU_TYPE NOMBRE
a PREND_LA_VALEUR 10
rayon PREND_LA_VALEUR 3.14
```

### Chaîne alphanumérique

Entre guillemets doubles : `"chaine"`. Peut contenir du texte, des caractères, une chaîne, ou un nombre sous forme de texte (code postal).

```
car EST_DU_TYPE CHAINE
texte EST_DU_TYPE CHAINE
car PREND_LA_VALEUR "A"
texte PREND_LA_VALEUR "Hello"
```

### Booléen

Vrai ou faux : `VRAI`, `FAUX` (majuscules obligatoires) ou le résultat d'une comparaison.

```
en_stock EST_DU_TYPE BOOLEEN
en_stock PREND_LA_VALEUR VRAI
en_stock PREND_LA_VALEUR qte_piece > 0
```

> Un booléen n'accepte **pas** `0` ou `1` : on écrit `VRAI` ou `FAUX`.

### Liste

Suite de valeurs numérotées **à partir de 0** (tableau). Voir le chapitre [09 - Les tableaux](09_tableaux.md).

```
tab EST_DU_TYPE LISTE
tab[0] PREND_LA_VALEUR 12
tab[1] PREND_LA_VALEUR 25
tab PREND_LA_VALEUR [12, 25, 7]
```

---

## 4. Affectation

L'affectation attribue une valeur à une variable avec l'instruction **"prend la valeur de ..."**.

```
nb_heures EST_DU_TYPE NOMBRE
nb_heures PREND_LA_VALEUR 15.25

famille EST_DU_TYPE CHAINE
famille PREND_LA_VALEUR "Moteurs"

n EST_DU_TYPE NOMBRE
n PREND_LA_VALEUR 10
```

**Déclarer ≠ affecter.** La déclaration crée la « boîte » ; l'affectation y range une valeur. Une variable n'a **pas de valeur** tant qu'on ne lui en a pas donné une : la lire avant est une erreur signalée par AlgoFab. Un compteur ou un total commence donc par `total PREND_LA_VALEUR 0`.

`somme PREND_LA_VALEUR somme + i` utilise l'**ancienne** valeur de `somme` pour calculer la nouvelle.

---

## 5. Constantes

Une constante a un **nom**, un **type** et une **valeur** fixée une fois pour toutes. Elle se déclare dans la section `CONSTANTES`, au-dessus des variables. Son nom s'écrit **tout en majuscules** (`MAX`, `TAUX_TVA`).

```
CONSTANTES
  TAUX_TVA EST_DU_TYPE NOMBRE VALEUR 20
```

On l'utilise comme une variable dans les calculs (`prix_ht * (1 + TAUX_TVA / 100)`), mais on ne peut **pas** la modifier (`PREND_LA_VALEUR`, `LIRE`).

---

## 6. Exemple complet

```
CONSTANTES
  TAUX_TVA EST_DU_TYPE NOMBRE VALEUR 20
VARIABLES
  qte_piece EST_DU_TYPE NOMBRE
  prix_ht EST_DU_TYPE NOMBRE
  nom_piece EST_DU_TYPE CHAINE
  en_stock EST_DU_TYPE BOOLEEN
  tailles EST_DU_TYPE LISTE
DEBUT_ALGORITHME
  qte_piece PREND_LA_VALEUR 15
  prix_ht PREND_LA_VALEUR 0.25
  nom_piece PREND_LA_VALEUR "Vis M6"
  en_stock PREND_LA_VALEUR qte_piece > 0
  tailles PREND_LA_VALEUR [10, 12, 16]
  tailles[3] PREND_LA_VALEUR 20
  AFFICHER nom_piece ↵
  AFFICHER qte_piece ↵
  AFFICHER prix_ht * (1 + TAUX_TVA / 100) ↵
  AFFICHER en_stock ↵
  AFFICHER tailles ↵
FIN_ALGORITHME
```

Fichier : [exemples/05_variables.algo](exemples/05_variables.algo)
