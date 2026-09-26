# Introduction à l'algorithmie

Apprendre à réaliser un algorithme, ou comment résoudre un problème en structurant la mise en oeuvre d'une solution.

Le cours part d'exemples de la vie courante, introduit le vocabulaire et le pseudo-code, puis met en pratique chaque notion (variables, conditions, boucles, tableaux, fonctions, chaînes de caractères) avec **AlgoFab**.

---

## AlgoFab

[AlgoFab](https://algofab.mips.science) est une application web d'écriture et d'exécution d'algorithmes en français, sous forme d'**arbre de blocs** (`VARIABLES`, `SI ... ALORS`, `POUR ... ALLANT_DE`, `TANT_QUE`...). Rien à installer : un navigateur suffit, et l'application fonctionne aussi hors ligne.

Le travail se fait en trois étapes :

1. **Coder** : construire l'algorithme en insérant des blocs
2. **Vérifier** : l'application repère les erreurs avant l'exécution (variable non déclarée, variable utilisée sans valeur, type incorrect...) et explique comment les corriger
3. **Exécuter** : la console affiche le résultat ; l'exécution pas à pas permet de suivre l'évolution des variables

Les exemples et les solutions du cours sont des fichiers `.algo` : dans AlgoFab, menu **Algorithmes → Ouvrir algo**. La référence complète du langage est accessible par le bouton **Aide** de l'application.

---

## Plan du cours

| Chapitre | Contenu |
|----------|---------|
| [01 - Introduction à l'algorithmie](01_introduction_algorithmie.md) | Objectifs, exemple concret, généralisation, complexité |
| [02 - Quelques définitions](02_definitions_vocabulaire.md) | Lexique informatique, vocabulaire du développeur, modes d'exécution |
| [03 - Le pseudo code](03_pseudo_code.md) | Conventions, opérateurs, exemple |
| [04 - L'algorithme](04_algorithme_methodologie.md) | Analyse descendante, structures, syntaxe globale AlgoFab |
| [05 - Les variables](05_variables.md) | Déclaration, types (NOMBRE, CHAINE, BOOLEEN, LISTE), affectation, constantes |
| [06 - Lecture et écriture](06_lecture_ecriture.md) | LIRE, AFFICHER |
| [07 - Structures conditionnelles](07_structures_conditionnelles.md) | SI / ALORS / SINON, comparaisons, ET / OU / NON, TERMINER / ERREUR |
| [08 - Structures itératives](08_structures_iteratives.md) | POUR, PAR_PAS_DE, TANT_QUE, FAIRE ... TANT_QUE |
| [09 - Les tableaux](09_tableaux.md) | LISTE, indices, remplissage, parcours, tableau à 2 dimensions |
| [10 - Les fonctions](10_fonctions.md) | Fonctions intégrées, fonctions utilisateur |
| [11 - Chaînes de caractères](11_chaines_de_caracteres.md) | Concaténation, substr, tostring, length, charat, asc, char, table ASCII |
| [12 - Complexité algorithmique](12_complexite_algorithmique.md) | Notation grand O, meilleur / pire cas, complexité spatiale |
| [13 - Complexité cyclomatique](13_complexite_cyclomatique.md) | Calcul, interprétation, réduction, lien avec les tests |

---

## Exemples

Le dossier [exemples](exemples/) contient les algorithmes présentés dans le cours, préfixés par le numéro du chapitre :

| Chapitre | Fichiers |
|----------|----------|
| 04 | [04_tension.algo](exemples/04_tension.algo) |
| 05 | [05_variables.algo](exemples/05_variables.algo) |
| 06 | [06_lecture_ecriture.algo](exemples/06_lecture_ecriture.algo) |
| 07 | [07_si_sinon.algo](exemples/07_si_sinon.algo), [07_comparaison_chaines.algo](exemples/07_comparaison_chaines.algo), [07_conditions_composees.algo](exemples/07_conditions_composees.algo), [07_terminer_erreur.algo](exemples/07_terminer_erreur.algo) |
| 08 | [08_pour_production.algo](exemples/08_pour_production.algo), [08_pour_pas.algo](exemples/08_pour_pas.algo), [08_tant_que_mot_de_passe.algo](exemples/08_tant_que_mot_de_passe.algo), [08_faire_tant_que_saisie.algo](exemples/08_faire_tant_que_saisie.algo) |
| 09 | [09_tableau_moyenne.algo](exemples/09_tableau_moyenne.algo) |
| 10 | [10_fonctions_utilisateur.algo](exemples/10_fonctions_utilisateur.algo) |
| 11 | [11_concatenation.algo](exemples/11_concatenation.algo), [11_substr.algo](exemples/11_substr.algo), [11_tostring.algo](exemples/11_tostring.algo), [11_length.algo](exemples/11_length.algo), [11_asc.algo](exemples/11_asc.algo), [11_char.algo](exemples/11_char.algo), [11_extract_chaine.algo](exemples/11_extract_chaine.algo) |

---

## Exercices

Le dossier [exercices](exercices/) contient les énoncés et les solutions `.algo` : voir [exercices/README.md](exercices/README.md).
