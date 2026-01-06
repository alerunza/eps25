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

# Sia X una variabile aleatoria Poisson di parametro 1.
# Calcolare:

# 1 la probabilità che "la variabile aleatoria X valga 5 oppure 3"
# 2 la P(X appartiene (0.5, 7])
# 3 la P(X appartiene {1,2,3,4} | X > 0)

# soluzione:

#1
# valga 5 oppure 3
dpois(5, 1) + dpois(3, 1)
round(dpois(5, 1) + dpois(3, 1), 4)
[1] 0.0082

#2
# da 0.5 a 7  equivale a P(X ≤ 7) - P(X ≤ 0.5)
ppois(7, 1) - ppois(0.5, 1)
round(ppois(7, 1) - ppois(0.5, 1), 4)
[1] 0.6321

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(dpois(1, 1) + dpois(2, 1) + dpois(3, 1) + dpois(4, 1)) / (1 - dpois(0, 1))
round((dpois(1, 1) + dpois(2, 1) + dpois(3, 1) + dpois(4, 1)) / (1 - dpois(0, 1)), 4)
[1] 0.9942

#Sia Y una variabile aleatoria di poisson di parametro 2.

# determinare:

# 1 P(Y = 1.5)
# 2 P(Y <= 2)
# 3 P(Y appartiente [5, 10]) NB: attenzione agli estremi

# soluzione:

#1
# nelle variabili aleatorie discrete non possono esserci probabilità puntuali
# quindi P(Y = k) = 0 per ogni k non intero
0

#2
ppois(2, 2)
round(ppois(2, 2), 4)
[1] 0.6767

# oppure
dpois(0, 2) + dpois(1, 2) + dpois(2, 2)
round(dpois(0, 2) + dpois(1, 2) + dpois(2, 2), 4)
[1] 0.6767

#3
# da 5 a 10  equivale a P(X ≤ 10) - P(X ≤ 4)
ppois(10, 2) - ppois(4, 2)
round(ppois(10, 2) - ppois(4, 2), 4)
[1] 0.0526