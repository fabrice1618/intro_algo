# Exercices 03 - Pseudo code et organigramme

> Notions : chapitres [01](../01_introduction_algorithmie.md) à [03](../03_pseudo_code.md). Ces exercices se font sur papier, sans AlgoFab.

---

## Exercice 1 - Remettre dans l'ordre ★

Les étapes de l'algorithme « Préparer un café avec une cafetière à filtre » ont été mélangées. Les remettre dans l'ordre, puis indiquer quelle étape pourrait être répétée et quelle étape dépend d'une condition.

- Verser l'eau dans le réservoir
- Allumer la cafetière
- Mettre un filtre dans le porte-filtre
- Attendre la fin de l'écoulement
- Mettre le café moulu dans le filtre
- Servir
- Remplir la verseuse d'eau

<details>
<summary>Solution</summary>

1. Mettre un filtre dans le porte-filtre
2. Mettre le café moulu dans le filtre
3. Remplir la verseuse d'eau
4. Verser l'eau dans le réservoir
5. Allumer la cafetière
6. Attendre la fin de l'écoulement
7. Servir

Les étapes 1 à 4 peuvent s'échanger en partie (filtre et eau sont indépendants) : un algorithme n'a pas toujours un ordre unique. « Mettre le café moulu » peut être répété (une mesure par tasse) ; « Attendre » est une boucle qui dépend d'une condition (tant que l'eau coule).
</details>

---

## Exercice 2 - Pseudo code ★★

Écrire en pseudo code l'algorithme « Traverser la rue à un passage piéton avec feu », en utilisant au moins une condition (**Si**) et une répétition (**Tant que**).

---

## Exercice 3 - Organigramme ★★

Dessiner l'organigramme de l'exercice 2 avec les formes normalisées du chapitre 03 (ovale, rectangle, parallélogramme, losange). Vérifier que chaque losange a bien deux sorties (oui / non) et que chaque boucle revient à un losange.
