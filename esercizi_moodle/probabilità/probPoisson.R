# Sia X una variabile aleatoria Poisson(10) (cioè con parametro λ = 10).
# Calcolare:

# 1 la probabilità che "la variabile aleatoria valga 2 oppure assuma un valore nell'insieme {7, 8, 9}"
# 2 la P (X ≥ 5)
# 3 la P (X ≤ 3 | X != 0)

#NB: può essere utile la funzione ppois()

# soluzione:

#1
dpois(2, 10) + dpois(7, 10) + dpois(8, 10) + dpois(9, 10)
round(dpois(2, 10) + dpois(7, 10) + dpois(8, 10) + dpois(9, 10), 4)
[1] 0.3301

#2
1 - ppois(4, 10)
round(1 - ppois(4, 10), 4)
[1] 0.9707

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(ppois(3, 10) - dpois(0, 10)) / (1 - dpois(0, 10))
round((ppois(3, 10) - dpois(0, 10)) / (1 - dpois(0, 10)), 4)
[1] 0.0103