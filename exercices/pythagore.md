# Recherche des triangles de Pythagore

Un triangle rectangle est appelé **triangle de Pythagore** lorsque les longueurs de ses trois côtés $ a $, $ b $ et $ c $ (avec $ c $ l’hypoténuse) sont des **nombres entiers positifs** vérifiant la relation :

$$
a^2 + b^2 = c^2
$$

### Travail demandé

Écrire un algorithme permettant de :

1. Rechercher tous les triangles de Pythagore
2. Dont les côtés sont des entiers positifs
3. Tels que :

$$
1 \leq a < b < c < 100
$$

4. Afficher chaque triplet $ (a, b, c) $ trouvé.

---

### Contraintes

- Les trois côtés doivent être strictement inférieurs à 100.
- Les valeurs doivent être affichées sans répétition.
- On suppose que les longueurs sont des nombres entiers.

---

### Exemple

Le triplet suivant est un triangle de Pythagore :

$$
3^2 + 4^2 = 5^2
$$

Car :

$$
9 + 16 = 25
$$

Donc $ (3, 4, 5) $ est une solution.

---

*Indication :* On pourra utiliser des boucles imbriquées ou exploiter le calcul de la racine carrée.