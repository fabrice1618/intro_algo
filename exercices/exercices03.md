# Exercices 03 - chaines de caractères

## Opérations avec les chaînes

### concaténation

Il est possible de concaténer des chaînes : a et b étant des variables du type CHAINE

```
b PREND_LA_VALEUR a + "bonjour"
```

### substr

Il est possible d'extraire le contenu d'une chaîne avec la fonction :

```
substr(chaîne, position_premier_caractère_à_extraire, nombre_de_caractères_à_extraire)
```

Attention : la premier caractère a pour position 0 (et pas 1)

Exemple : b PREND_LA_VALEUR substr(a, 4, 2) (b sera alors formé des 5ème et 6ème caractères de a ; a et b étant des variables du type CHAINE)

### tostring

Un nombre peut-être transformé en chaîne avec la fonction tostring(nombre)
Exemple : machaine PREND_LA_VALEUR tostring(nb) (nb étant une variable du type NOMBRE et machaine étant une variable du type CHAINE)

### length

La longueur d'une chaine peut-être obtenue avec la fonction length(chaine)
Exemple : longueur PREND_LA_VALEUR length(machaine) (longueur étant une variable du type NOMBRE et machaine étant une variable du type CHAINE)

### charat

La fonction charat(machaine, pos) renvoie le caractère figurant à la position pos dans la chaine machaine.

Attention : le premier caractère a pour position 0.

### asc

La fonction asc(caractere) renvoie le nombre égal au code ASCII du caractère. Le code ASCII de la lettre figurant à la position pos dans la chaine machaine s'obtient avec asc(charat(machaine, pos)).

### char

Inversement, la fonction char(nombre) renvoie une chaine contenant le caractère dont le code ascii est égal à nombre.

Voir le chapitre [11 - Chaînes de caractères](../11_chaines_de_caracteres.md) pour des exemples complets.


## Exercice 1:

Demander une phrase à l'utilisateur et compter le nombres de majuscules, de minuscules, et de voyelles.

## Exercice 2: convertir en URL

Demander une phrase à l'utilisateur et la convertir:
- toutes les lettres en minuscules
- tous les chiffres non modifiés
- tous les autres symboles remplacés par "_"
- un seul "_" de suite
  
## Exercice 3: compter le nombre d'occurences de chaque lettres
Compter le nombre de chacunes des lettres saisies. indice: utiliser un tableau(liste)

exemple: abracadabra

résultat: 5a2b1c1d2r

## Exercice 4: atoi

Convertir un nombre saisi sous forme de chaine en valeur numérique:
exemple: "153" -> nombre 153

## Exercice 5: vérification mot de passe

Demander à l'utilisateur un mot de passe, le mot de passe est valide si:

- il contient au moins 2 majuscules
- il contient au moins 2 minuscules
- il contient au moins un chiffre
- il contient au moins un symbole parmi "+-*/"
- il est plus long que 8 caractères
- et tous les caractères sont autorisés


