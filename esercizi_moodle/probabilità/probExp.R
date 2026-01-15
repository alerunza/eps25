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

# Sia X una variabile aleatoria distribuita come una Esponenziale di parametro 2.
# Determinare:

# 1 La probabilità che X sia minore di 1.5 oopure maggiore di 3.
# 2 La probabilità che X sia maggiore di 3.
# 3 La probabilità che "X appartenga all'intervallo (1,6) e sia maggiore di 3"  

#NB : può essere utile la funzione pexp()

# soluzione:

#1
pexp(1.5, 2) + (1 - pexp(3, 2))
round(pexp(1.5, 2) + (1 - pexp(3, 2)), 4)
[1] 0.9527

#2
1 - pexp(3, 2)
round(1 - pexp(3, 2), 4)
[1] 0.0025

#3 probabilità congiunta P(A ∩ B) = P(B) dato che B è sottoinsieme di A
(pexp(6, 2) - pexp(3, 2))
round((pexp(6, 2) - pexp(3, 2)), 4)
[1] 0.0025

# Sia Y una variabile aleatoria distribuita come una Esponenziale di paametro 0.5 e sia X = Y - 1.
# Determinare:

# 1 la P({X = 0} U {X = 1})
# 2 P(X apptiene (0,3))
# 3 La probabilità che Y (AttENZIONE, qui è Y) sia maggiore di 1.7 sapendo che Y è minore di 6.

# soluzione:
#1
# per variabile continua P(X = k) = 0
0

#2
# 4 è il valore di Y corrispondente a X = 3 (cioè Y - 1 = 3  => Y = 4)
# e 1 è il valore di Y corrispondente a X = 0 (cioè Y - 1 = 0  => Y = 1)
pexp(4, 0.5) - pexp(1, 0.5)
round(pexp(4, 0.5) - pexp(1, 0.5), 4)
[1] 0.4712

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pexp(6, 0.5) - pexp(1.7, 0.5)) / pexp(6, 0.5)
round((pexp(6, 0.5) - pexp(1.7, 0.5)) / pexp(6, 0.5), 4)
[1] 0.3974

# Sia X una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a 2.
# Determinare:

# 1 la probabiitlità che X sia maggiore di 3.
# 2 la probabilità che X sia compresa nell'intervallo (2,3).
# 3 la probabilità che X sia minore di 7 sapendo che X è maggiore di 6.


# soluzione:

#1
1 - pexp(3, 2)
round(1 - pexp(3, 2), 4)
[1] 0.0025

#2
pexp(3, 2) - pexp(2, 2)
round(pexp(3, 2) - pexp(2, 2), 4)
[1] 0.0158

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pexp(7, 2) - pexp(6, 2)) / (1 - pexp(6, 2))
round((pexp(7, 2) - pexp(6, 2)) / (1 - pexp(6, 2)), 4)
[1] 0.8647

#Sia  X una variabile aleatoria distribuita come una Normale di media  0.2  e varianza 1. 
#Sia Y una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a  1 , indipendente da X.
#Determinare:

# 1. La probabilità che Y sia maggiore di 2.
# 2. La probabilità che almeno una delle due variabili aleatorie sia maggiore di 2. 
# 3. La probabilità che al massimo una delle due sia maggiore di 1. 
# 4. La probabilità che al massimo una delle due sia minore di 1.
# 5. La probabilità che almeno una delle due variabili aleatorie sia minore di 3.

#NB: possono essere utili le funzioni di R pexp e pnorm

# soluzione:

#1
1 - pexp(2, 1)
round(1 - pexp(2, 1), 4)
[1] 0.1353

#2
# TEORIA: 1 - P("tutte e due minori di 2") = 1 - P(X < 2) x P(Y < 2)
1 - (pnorm(2, 0.2, 1) * pexp(2, 1))
round(1 - (pnorm(2, 0.2, 1) * pexp(2, 1)), 4)
[1] 0.1664

#3
# P(al massimo una delle due > 1)
# = 1 - P(entrambe > 1)
# per indipendenza: P(X > 1 e Y > 1) = P(X > 1) * P(Y > 1)

1 - (1 - pnorm(1, 0.2, 1)) * (1 - pexp(1, 1))
round(1 - (1 - pnorm(1, 0.2, 1)) * (1 - pexp(1, 1)), 4)
[1] 0.9221

#4
# P(al massimo una delle due < 1)
# = 1 - P(entrambe < 1)
# per indipendenza: P(X < 1 e Y < 1) = P(X < 1) * P(Y < 1)
1 - (pnorm(1, 0.2, 1)) * (pexp(1, 1))
round(1 - (pnorm(1, 0.2, 1)) * (pexp(1, 1)), 4)
[1] 0.5018

#5
# TEORIA: 1 - P("tutte e due maggiori di 3") = 1 - P(X > 3) x P(Y > 3)
1 - ((1 - pnorm(3, 0.2, 1)) * (1 - pexp(3, 1)))
round(1 - ((1 - pnorm(3, 0.2, 1)) * (1 - pexp(3, 1))), 4)
[1] 0.9999

# Sia  X una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a  2 . 
# Sia Y una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a  1 , indipendente da X.
#Determinare:

# 1. La probabilità che X sia maggiore di 3.
# 2. La probabilità che entrambe le variabili aleatorie siano maggiori di 2.
# 3. La probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

#NB: può essere utile la funzione di R pexp

# soluzione:

#1
1 - pexp(3, 2)
round(1 - pexp(3, 2), 4)
[1] 0.0025

#2
# per indipendenza: P(X > 2 e Y > 2) = P(X > 2) * P(Y > 2)
(1 - pexp(2, 2)) * (1 - pexp(2, 1))
round((1 - pexp(2, 2)) * (1 - pexp(2, 1)), 4)
[1] 0.0183

#3
# probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pexp(7, 2) - pexp(6, 2)) / (1 - pexp(6, 2))
round((pexp(7, 2) - pexp(6, 2)) / (1 - pexp(6, 2)), 4)
[1] 0.8647

# Sia  X una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a  0.2 . 
# Sia Y una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a  0.5 , indipendente da X.
#Determinare:

# 1. La probabilità che Y sia maggiore di 3. 
# 2. La probabilità che almeno una delle due variabili aleatorie sia maggiore di 2. 
# 3. La probabilità che X sia minore di 1 sapendo che X è minore di 2. 

#NB: può essere utile la funzione di R pexp

#soluzione:

#1
1 - pexp(3, 0.5)
round(1 - pexp(3, 0.5), 4)
[1] 0.2231

#2
# TEORIA: 1 - P("tutte e due minori di 2") = 1 - P(X < 2) x P(Y < 2)
1 - (pexp(2, 0.2) * pexp(2, 0.5))
round(1 - (pexp(2, 0.2) * pexp(2, 0.5)), 4)
[1] 0.7916

#3
# probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
pexp(1, 0.2) / pexp(2, 0.2)
round(pexp(1, 0.2) / pexp(2, 0.2), 4)
[1] 0.5498