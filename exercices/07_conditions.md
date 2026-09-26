# Exercices 07 - Structures conditionnelles

> Notions : chapitres [05](../05_variables.md) à [07](../07_structures_conditionnelles.md) : variables, entrées-sorties, calculs, `SI`, `ET` / `OU` / `NON`.

---

## Exercice 1 - Pair ou impair ★

Faire saisir un nombre entier et afficher s'il est pair ou impair.

Indice : le reste de la division par 2.

Solution : [solutions/07_pair_impair.algo](solutions/07_pair_impair.algo)

---

## Exercice 2 - Comparaison de 2 nombres ★

Faire saisir 2 nombres différents et vérifier si l’un est strictement plus grand que l’autre

Solution : [solutions/07_comparaison.algo](solutions/07_comparaison.algo)

---

## Exercice 3 - Comparaisons ★★

Faire saisir 2 nombres et vérifier si: 
- Ils sont égaux
- Ils sont inférieurs à 10
- lequel est strictement plus grand que l’autre

Solution : [solutions/07_comparaisons.algo](solutions/07_comparaisons.algo)

---

## Exercice 4 - Température système ★★

Faire saisir 1 température et afficher l’état du système tel que:
- correct si < 50°C
- à surveiller si >=50°C et <100°C
- Arrêter système si >=100°C

Dessiner d'abord l'organigramme : trois cas, donc deux `SI` imbriqués (chapitre 07, section 4).

Solution : [solutions/07_temperature.algo](solutions/07_temperature.algo)

---

## Exercice 5 - Maintenance ★★

Une machine est en maintenance selon:
- si le nb de jours depuis la dernière date de maintenance >35
- si son nbre d’heures d’utilisation >3000
- sa production <2000 ou >10000 depuis la date de dernière maintenance

Quelles questions doit poser le programme? et comment va-t-il résoudre ce problème?

Indice : ranger chaque critère dans une variable `BOOLEEN`.

Solution : [solutions/07_maintenance.algo](solutions/07_maintenance.algo)
