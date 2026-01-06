#Sia X una variabile aleatoria distribuita come una Esponenziale di parametro 1.
# Determinare:

# 1 La probabilità che X sia minore di 1.5.

# 2 La probabilità che X sia maggiore di 3.

# 3 La probabilità che X sia maggiore di 3 sapendo che X è maggiore di 6.

# NB: può essere utile la funzione pexp()

# soluzione:

#1
pexp(1.5, 1)
round(pexp(1.5, 1), 4)
[1] 0.7769

#2
1 - pexp(3, 1)
round(1 - pexp(3, 1), 4)
[1] 0.0498

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)

(pexp(6, 1) - pexp(3, 1)) / pexp(6, 1)
round((pexp(6, 1) - pexp(3, 1)) / pexp(6, 1), 4)
[1] 0.0474

# Sia X una variabile aleatoria distribuita come una Normale di media 0 e varianza 4.
# Determinare:

# 1 La probabilità che X sia minore di 1.5

# 2 La probabilità che X sia maggiore di 3.

# 3 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6.

# Soluzione:

#1
pnorm(1.5, 0, sqrt(4))
round(pnorm(1.5, 0, sqrt(4)), 4)
[1] 0.7734

#2
1 - pnorm(3, 0, sqrt(4))
round(1 - pnorm(3, 0, sqrt(4)), 4)
[1] 0.0668

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(6, 0, sqrt(4)) - pnorm(3, 0, sqrt(4))) / pnorm(6, 0, sqrt(4))
round((pnorm(6, 0, sqrt(4)) - pnorm(3, 0, sqrt(4))) / pnorm(6, 0, sqrt(4)), 4)
[1] 0.0655