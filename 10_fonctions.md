# Les fonctions

## 1. Description

Une fonction est un **algorithme prédéfini** livré avec le langage (comme les calculettes).

Exemples :

- Librairie mathématique (trigo, géo, finance) : sin, cos, loi.normale, etc.
- Traitements de chaînes de caractères (extraction, recherche,...)

Dans AlgoFab, on distingue :

- les **fonctions intégrées**, livrées avec le langage (`sqrt`, `round`, `length`...) : sections 4 et 5
- les **fonctions utilisateur**, écrites dans l'algorithme : section 6

---

## 2. Utilisation

- Pendant toute la programmation
- En appel « extérieur » pour effectuer un traitement intermédiaire

---

## 3. Syntaxe

Une fonction se compose de :

- un **nom**
- 2 **parenthèses**
- de 0 à N **arguments** séparés par virgule(s)

```
nom_fonction([argument1], [argument2], [argument3], ...)
```

Les parenthèses sont **obligatoires**, même sans argument : `random()`.

---

## 4. Principales fonctions mathématiques

| Fonction | Description | Syntaxe AlgoFab |
|----------|-------------|-----------------|
| racine carrée | Racine carrée de x | `sqrt(x)` |
| puissance | x à la puissance y (aussi `x ^ y`) | `pow(x, y)` |
| valeur absolue | Valeur absolue de x | `abs(x)` |
| arrondi | Arrondi à l'entier, ou à n décimales | `round(x)`, `round(x, n)` |
| partie entière | Troncature vers 0 | `int(x)` |
| entier inférieur / supérieur | Plus grand entier ≤ x / plus petit entier ≥ x | `floor(x)`, `ceil(x)` |
| maximum / minimum | Plus grand / plus petit des arguments | `max(a, b, ...)`, `min(a, b, ...)` |
| aléatoire | Entier aléatoire entre p et n inclus | `randint(p, n)` |
| aléatoire décimal | Nombre aléatoire dans [0 ; 1[ | `random()` |
| trigonométrie | Angles en radians | `cos(x)`, `sin(x)`, `tan(x)` |

La constante `PI` désigne π. Le reste de la division entière s'obtient avec l'opérateur `%` : `17 % 5` vaut `2`.

---

## 5. Principales fonctions textes

| Fonction | Description | Syntaxe AlgoFab |
|----------|-------------|-----------------|
| taille | Nombre de caractères (ou d'éléments d'une liste) | `length(chaine)` |
| nombre en chaîne | Transformer un nombre en chaîne | `tostring(nombre)` |
| chaîne en nombre | Transformer une chaîne en nombre | `int(chaine)`, `float(chaine)` |
| extraire | Extraire une partie de la chaîne commençant au caractère de départ et longue de n caractères | `substr(chaine, debut, n)` |
| caractère | Caractère à la position pos | `charat(chaine, pos)` |
| code ASCII | Code ASCII du premier caractère de la chaîne | `asc(chaine)` |
| caractère ASCII | Caractère correspondant au code ASCII | `char(code)` |
| concaténation | Coller des textes bout à bout (aussi `+`) | `concat(a, b, ...)` |

> Pour une documentation détaillée des fonctions de chaînes de caractères, voir le chapitre [11 - Chaînes de caractères](11_chaines_de_caracteres.md).
> Liste complète : bouton **Aide** d'AlgoFab, page « Fonctions intégrées ».

---

## 6. Fonctions utilisateur

On peut aussi écrire **ses propres fonctions**, pour découper un problème en sous-problèmes (analyse descendante) et réutiliser un traitement. Elles se définissent dans la section `FONCTIONS_UTILISEES`.

### Syntaxe

```
FONCTION nom_fonction(parametre1: TYPE, parametre2: TYPE) → TYPE_RETOUR
  VARIABLES_FONCTION
    <variables locales>
  DEBUT_FONCTION
  <instructions>
  RENVOYER <expression>
  FIN_FONCTION
```

- **Paramètres** : chacun a un nom et un type (`NOMBRE`, `CHAINE`, `BOOLEEN`, `LISTE`). Ils reçoivent, dans l'ordre, les valeurs passées à l'appel.
- **Type de retour** : ce que la fonction renvoie. `AUCUN` pour une fonction qui ne renvoie rien (procédure). Si le type de retour est `NOMBRE`, AlgoFab ne l'affiche pas dans l'arbre.
- **RENVOYER** termine la fonction et transmet le résultat à l'appelant.
- **Portée** : une fonction ne voit que ses paramètres, ses variables locales et les constantes. Les variables du programme principal ne sont **pas** accessibles : on les passe en paramètre.
- **Appel** : dans une expression (`x PREND_LA_VALEUR moyenne(12, 15)`), ou avec le bloc **APPELER** quand il n'y a pas de résultat à utiliser (l'arbre affiche alors simplement l'appel : `afficher_titre("Fonctions")`).
- **Récursivité** : une fonction peut s'appeler elle-même (ici `factorielle`).

### Exemple

```
FONCTIONS_UTILISEES
  FONCTION afficher_titre(titre: CHAINE) → AUCUN
    VARIABLES_FONCTION
    DEBUT_FONCTION
    AFFICHER "=== "
    AFFICHER titre
    AFFICHER " ===" ↵
    FIN_FONCTION
  FONCTION moyenne(a: NOMBRE, b: NOMBRE)
    VARIABLES_FONCTION
    DEBUT_FONCTION
    RENVOYER (a + b) / 2
    FIN_FONCTION
  FONCTION factorielle(n: NOMBRE)
    VARIABLES_FONCTION
    DEBUT_FONCTION
    SI (n <= 1) ALORS
      DEBUT_SI
      RENVOYER 1
      FIN_SI
    RENVOYER n * factorielle(n - 1)
    FIN_FONCTION
VARIABLES
  n EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  afficher_titre("Fonctions")
  LIRE n
  AFFICHER "Moyenne de 12 et 15 : "
  AFFICHER moyenne(12, 15) ↵
  AFFICHER "Factorielle : "
  AFFICHER factorielle(n) ↵
FIN_ALGORITHME
```

Fichier : [exemples/10_fonctions_utilisateur.algo](exemples/10_fonctions_utilisateur.algo)
