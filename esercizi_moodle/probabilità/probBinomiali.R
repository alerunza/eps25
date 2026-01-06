#Sia X una variabile aleatoria Binomiale(4, 0.3). (cioè con numero di prove pari a 4 
#e probabilità di successo nella singola prova pari a 0.3).
# Calcolare:

# 1  Il valore atteso E X

# 2  P(X ≤ 3)

# 3 P(X ≤ 3 | X != 0)

# soluzione:

#1
4 * 0.3 # --> valore atteso (media) di una binomiale è n*p
[1] 1.2

#2
pbinom(3, 4, 0.3)
round(pbinom(3, 4, 0.3), 4)
[1] 0.9919

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)

#dbinom -> = P(X = k) o P(X != k) per variabile binomiale 
(pbinom(3, 4, 0.3) - dbinom(0, 4, 0.3)) / (1 - dbinom(0, 4, 0.3))
round((pbinom(3, 4, 0.3) - dbinom(0, 4, 0.3)) / (1 - dbinom(0, 4, 0.3)), 4)
[1] 0.9893