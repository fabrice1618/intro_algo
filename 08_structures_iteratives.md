# Structures itératives : les boucles

## 1. Usage

Les boucles permettent de **répéter une série d'instructions**. Il est possible d'**imbriquer** les boucles.

### Exemples d'utilisation

- Remplir un tableau
- Parcourir des champs de formulaires
- Itérer sur des milliers de lignes très rapidement
- Trier des listes

---

## 2. Deux types de boucles

- **Nombre d'itérations connu à l'avance**, géré par un compteur
  - ex : "Pour i=1 jusqu'à 3, enrouler film autour palette"
- **La boucle s'arrête quand une condition est remplie**, gérée par un booléen
  - ex : "Tant que le MDP <> MotDePasseSaisi, ressaisir"

---

## 3. POUR ... ALLANT_DE (boucle compteur)

### Syntaxe

```
POUR index ALLANT_DE valeur_debut A valeur_fin
  DEBUT_POUR
  Instructions
  FIN_POUR
```

- La variable compteur (`index`) doit être déclarée, de type `NOMBRE`.
- Le compteur part de `valeur_debut` et avance de 1 à chaque tour, tant qu'il est inférieur ou égal à `valeur_fin`.

### Exemple

```
VARIABLES
  jour EST_DU_TYPE NOMBRE
  production_jour EST_DU_TYPE LISTE
  total EST_DU_TYPE NOMBRE
  moyenne EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  POUR jour ALLANT_DE 0 A 6
    DEBUT_POUR
    AFFICHER "Jour "
    AFFICHER jour + 1 ↵
    LIRE production_jour[jour]
    FIN_POUR
  total PREND_LA_VALEUR 0
  POUR jour ALLANT_DE 0 A 6
    DEBUT_POUR
    total PREND_LA_VALEUR total + production_jour[jour]
    FIN_POUR
  moyenne PREND_LA_VALEUR total / 7
  AFFICHER "Moyenne : "
  AFFICHER moyenne ↵
FIN_ALGORITHME
```

Fichier : [exemples/08_pour_production.algo](exemples/08_pour_production.algo)

### Pas de la boucle : PAR_PAS_DE

Par défaut le compteur avance de 1. `PAR_PAS_DE` fixe un autre pas, éventuellement négatif pour un parcours décroissant. Un pas de `0` est une erreur (le compteur n'avancerait jamais).

```
VARIABLES
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  // de 0 à 10, de 2 en 2
  POUR i ALLANT_DE 0 A 10 PAR_PAS_DE 2
    DEBUT_POUR
    AFFICHER i
    AFFICHER " "
    FIN_POUR
  AFFICHER "" ↵
  // compte à rebours
  POUR i ALLANT_DE 5 A 1 PAR_PAS_DE -1
    DEBUT_POUR
    AFFICHER i
    AFFICHER " "
    FIN_POUR
  AFFICHER "Partez !" ↵
FIN_ALGORITHME
```

Fichier : [exemples/08_pour_pas.algo](exemples/08_pour_pas.algo)

---

## 4. TANT_QUE (boucle conditionnelle)

### Syntaxe

```
TANT_QUE (<expression booléenne>) FAIRE
  DEBUT_TANT_QUE
  Instructions
  FIN_TANT_QUE
```

La condition est testée **avant** chaque tour : si elle est fausse dès le départ, les instructions ne sont jamais exécutées. Les instructions doivent faire évoluer la condition, sinon la boucle est infinie (AlgoFab l'arrête après 500 000 tours).

### Exemple

```
VARIABLES
  mot_passe EST_DU_TYPE CHAINE
  essai_password EST_DU_TYPE CHAINE
  valide EST_DU_TYPE BOOLEEN
DEBUT_ALGORITHME
  valide PREND_LA_VALEUR FAUX
  mot_passe PREND_LA_VALEUR "SECRET"
  TANT_QUE (valide == FAUX) FAIRE
    DEBUT_TANT_QUE
    LIRE essai_password
    SI (essai_password == mot_passe) ALORS
      DEBUT_SI
      AFFICHER "OK" ↵
      valide PREND_LA_VALEUR VRAI
      FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER "Echec" ↵
      FIN_SINON
    FIN_TANT_QUE
FIN_ALGORITHME
```

Fichier : [exemples/08_tant_que_mot_de_passe.algo](exemples/08_tant_que_mot_de_passe.algo)

---

## 5. FAIRE ... TANT_QUE (au moins un tour)

### Syntaxe

```
FAIRE TANT_QUE (<expression booléenne>)
  DEBUT_FAIRE_TANT_QUE
  Instructions
  FIN_FAIRE_TANT_QUE
```

Les instructions sont exécutées **une première fois**, puis la condition est testée : tant qu'elle est vraie, on recommence. La boucle tourne donc **au moins une fois**, ce qui convient bien à une saisie contrôlée.

### Exemple

```
VARIABLES
  note EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  FAIRE TANT_QUE (note < 0 OU note > 20)
    DEBUT_FAIRE_TANT_QUE
    AFFICHER "Note entre 0 et 20 : "
    LIRE note
    FIN_FAIRE_TANT_QUE
  AFFICHER "Note enregistrée : "
  AFFICHER note ↵
FIN_ALGORITHME
```

Fichier : [exemples/08_faire_tant_que_saisie.algo](exemples/08_faire_tant_que_saisie.algo)
