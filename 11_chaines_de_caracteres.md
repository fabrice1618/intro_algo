# Chaînes de caractères

## 1. Une chaîne, une suite de caractères

Comme les éléments d'un tableau, les caractères d'une chaîne sont numérotés **à partir de 0** :

| Position | 0 | 1 | 2 | 3 | 4 |
|----------|---|---|---|---|---|
| `"Algo!"` | `A` | `l` | `g` | `o` | `!` |

`length("Algo!")` vaut 5 : le dernier caractère est à la position `length(chaine) - 1`.

---

## 2. Fonctions sur les chaînes

| Fonction | Rôle | Exemple | Résultat | Fichier |
|----------|------|---------|----------|---------|
| `+`, `concat(a, b, ...)` | concaténer : coller des textes bout à bout | `"Bonjour, " + "tout le monde !"` | `"Bonjour, tout le monde !"` | [11_concatenation](exemples/11_concatenation.algo) |
| `length(chaine)` | nombre de caractères | `length("Algorithmie")` | `11` | [11_length](exemples/11_length.algo) |
| `substr(chaine, debut, n)` | extraire `n` caractères à partir de la position `debut` (jusqu'à la fin si `n` est omis) | `substr("Programmation", 3, 4)` | `"gram"` | [11_substr](exemples/11_substr.algo) |
| `charat(chaine, pos)` | caractère à la position `pos` (chaîne vide si `pos` est hors limites) | `charat("ABCD", 1)` | `"B"` | |
| `asc(caractere)` | code ASCII du (premier) caractère | `asc("A")` | `65` | [11_asc](exemples/11_asc.algo) |
| `char(code)` | caractère dont le code ASCII est `code` | `char(65)` | `"A"` | [11_char](exemples/11_char.algo) |
| `tostring(nombre)` | nombre → chaîne (chapitre [06](06_lecture_ecriture.md)) | `tostring(1.618)` | `"1.618"` | [11_tostring](exemples/11_tostring.algo) |

Attention : le premier caractère a pour position 0.

---

## 3. Parcourir une chaîne

On traite une chaîne caractère par caractère avec une boucle `POUR` de `0` à `length(chaine) - 1` et `charat`. Pour obtenir le code ASCII du caractère situé à la position `pos` : `asc(charat(machaine, pos))`.

Exemple :

```
VARIABLES
  machaine EST_DU_TYPE CHAINE
  i EST_DU_TYPE NOMBRE
  code_ascii EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  machaine PREND_LA_VALEUR "ABCD"
  AFFICHER machaine ↵
  POUR i ALLANT_DE 0 A length(machaine) - 1
    DEBUT_POUR
    code_ascii PREND_LA_VALEUR asc(charat(machaine, i))
    AFFICHER code_ascii ↵
    FIN_POUR
  machaine PREND_LA_VALEUR "1234"
  AFFICHER machaine ↵
  POUR i ALLANT_DE 0 A length(machaine) - 1
    DEBUT_POUR
    code_ascii PREND_LA_VALEUR asc(charat(machaine, i))
    AFFICHER code_ascii ↵
    FIN_POUR
FIN_ALGORITHME
```

Affichage :

```
ABCD
65
66
67
68
1234
49
50
51
52
```

Fichier : [exemples/11_asc.algo](exemples/11_asc.algo)

---

## 4. Construire une chaîne

Une chaîne se construit comme un total : on part de la chaîne vide `""` et on lui **concatène** un morceau à chaque tour. Ici, `char` fabrique les lettres à partir de leur code ASCII :

```
VARIABLES
  alphabet EST_DU_TYPE CHAINE
  code_ascii EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  alphabet PREND_LA_VALEUR ""
  POUR code_ascii ALLANT_DE 65 A 90
    DEBUT_POUR
    alphabet PREND_LA_VALEUR alphabet + char(code_ascii)
    FIN_POUR
  AFFICHER alphabet ↵
FIN_ALGORITHME
```

Affichage :

```
ABCDEFGHIJKLMNOPQRSTUVWXYZ
```

Fichier : [exemples/11_char.algo](exemples/11_char.algo)

---

## 5. Tester et transformer un caractère

Les codes ASCII des lettres et des chiffres se suivent (table en fin de chapitre), ce qui permet :

| Besoin | Expression |
|--------|------------|
| `c` est une majuscule | `c >= "A" ET c <= "Z"` |
| `c` est une minuscule | `c >= "a" ET c <= "z"` |
| `c` est un chiffre | `c >= "0" ET c <= "9"` |
| minuscule de la majuscule `c` | `char(asc(c) + 32)` : `"a"` (97) = `"A"` (65) + 32 |
| valeur du chiffre `c` | `asc(c) - asc("0")` : `"7"` donne `7` |

Les lettres accentuées (`é`, `à`...) sont en dehors de ces plages.

---

## 6. Exemple récapitulatif

Décomposer un nombre saisi en caractères, avec leur position et leur code ASCII.

```
VARIABLES
  entier EST_DU_TYPE NOMBRE
  texte EST_DU_TYPE CHAINE
  pos EST_DU_TYPE NOMBRE
  caractere EST_DU_TYPE CHAINE
  code_ascii EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE entier
  texte PREND_LA_VALEUR tostring(entier)
  POUR pos ALLANT_DE 0 A length(texte) - 1
    DEBUT_POUR
    AFFICHER pos
    AFFICHER " : "
    caractere PREND_LA_VALEUR substr(texte, pos, 1)
    AFFICHER caractere
    AFFICHER " = "
    code_ascii PREND_LA_VALEUR asc(caractere)
    AFFICHER code_ascii ↵
    FIN_POUR
FIN_ALGORITHME
```

Affichage pour la saisie `2026` :

```
0 : 2 = 50
1 : 0 = 48
2 : 2 = 50
3 : 6 = 54
```

Fichier : [exemples/11_extract_chaine.algo](exemples/11_extract_chaine.algo)

---

## 7. Code ASCII

Code d'un caractère = en-tête de sa colonne + numéro de sa ligne : `A` vaut 60 + 5 = 65. L'espace a le code 32 (colonne 30, ligne 2).

```
  30 40 50 60 70 80 90 100 110 120
 ---------------------------------
0:    (  2  <  F  P  Z  d   n   x
1:    )  3  =  G  Q  [  e   o   y
2:    *  4  >  H  R  \  f   p   z
3: !  +  5  ?  I  S  ]  g   q   {
4: "  ,  6  @  J  T  ^  h   r   |
5: #  -  7  A  K  U  _  i   s   }
6: $  .  8  B  L  V  `  j   t   ~
7: %  /  9  C  M  W  a  k   u  DEL
8: &  0  :  D  N  X  b  l   v
9: '  1  ;  E  O  Y  c  m   w
```

---

## Exercices

Fiche [exercices/11_chaines.md](exercices/11_chaines.md) : compter caractères, voyelles, majuscules et minuscules, formater une date, convertir un texte en nombre, en URL, compter les lettres, vérifier un mot de passe.
