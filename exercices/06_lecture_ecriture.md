# Exercices 06 - Lecture, calculs et écriture

> Notions : chapitres [05](../05_variables.md) et [06](../06_lecture_ecriture.md) : variables, `LIRE`, `AFFICHER`, opérateurs, fonctions intégrées, conversions.

---

## Exercice 1 - Conversions ★

Trouver la valeur affichée par chacun des deux algorithmes, puis vérifier dans AlgoFab.

Pour ajouter a et b qui sont de type différents, il faut convertir la chaîne a en nombre.

```
VARIABLES
  a EST_DU_TYPE CHAINE
  b EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR "100"
  b PREND_LA_VALEUR 200
  // Convertir la CHAINE a en NOMBRE
  b PREND_LA_VALEUR int(a) + b
  AFFICHER b ↵
FIN_ALGORITHME
```

Fichier : [solutions/06_conversion_1.algo](solutions/06_conversion_1.algo)

Concaténer des variables de type différents.

```
VARIABLES
  jour EST_DU_TYPE NOMBRE
  mois EST_DU_TYPE CHAINE
  fete_nationale EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  jour PREND_LA_VALEUR 14
  mois PREND_LA_VALEUR "Juillet"
  // Concaténer les parties du message
  fete_nationale PREND_LA_VALEUR tostring(jour) + " " + mois
  AFFICHER fete_nationale ↵
FIN_ALGORITHME
```

Fichier : [solutions/06_conversion_2.algo](solutions/06_conversion_2.algo)

<details>
<summary>Solution</summary>

`300` (et non `"100200"` : `int(a)` est un nombre), puis `14 Juillet`.
</details>

---

## Exercice 2 - Carré ★

Programme qui demande un nombre puis affiche le carré de ce nombre sous la forme: le carré de ce nombre est ...

Solution : [solutions/06_carre.algo](solutions/06_carre.algo)

---

## Exercice 3 - POS ★

Programme de caisse qui affiche le montant à payer, le montant reçu et le reste à rendre

Solution : [solutions/06_caisse.algo](solutions/06_caisse.algo)

---

## Exercice 4 - Échange ★★

Écrire l’algorithme qui permet d’échanger les valeurs de 2 entiers a et b

Indice : exercices 4 et 5 de la [fiche 05](05_variables.md).

Solution : [solutions/06_echange.algo](solutions/06_echange.algo)

---

## Exercice 5 - Permutation circulaire ★★

Écrire l’algorithme qui permet d’échanger les valeurs de 3 entiers a, b et c :
 ( b à a, c à b et a à c )

Solution : [solutions/06_permutation.algo](solutions/06_permutation.algo)

---

## Exercice 6 - Conversion de durée ★★

Demander une durée en secondes et l'afficher en heures, minutes et secondes.

Exemple : `3725` secondes donnent `1 h 2 min 5 s`.

Indice : le quotient `int(a / b)` et le reste `a % b` d'une division entière.

Solution : [solutions/06_duree.algo](solutions/06_duree.algo)
