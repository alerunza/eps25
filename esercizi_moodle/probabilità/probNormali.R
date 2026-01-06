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

# Sia X una variabile aleatoria distribuita come una Normale di media 1 e varianza 1
# Determinare:

# 1 la P({X = 0} U {X = 1})
# 2 P(X ≤ 2.5)+P(X ≥ 3)-P(X < 2.5)
# 3 La probabilità che X sia minore di 0.5 sapendo che X è maggiore di 6.

# soluzione:
#1
# per variabile continua P(X = k) = 0
0
round(0, 4)
[1] 0

#2
pnorm(2.5, 1, 1) + (1 - pnorm(3, 1, 1)) - pnorm(2.5, 1, 1)
round(pnorm(2.5, 1, 1) + (1 - pnorm(3, 1, 1)) - pnorm(2.5, 1, 1), 4)
[1] 0.0228

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(6, 1, 1) - pnorm(0.5, 1, 1)) / pnorm(6, 1, 1)
round((pnorm(6, 1, 1) - pnorm(0.5, 1, 1)) / pnorm(6, 1, 1), 4)
[1] 0.6915


# Sia X una variabile aleatoria distribuita come una Normale di media 2 e varianza 4.
# Determinare:

# 1 la P({X = 0} U {X = 1})
# 2 P(X ≤ 2.5)+P(X ≥ 3)-P(X < 2.5)
# 3 La probabilità che X sia maggiore di 1.7 sapendo che X è minore di 6.

# soluzione:
#1
# per variabile continua P(X = k) = 0
0

#2
pnorm(2.5, 2, sqrt(4)) + (1 - pnorm(3, 2, sqrt(4))) - pnorm(2.5, 2, sqrt(4))
round(pnorm(2.5, 2, sqrt(4)) + (1 - pnorm(3, 2, sqrt(4))) - pnorm(2.5, 2, sqrt(4)), 4)
[1] 0.3085

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(6, 2, sqrt(4)) - pnorm(1.7, 2, sqrt(4))) / pnorm(6, 2, sqrt(4))
round((pnorm(6, 2, sqrt(4)) - pnorm(1.7, 2, sqrt(4))) / pnorm(6, 2, sqrt(4)), 4)
[1] 0.5494