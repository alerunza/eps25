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

# Sia X una variabile aleatoria distribuita come una Normale di media 2 e varianza 1.
# Determinare:

# 1 la P (X > 1.9)
# 2 P(X ≤ 2.5)+P(X > 3)-P(X < 2.5)
# 3 La probabilità che X sia maggiore di 1.7 sapendo che X è minore di 3.5

# soluzione:

#1
1 - pnorm(1.9, 2, 1)
round(1 - pnorm(1.9, 2, 1), 4)
[1] 0.5398

#2
pnorm(2.5, 2, 1) + (1 - pnorm(3, 2, 1)) - pnorm(2.5, 2, 1)
round(pnorm(2.5, 2, 1) + (1 - pnorm(3, 2, 1)) - pnorm(2.5, 2, 1), 4)
[1] 0.1587

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(3.5, 2, 1) - pnorm(1.7, 2, 1)) / pnorm(3.5, 2, 1)
round((pnorm(3.5, 2, 1) - pnorm(1.7, 2, 1)) / pnorm(3.5, 2, 1), 4)
[1] 0.5906


# Sia Y una variabile aleatoria Normale standard e sia X = Y + 2.
# Determinare:

# 1 il valore atteso di X
# 2 Ph({X <= 2.5} U {X > 3})
# 3 La probabilità che X sia maggiore di 1.7 sapendo che X è minore di 0.

# soluzione:

#1
2 + 0 # E(X) = E(Y) + 2  e E(Y) = 0 per variabile normale standard
[1] 2

#2
pnorm(2.5, 0, 1) + (1 - pnorm(3 - 2, 0, 1))
round(pnorm(2.5, 0, 1) + (1 - pnorm(3 - 2, 0, 1)) - pnorm(2.5 - 2, 0, 1), 4)
[1] 0.1587

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(1 - pnorm(1.7, 2, 1)) / (1 - pnorm(1, 2, 1))
round((1 - pnorm(1.7, 2, 1)) / (1 - pnorm(1, 2, 1)), 4)
[1] 0.7344

# Sia Y una variabile aleatoria Normale standard e sia X = 2Y.
# Determinare:

# 1 il valore atteso di X
# 2 P({X <= 2.5} U {X > 3})
# 3 La probabilità che X sia maggiore di 1.7 sapendo che X è minore di 1.

# soluzione:

#1
2 * 0 # E(X) = E(2Y) = 2E(Y)  e E(Y) = 0 per variabile normale standard
[1] 0

#2
# Y ~ N(0,1) ⇒ Var(Y) = 1
# X = 2Y
# Moltiplicare una variabile per 2 moltiplica la VARIANZA per 2^2
# quindi Var(X) = 2^2 * Var(Y) = 4
# la media resta 0 perché 2 * 0 = 0
pnorm(2.5, 0, 2) + (1 - pnorm(3, 0, 2))
round(pnorm(2.5, 0, 2) + (1 - pnorm(3, 0, 2)), 4)
[1] 0.9612

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(1 - pnorm(1.7 / 2, 0, 1)) / (1 - pnorm(1 / 2, 0, 1))
round((1 - pnorm(1.7 / 2, 0, 1)) / (1 - pnorm(1 / 2, 0, 1)), 4)
[1] 0.6406

# Sia X una variabile aleatoria distribuita come una Normale di media 0 e varianza 4.
# Determinare:

# 1 la probabilità che X sia minore di 1.5
# 2 la probabilità che X sia maggiore di 3.
# 3 la probabilità che X sia maggiore di 3 sapendo che X è minore di 6.

# soluzione:

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

# Sia Y una variabile aleatoria normale, di media 3 e di varianza 4.
# Sia X = Y - 3.

# Determinare:

# 1 il valore atteso di X
# 2 P({X <= 1.2} U {X > 2})
# 3 La probabilità che X sia più grande di 1.7 sapendo che X è più grande di 1.

# soluzione:

#1
3 - 3 # E(X) = E(Y - 3) = E(Y)
[1] 0

#2
pnorm(1.2, 0, 2) + (1 - pnorm(2, 0, 2))
round(pnorm(1.2, 0, 2) + (1 - pnorm(2, 0, 2)), 4)
[1] 0.6826

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(1 - pnorm(1.7, 0, 2)) / (1 - pnorm(1, 0, 2))
round((1 - pnorm(1.7, 0, 2)) / (1 - pnorm(1, 0, 2)), 4)
[1] 0.5675

