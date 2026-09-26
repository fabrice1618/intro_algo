# Exercices 01 - Variables et affectation

Trouver les valeurs des variables au cours et à la fin de l'exécution.

---

## Exercice 1

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 4
  b PREND_LA_VALEUR a + 5
  a PREND_LA_VALEUR 8
FIN_ALGORITHME
```

Fichier : [exo_affectation01.algo](exo_affectation01.algo)

---

## Exercice 2

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  c EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 2
  b PREND_LA_VALEUR 6
  c PREND_LA_VALEUR a + b
  a PREND_LA_VALEUR 3
  c PREND_LA_VALEUR b - a
FIN_ALGORITHME
```

Fichier : [exo_affectation02.algo](exo_affectation02.algo)

---

## Exercice 3

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 1
  b PREND_LA_VALEUR a + 3
  a PREND_LA_VALEUR a + 3
  b PREND_LA_VALEUR 4 - a
FIN_ALGORITHME
```

Fichier : [exo_affectation03.algo](exo_affectation03.algo)

---

## Exercice 4

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 6
  b PREND_LA_VALEUR 4
  a PREND_LA_VALEUR b
  b PREND_LA_VALEUR a
FIN_ALGORITHME
```

Fichier : [exo_affectation04.algo](exo_affectation04.algo)

---

## Exercice 5

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  c EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 6
  b PREND_LA_VALEUR 4
  c PREND_LA_VALEUR a
  a PREND_LA_VALEUR b
  b PREND_LA_VALEUR c
FIN_ALGORITHME
```

---

## Exercice 6

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  c EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  a PREND_LA_VALEUR 5
  b PREND_LA_VALEUR 3
  c PREND_LA_VALEUR a + b
  a PREND_LA_VALEUR c - a
  b PREND_LA_VALEUR c - b
FIN_ALGORITHME
```

---

## Exercice 7

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

Fichier : [exo_affectation07.algo](exo_affectation07.algo)

---

## Exercice 8

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

Fichier : [exo_affectation08.algo](exo_affectation08.algo)
