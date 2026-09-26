# Exercices 13 - Complexité cyclomatique

> Notions : chapitre [13](../13_complexite_cyclomatique.md), appliqué aux algorithmes des chapitres 07 à 10.

---

## Exercice 1 ★

Calculer la complexité cyclomatique de l'algorithme suivant :
```text
Lire n
Si n > 0 alors
   Pour i de 1 à n
      Afficher i
   Fin Pour
Sinon
   Afficher "Nombre négatif"
Fin Si
```

<details>
<summary>Solution</summary>

Décisions : `si` (1) + `pour` (1) = 2
**V(G) = 1 + 2 = 3**
</details>

---

## Exercice 2 ★

Calculer la complexité cyclomatique :
```text
Lire note
Si note ≥ 16 alors
   Afficher "Très bien"
Sinon Si note ≥ 14 alors
   Afficher "Bien"
Sinon Si note ≥ 12 alors
   Afficher "Assez bien"
Sinon Si note ≥ 10 alors
   Afficher "Passable"
Sinon
   Afficher "Insuffisant"
Fin Si
```

<details>
<summary>Solution</summary>

Décisions : 4 (`si`, `sinon si`, `sinon si`, `sinon si`)
**V(G) = 1 + 4 = 5**

5 chemins possibles, donc il faudra au minimum **5 cas de test**.
</details>

---

## Exercice 3 ★★

Calculer la complexité cyclomatique, puis donner un jeu de valeurs de test par chemin :
```text
Lire age
Lire permis
Si (age ≥ 18) ET (permis = vrai) alors
   Lire vitesse
   Si vitesse > 130 alors
      Afficher "Excès de vitesse"
   Sinon
      Afficher "Vitesse OK"
   Fin Si
Sinon
   Afficher "Non autorisé"
Fin Si
```

<details>
<summary>Solution</summary>

Décisions : `si` avec `ET` (2) + `si vitesse` (1) = 3
**V(G) = 1 + 3 = 4**

4 chemins possibles :
1. age < 18 (le `ET` s'arrête dès la première condition fausse) : "Non autorisé" — ex. age = 16
2. age ≥ 18 mais pas de permis : "Non autorisé" — ex. age = 20, permis = faux
3. Autorisé + vitesse > 130 : "Excès de vitesse" — ex. age = 20, permis = vrai, vitesse = 150
4. Autorisé + vitesse ≤ 130 : "Vitesse OK" — ex. age = 20, permis = vrai, vitesse = 110
</details>

---

## Exercice 4 - Complexité de vos solutions ★★

Calculer la complexité cyclomatique des solutions suivantes, puis vérifier avec AlgoFab (**Vérifier**, bloc Complexité) :

1. [07_temperature.algo](solutions/07_temperature.algo) (fiche 07, exercice 4)
2. [07_maintenance.algo](solutions/07_maintenance.algo) (fiche 07, exercice 5)
3. [08_moyenne_classe.algo](solutions/08_moyenne_classe.algo) (fiche 08, exercice 4)

<details>
<summary>Solution</summary>

1. Deux `SI` (2) + un `ET` (1) : **V(G) = 4**. Le `ET` est inutile : dans le `SINON`, `temperature >= 50` est déjà acquis ; sans lui, V(G) = 3.
2. Un `SI` avec deux `OU` : **V(G) = 4**. Le `OU` de l'affectation `condition3 PREND_LA_VALEUR production < 2000 OU production > 10000` ne compte pas : ce n'est pas la condition d'un `SI` ou d'une boucle.
3. `TANT_QUE` (1) + `SI` avec `ET` (2) + trois autres `SI` (3) : **V(G) = 7**.
</details>

---

## Exercice 5 - Simplifier par découpage ★★★

La solution [09_extremes.algo](solutions/09_extremes.algo) (fiche 09, exercice 4) a une complexité cyclomatique de 14. La découper en fonctions (chapitre 10) pour qu'aucune unité ne dépasse 5.

Solution : [solutions/13_extremes_fonctions.algo](solutions/13_extremes_fonctions.algo)

<details>
<summary>Solution</summary>

Cinq fonctions : `tableau_aleatoire` (V(G) = 2), `trier` (4), `afficher_plus_petites` (5), `afficher_plus_grandes` (5), `moyenne` (2) ; le programme principal n'a plus aucune décision (1). La complexité totale ne disparaît pas, mais chaque partie se lit et se teste séparément.
</details>
