# Lecture et écriture

## 1. Lecture

Récupérer une valeur provenant de l'extérieur (clavier).

Instruction : **LIRE**

- pour un `NOMBRE`, la saisie est évaluée comme un calcul : on peut taper `3+4`
- pour une `CHAINE`, le texte est pris tel quel
- pour un `BOOLEEN`, uniquement `VRAI` ou `FAUX`

---

## 2. Écriture

Afficher une valeur à l'écran (la console).

Instruction : **AFFICHER**

- affiche un texte (`AFFICHER "Bonjour"`), la valeur d'une variable (`AFFICHER total`) ou le résultat d'un calcul (`AFFICHER 2*x+1`)
- le symbole **↵** en fin de ligne indique un retour à la ligne après l'affichage (case à cocher dans le bloc, cliquable dans l'arbre)

---

## 3. Exemple

```
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE a
  LIRE b
  AFFICHER "a + b = "
  AFFICHER a + b ↵
FIN_ALGORITHME
```

Fichier : [exemples/06_lecture_ecriture.algo](exemples/06_lecture_ecriture.algo)
