# L'algorithme

## 1. De quoi s'agit-il ?

Un algorithme transforme un **Problème** en une solution à travers :

- un **ensemble de règles**
- des **enchaînements** (structure)
- un **nombre fini d'opérations**

---

## 2. Méthodologie de conception : analyse descendante

L'analyse descendante consiste à décomposer un problème complexe en sous-problèmes simples, puis à recomposer les solutions pour obtenir l'algorithme principal.

1. **Décomposition** du problème
2. Identification de **sous-problèmes simples** (Ss Pb 1, ..., Ss Pb X)
3. **Recomposition** des algorithmes (Algo 1, ..., Algo X)
4. Obtention de l'**algorithme principal** et de la résolution

---

## 3. Objectifs de la méthodologie de conception

### Modularité

- 1 problème simple = 1 algorithme simple
- Réutilisable

### Lisibilité

- Mise en page
- Commentaires
- Description

### Complexité

- Enchaînements
- Mesure de la durée d'exécution
- Mesure de l'espace mémoire

---

## 4. Les structures

| Structure | Description |
|-----------|-------------|
| **Séquentielle** | Ordonnancement des instructions |
| **Conditionnelle** | Bloc d'instructions à exécuter selon circonstances |
| **Itérative** | Bloc d'instructions à exécuter plusieurs fois |

---

## 5. Syntaxe globale AlgoFab

### Écriture

Un algorithme AlgoFab est un **arbre de blocs** organisé en cinq sections fixes, toujours dans cet ordre. Le nom de l'algorithme est saisi dans le champ titre de l'application.

```
FONCTIONS_UTILISEES
  <Définition des fonctions>        (facultatif)
CONSTANTES
  <Déclaration des constantes>      (facultatif)
VARIABLES
  <Déclaration des variables>
DEBUT_ALGORITHME
  <Bloc Instructions>
FIN_ALGORITHME
```

À l'exécution : les fonctions sont enregistrées, les constantes calculées, les variables créées **sans valeur**, puis les instructions de `DEBUT_ALGORITHME` sont exécutées dans l'ordre.

### Exemple

```
VARIABLES
  puissance EST_DU_TYPE NOMBRE
  intensite EST_DU_TYPE NOMBRE
  tension EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  puissance PREND_LA_VALEUR 4400
  intensite PREND_LA_VALEUR 20
  tension PREND_LA_VALEUR puissance / intensite
  AFFICHER tension ↵
FIN_ALGORITHME
```

Fichier : [exemples/04_tension.algo](exemples/04_tension.algo)

> Dans les exemples du cours, les sections vides (`FONCTIONS_UTILISEES`, `CONSTANTES`) ne sont pas recopiées.

---

## 6. AlgoFab

- Application web : https://algofab.mips.science
- Ouvrir un exemple du cours : menu **Algorithmes → Ouvrir algo**, puis choisir un fichier `.algo`
- Le travail se fait en trois étapes : **Coder** (construire l'arbre de blocs), **Vérifier** (l'application signale les erreurs avant l'exécution), **Exécuter** (la console affiche le résultat)
- Documentation : bouton **Aide** de l'application (référence du langage et des fonctions intégrées)
