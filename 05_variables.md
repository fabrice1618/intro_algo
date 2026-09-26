# Les variables

## 1. Usage

Les variables servent à **stocker des valeurs** (définitives ou intermédiaires) dans la **mémoire** du PC. Une variable est une « boîte » qui a :

- un **nom**, pour la désigner
- un **type**, qui fixe ce qu'elle peut contenir
- une **valeur**, qui peut changer pendant l'exécution

---

## 2. Déclaration

Chaque variable est déclarée **une seule fois**, avec un **type**, dans la section `VARIABLES`.

Le **nom** d'une variable doit être :

- simple
- sans espace
- sans ponctuation
- pas d'accents
- commencer par une lettre (ou `_`), jamais par un chiffre
- différent des mots réservés du langage (`SI`, `POUR`, `NOMBRE`, `VALEUR`, `VRAI`, `length`...), quelle que soit la casse : `nombre` ou `valeur` sont refusés

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

| Type | Contient | Exemples de valeurs |
|------|----------|---------------------|
| `NOMBRE` | Nombres entiers et nombres à virgule flottante | `10`, `3.14`, `-2` |
| `CHAINE` | Texte entre guillemets doubles : caractères, mots, ou un nombre sous forme de texte (code postal) | `"A"`, `"Hello"`, `"69000"` |
| `BOOLEEN` | Vrai ou faux : `VRAI`, `FAUX` (majuscules obligatoires) ou le résultat d'une comparaison | `VRAI`, `qte_piece > 0` |
| `LISTE` | Suite de valeurs numérotées **à partir de 0** : voir le chapitre [09 - Les tableaux](09_tableaux.md) | `[12, 25, 7]` |

> Un booléen n'accepte **pas** `0` ou `1` : on écrit `VRAI` ou `FAUX`.

---

## 4. Affectation

L'affectation attribue une valeur à une variable avec l'instruction **"prend la valeur de ..."** :

```
variable PREND_LA_VALEUR expression
```

L'expression est d'abord **calculée**, puis le résultat est rangé dans la variable : l'ancienne valeur est perdue.

**Déclarer ≠ affecter.** La déclaration crée la « boîte » ; l'affectation y range une valeur. Une variable n'a **pas de valeur** tant qu'on ne lui en a pas donné une : la lire avant est une erreur signalée par AlgoFab. Un compteur ou un total commence donc par `total PREND_LA_VALEUR 0`.

`somme PREND_LA_VALEUR somme + i` utilise l'**ancienne** valeur de `somme` pour calculer la nouvelle.

### Suivre l'exécution : le tableau de trace

Pour comprendre un algorithme, on note la valeur de chaque variable **après** chaque instruction (`?` : pas encore de valeur).

| Instruction | `x` | `y` |
|-------------|-----|-----|
| `x PREND_LA_VALEUR 3` | 3 | ? |
| `y PREND_LA_VALEUR x * 2` | 3 | 6 |
| `x PREND_LA_VALEUR x + y` | 9 | 6 |

Une variable ne contient **qu'une valeur à la fois** : `x` vaut 3, puis 9. L'exécution pas à pas d'AlgoFab affiche ce suivi en direct.

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
DEBUT_ALGORITHME
  qte_piece PREND_LA_VALEUR 15
  prix_ht PREND_LA_VALEUR 0.25
  nom_piece PREND_LA_VALEUR "Vis M6"
  en_stock PREND_LA_VALEUR qte_piece > 0
  AFFICHER nom_piece ↵
  AFFICHER qte_piece ↵
  AFFICHER prix_ht * (1 + TAUX_TVA / 100) ↵
  AFFICHER en_stock ↵
FIN_ALGORITHME
```

Fichier : [exemples/05_variables.algo](exemples/05_variables.algo)

Affichage :

```
Vis M6
15
0.3
VRAI
```

---

## Exercices

Fiche [exercices/05_variables.md](exercices/05_variables.md) : tableaux de trace, trouver les valeurs des variables.
