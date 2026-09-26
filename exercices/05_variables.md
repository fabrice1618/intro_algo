# Exercices 05 - Variables et affectation

> Notions : chapitre [05](../05_variables.md). Difficulté : ★ application directe, ★★ plusieurs notions à combiner, ★★★ recherche.

Trouver les valeurs des variables au cours et à la fin de l'exécution, en dressant le **tableau de trace** (chapitre 05). Pour vérifier : ouvrir le fichier dans AlgoFab et l'exécuter pas à pas.

---

## Exercice 1 ★

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

Fichier : [solutions/05_trace_1.algo](solutions/05_trace_1.algo)

---

## Exercice 2 ★

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

Fichier : [solutions/05_trace_2.algo](solutions/05_trace_2.algo)

---

## Exercice 3 ★

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

Fichier : [solutions/05_trace_3.algo](solutions/05_trace_3.algo)

---

## Exercice 4 ★★

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

Fichier : [solutions/05_trace_4.algo](solutions/05_trace_4.algo)

---

## Exercice 5 ★★

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

Fichier : [solutions/05_trace_5.algo](solutions/05_trace_5.algo)

---

## Exercice 6 ★★

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

Fichier : [solutions/05_trace_6.algo](solutions/05_trace_6.algo)

---

<details>
<summary>Solutions : valeurs finales</summary>

| Exercice | a | b | c | Remarque |
|----------|---|---|---|----------|
| 1 | 8 | 9 | | `b` garde la valeur calculée avec l'ancien `a` |
| 2 | 3 | 6 | 3 | |
| 3 | 4 | 0 | | |
| 4 | 4 | 4 | | échange raté : la valeur 6 est perdue |
| 5 | 4 | 6 | 6 | échange réussi grâce à la variable `c` |
| 6 | 3 | 5 | 8 | échange réussi, `c` contient la somme |
</details>
