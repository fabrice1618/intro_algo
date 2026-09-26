# Complexité algorithmique

## 1. Définition

La **complexité algorithmique** évalue les ressources nécessaires à l'exécution d'un algorithme :

- le **temps d'exécution** (complexité temporelle)
- la **mémoire utilisée** (complexité spatiale)

Ces ressources sont exprimées en fonction de la **taille des données**, notée `n`.

La complexité sert à **comparer des algorithmes entre eux**, indépendamment de la machine utilisée.

---

## 2. Taille d'entrée

La taille `n` correspond à la quantité de données traitées par l'algorithme. Selon le contexte, elle représente :

- le nombre d'éléments d'un tableau
- le nombre de valeurs à traiter
- la longueur d'une chaîne de caractères

Plus `n` est grand, plus l'algorithme nécessite de ressources.

---

## 3. Notation grand O

La notation `O()` décrit le **comportement asymptotique** d'un algorithme, c'est-à-dire son évolution lorsque `n` devient grand.

Règles de simplification :

- On conserve uniquement le **terme dominant** (celui qui croît le plus vite).
- Les **constantes multiplicatives** sont ignorées.

Exemple : une complexité de `3n^2 + 5n + 2` se simplifie en `O(n^2)`.

Règles pratiques pour compter les opérations :

| Structure | Coût |
|-----------|------|
| Instruction simple (affectation, calcul, comparaison) | 1 : `O(1)` |
| Instructions en séquence | on **additionne** : on garde la plus coûteuse |
| `SI ... SINON` | le coût de la branche la plus chère |
| Boucle de `n` tours | `n` × le coût du corps |
| Boucles imbriquées | on **multiplie** les nombres de tours : 2 boucles de `n` tours donnent `O(n^2)` |

---

## 4. Principaux types de complexité

### 4.1. O(1) -- Complexité constante

Le temps d'exécution ne dépend pas de `n`.

**Exemples :**

- Accéder à un élément d'un tableau par son indice
- Tester si un nombre est pair
- Échanger deux variables

```
Afficher T[5]
```

### 4.2. O(log n) -- Complexité logarithmique

La taille du problème est divisée par deux à chaque étape.

**Exemples :**

- Recherche dichotomique dans un tableau trié
- Recherche dans un arbre binaire équilibré

```
Tant que le tableau n'est pas vide
   Comparer l'élément central avec la valeur cherchée
   Diviser le tableau en deux
Fin Tant que
```

### 4.3. O(n) -- Complexité linéaire

Le temps d'exécution augmente proportionnellement à `n`.

**Exemples :**

- Parcourir un tableau
- Rechercher une valeur dans un tableau non trié (chapitre 09)
- Calculer la somme des éléments d'un tableau

```
Pour i de 0 à n - 1
   Afficher T[i]
Fin Pour
```

### 4.4. O(n log n) -- Complexité quasi-linéaire

Combinaison d'un parcours complet et d'une division successive du problème.

**Exemples :**

- Tri rapide (quicksort)
- Tri fusion (merge sort)
- Tri par tas (heap sort)

C'est la complexité optimale pour les algorithmes de tri par comparaison.

### 4.5. O(n^2) -- Complexité quadratique

Deux boucles imbriquées parcourent les données.

**Exemples :**

- Tri par sélection (chapitre 09)
- Tri à bulles
- Comparer toutes les paires d'éléments

```
Pour i de 0 à n - 1
   Pour j de 0 à n - 1
      Comparer T[i] et T[j]
   Fin Pour
Fin Pour
```

Trois boucles imbriquées donnent `O(n^3)` (complexité cubique) : c'est le cas de la recherche des triangles de Pythagore (exercice du chapitre 08).

### 4.6. Tableau récapitulatif

| Complexité   | Nom              | Exemple concret               |
|--------------|------------------|-------------------------------|
| O(1)         | Constante        | Accès par indice              |
| O(log n)     | Logarithmique    | Recherche dichotomique        |
| O(n)         | Linéaire         | Parcours de tableau           |
| O(n log n)   | Quasi-linéaire   | Tri fusion                    |
| O(n^2)       | Quadratique      | Tri par sélection, tri à bulles |
| O(n^3)       | Cubique          | Trois boucles imbriquées      |

Nombre d'opérations selon la taille des données (log en base 2, arrondi) :

| n | O(log n) | O(n) | O(n log n) | O(n^2) |
|---|----------|------|------------|--------|
| 10 | 3 | 10 | 33 | 100 |
| 1 000 | 10 | 1 000 | 10 000 | 1 000 000 |
| 1 000 000 | 20 | 1 000 000 | 20 000 000 | 1 000 000 000 000 |

À un milliard d'opérations par seconde, un tri en `O(n log n)` de 1 million de valeurs prend 0,02 s ; un tri en `O(n^2)`, environ 17 minutes.

---

## 5. Meilleur cas, pire cas, cas moyen

L'analyse d'un algorithme distingue trois scénarios :

| Scénario     | Description                                          |
|--------------|------------------------------------------------------|
| Meilleur cas | Données les plus favorables (exécution minimale)     |
| Pire cas     | Données les plus défavorables (exécution maximale)   |
| Cas moyen    | Comportement moyen sur un ensemble d'entrées         |

En pratique, on étudie principalement le **pire cas**, car il garantit une borne supérieure sur le temps d'exécution.

Exemple, la recherche d'une valeur dans un tableau de `n` éléments (chapitre 09) : 1 comparaison dans le meilleur cas (valeur en première position), `n` comparaisons dans le pire cas (valeur absente). Sa complexité est donc `O(n)`.

---

## 6. Complexité spatiale

La complexité spatiale mesure la **quantité de mémoire** utilisée par un algorithme en plus des données d'entrée. Elle prend en compte :

- les variables locales
- les tableaux temporaires
- la pile d'appels en cas de récursivité

Un algorithme **en place** utilise une quantité de mémoire supplémentaire constante (`O(1)`).
Un algorithme qui crée des structures temporaires proportionnelles à `n` a une complexité spatiale en `O(n)`.

---

## 7. Mesurer avec AlgoFab

- **Vérifier** affiche un bloc **Complexité** pour le programme principal et chaque fonction : une estimation du **temps** d'après les `POUR` imbriqués (« indéterminée » avec un `TANT_QUE` ou une récursion), la complexité **cyclomatique** (chapitre 13) et l'**espace**.
- Après une exécution, le volet **Exécution** compte les **instructions** et les **tours de boucle** réellement effectués. En relançant avec une taille `n` doublée, on observe l'ordre de grandeur : le nombre de tours double pour `O(n)`, il est multiplié par 4 pour `O(n^2)`.

---

## 8. A retenir

- La complexité d'un algorithme s'exprime en fonction de la taille des données `n`.
- La notation **grand O** permet de comparer les algorithmes entre eux, indépendamment de la machine.
- `O(1) < O(log n) < O(n) < O(n log n) < O(n^2)` (du plus efficace au moins efficace).
- Des boucles imbriquées **multiplient** les coûts, des boucles successives les **additionnent**.
- On étudie surtout le **pire cas**.
- On raisonne sur des **ordres de grandeur**, pas sur des temps d'exécution absolus.

---

## Exercices

Fiche [exercices/12_complexite_algorithmique.md](exercices/12_complexite_algorithmique.md) : calculer la complexité d'algorithmes du cours, améliorer la recherche des triangles de Pythagore, mesurer avec AlgoFab.
