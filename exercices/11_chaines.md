# Exercices 11 - Chaînes de caractères

> Notions : chapitres [05](../05_variables.md) à [11](../11_chaines_de_caracteres.md). Fonctions sur les chaînes : chapitre 11, section 2 ; tests sur les caractères : section 5.

---

## Exercice 1 - Compter les caractères ★

Compter le nombre de caractères d’une phrase sans les espaces

Solution : [solutions/11_compter_caracteres.algo](solutions/11_compter_caracteres.algo)

---

## Exercice 2 - Compter les voyelles ★★

Compter le nombre de voyelles d’une phrase

Indice : une constante `VOYELLES` qui contient `"AEIOUYaeiouy"` et une fonction `est_voyelle(caractere) → BOOLEEN`.

Solution : [solutions/11_compter_voyelles.algo](solutions/11_compter_voyelles.algo)

---

## Exercice 3 - Majuscules, minuscules et voyelles ★★

Demander une phrase à l'utilisateur et compter le nombre de majuscules, de minuscules, et de voyelles.

Solution : [solutions/11_lettres.algo](solutions/11_lettres.algo)

---

## Exercice 4 - Formatage de date ★★

on souhaite inviter l’utilisateur à saisir une date au format jjmmaa mais il faudra l’afficher au format classique jj/mm/aaaa

Une année `aa` de 00 à 30 correspond à 2000-2030, de 31 à 99 à 1931-1999.

Solution : [solutions/11_format_date.algo](solutions/11_format_date.algo)

---

## Exercice 5 - atoi ★★

Convertir un nombre saisi sous forme de chaine en valeur numérique, sans utiliser `int()` :
exemple: "153" -> nombre 153

Indice : `153 = (1 × 10 + 5) × 10 + 3`.

Solution : [solutions/11_atoi.algo](solutions/11_atoi.algo)

---

## Exercice 6 - Convertir en URL ★★★

Demander une phrase à l'utilisateur et la convertir:
- toutes les lettres en minuscules
- tous les chiffres non modifiés
- tous les autres symboles remplacés par "_"
- un seul "_" de suite

Les lettres accentuées sont traitées comme des symboles.

Solution : [solutions/11_url.algo](solutions/11_url.algo)

---

## Exercice 7 - Compter le nombre d'occurrences de chaque lettre ★★★

Compter le nombre de chacune des lettres saisies. indice: utiliser un tableau (liste)

exemple: abracadabra

résultat: 5a2b1c1d2r

Solution : [solutions/11_occurrences.algo](solutions/11_occurrences.algo)

---

## Exercice 8 - Vérification mot de passe ★★★

Demander à l'utilisateur un mot de passe, le mot de passe est valide si:

- il contient au moins 2 majuscules
- il contient au moins 2 minuscules
- il contient au moins un chiffre
- il contient au moins un symbole parmi "+-*/"
- il est plus long que 8 caractères
- et tous les caractères sont autorisés

Solution : [solutions/11_mot_de_passe.algo](solutions/11_mot_de_passe.algo)

