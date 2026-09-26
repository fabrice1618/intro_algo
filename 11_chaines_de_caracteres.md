# Chaînes de caractères

## 1 - Opérations avec les chaînes

### Concaténation

Il est possible de concaténer des chaînes avec l'opérateur `+` (ou la fonction `concat(a, b, ...)`).

Exemple :

```
VARIABLES
  resultat EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  resultat PREND_LA_VALEUR "Bonjour, "
  resultat PREND_LA_VALEUR resultat + "tout le monde !"
  AFFICHER resultat ↵
FIN_ALGORITHME
```

Affichage :

```
Bonjour, tout le monde !
```

Fichier : [exemples/11_concatenation.algo](exemples/11_concatenation.algo)

> Attention : `+` entre une chaîne et un nombre fait une concaténation (`"a" + 1` donne `"a1"`). Pour additionner des nombres saisis sous forme de texte, il faut d'abord les convertir avec `int()` ou `float()`.

### substr

Il est possible d'extraire une portion d'une chaîne avec la fonction :

```
substr(chaine, position_premier_caractère_à_extraire, nombre_de_caractères_à_extraire)
```

Si le nombre de caractères est omis (`substr(chaine, debut)`), l'extraction va jusqu'à la fin de la chaîne.

Attention : le premier caractère a pour position 0.

Exemple :

```
VARIABLES
  a EST_DU_TYPE CHAINE
  b EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR "Programmation"
  b PREND_LA_VALEUR substr(a, 3, 4)
  AFFICHER b ↵
FIN_ALGORITHME
```

Affichage :

```
gram
```

Fichier : [exemples/11_substr.algo](exemples/11_substr.algo)

### tostring

Un nombre peut être transformé en chaîne avec la fonction `tostring(nombre)`.

Inversement, `int(chaine)` et `float(chaine)` transforment une chaîne en nombre : `int("153")` vaut `153`.

Exemple :

```
VARIABLES
  entier EST_DU_TYPE NOMBRE
  phi EST_DU_TYPE NOMBRE
  entier_chaine EST_DU_TYPE CHAINE
  phi_chaine EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  entier PREND_LA_VALEUR 42
  entier_chaine PREND_LA_VALEUR tostring(entier)
  AFFICHER entier_chaine ↵
  phi PREND_LA_VALEUR 1.618
  phi_chaine PREND_LA_VALEUR tostring(phi)
  AFFICHER phi_chaine ↵
FIN_ALGORITHME
```

Affichage :

```
42
1.618
```

Fichier : [exemples/11_tostring.algo](exemples/11_tostring.algo)

### length

La longueur d'une chaîne peut être obtenue avec la fonction `length(chaine)`.

Exemple :

```
VARIABLES
  machaine EST_DU_TYPE CHAINE
  longueur EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  machaine PREND_LA_VALEUR "Algorithmie"
  longueur PREND_LA_VALEUR length(machaine)
  AFFICHER longueur ↵
FIN_ALGORITHME
```

Affichage :

```
11
```

Fichier : [exemples/11_length.algo](exemples/11_length.algo)

### charat et asc

La fonction `charat(machaine, pos)` renvoie le caractère situé à la position `pos` dans la chaîne `machaine` (une chaîne vide si `pos` est hors limites).

La fonction `asc(caractere)` renvoie le code ASCII du (premier) caractère. Pour obtenir le code ASCII du caractère situé à la position `pos` : `asc(charat(machaine, pos))`.

Attention : le premier caractère a pour position 0.

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

### char

Inversement, la fonction `char(nombre)` renvoie une chaîne contenant le caractère dont le code ASCII est égal à nombre.

Exemple :

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

### Exemple récapitulatif

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

## 2 - Code ASCII

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
