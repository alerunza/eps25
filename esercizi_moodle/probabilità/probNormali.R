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