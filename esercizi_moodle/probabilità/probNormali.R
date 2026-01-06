# Sia X una variabile aleatoria distribuita come una Normale di media 0 e varianza 4.
# Determinare:

# 1 La probabilità che X sia minore di 1.5

# 2 La probabilità che X sia maggiore di 3.

# 3 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6.

# 4 la probabilità che X sia compresa fra -2 e 1.

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

#4
pnorm(1, 0, sqrt(4)) - pnorm(-2, 0, sqrt(4))
round(pnorm(1, 0, sqrt(4)) - pnorm(-2, 0, sqrt(4)), 4)
[1] 0.5328

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

# Sia X una variabile aleatoria distribuita come una Normale di media 2 e varianza 4.
# Sia y una variabile aleatoria distribuita come una Normale standard, indipende da X.

# Determinare:
# 1 la probabilità che X sia maggiore di 3.
# 2 la probabilità che entrambe le variabili aleatorie siano maggiori di 3.
# 3 la probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

# soluzione:

#1
1 - pnorm(3, 2, sqrt(4))
round(1 - pnorm(3, 2, sqrt(4)), 4)
[1] 0.3085

#2
#indipendenza
(1 - pnorm(3, 2, sqrt(4))) * (1 - pnorm(3, 0, 1))
[1] 0.0004164942162 --> arrotondato a 0.0004

#3
# probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(7, 2, sqrt(4)) - pnorm(6, 2, sqrt(4))) / (1 - pnorm(6, 2, sqrt(4)))
round((pnorm(7, 2, sqrt(4)) - pnorm(6, 2, sqrt(4))) / (1 - pnorm(6, 2, sqrt(4))), 4)
[1] 0.727

#Sia X una variabile aleatoria distribuita come una Normale di media  -1  e varianza  9 .
#Determinare:

# 1 La probabilità che X sia minore di 1.5.
# 2 La probabilità che X sia maggiore di 3.
# 3 La probabilità che X sia compresa fra -2 e 1.
# 4 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6.

# soluzione:

#1
pnorm(1.5, -1, sqrt(9))
round(pnorm(1.5, -1, sqrt(9)), 4)
[1] 0.7977

#2
1 - pnorm(3, -1, sqrt(9))
round(1 - pnorm(3, -1, sqrt(9)), 4)
[1] 0.0912

#3
pnorm(1, -1, sqrt(9)) - pnorm(-2, -1, sqrt(9))
round(pnorm(1, -1, sqrt(9)) - pnorm(-2, -1, sqrt(9)), 4)
[1] 0.3781

#4 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(6, -1, sqrt(9)) - pnorm(3, -1, sqrt(9))) / pnorm(6, -1, sqrt(9))
round((pnorm(6, -1, sqrt(9)) - pnorm(3, -1, sqrt(9))) / pnorm(6, -1, sqrt(9)), 4)
[1] 0.0822

#Sia X una variabile aleatoria distribuita come una Normale di media  2  e varianza  36 .
#Determinare:

# 1 La probabilità che X sia minore di 1.
# 2 La probabilità che X sia maggiore di 2.
# 3 La probabilità che X sia compresa fra 3 e 4.5.
# 4 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6.

# soluzione:

#1
pnorm(1, 2, sqrt(36))
round(pnorm(1, 2, sqrt(36)), 4)
[1] 0.4338

#2
1 - pnorm(2, 2, sqrt(36))
round(1 - pnorm(2, 2, sqrt(36)), 4)
[1] 0.5

#3
pnorm(4.5, 2, sqrt(36)) - pnorm(3, 2, sqrt(36))
round(pnorm(4.5, 2, sqrt(36)) - pnorm(3, 2, sqrt(36)), 4)
[1] 0.0954

#4 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(6, 2, sqrt(36)) - pnorm(3, 2, sqrt(36))) / pnorm(6, 2, sqrt(36))
round((pnorm(6, 2, sqrt(36)) - pnorm(3, 2, sqrt(36))) / pnorm(6, 2, sqrt(36)), 4)
[1] 0.2426

#Sia X una variabile aleatoria distribuita come una Normale di media  16  e varianza  16 .
#Determinare:

# 1 La probabilità che X sia minore di 10.5.
# 2 La probabilità che X sia maggiore di 17. 
# 3 La probabilità che X sia compresa fra 13 e 17.
# 4 La probabilità che X sia maggiore di 13 sapendo che X è minore di 16.

# soluzione:

#1
pnorm(10.5, 16, sqrt(16))
round(pnorm(10.5, 16, sqrt(16)), 4)
[1] 0.0846 

#2
1 - pnorm(17, 16, sqrt(16))
round(1 - pnorm(17, 16, sqrt(16)), 4)
[1] 0.4013

#3
pnorm(17, 16, sqrt(16)) - pnorm(13, 16, sqrt(16))
round(pnorm(17, 16, sqrt(16)) - pnorm(13, 16, sqrt(16)), 4)
[1] 0.3721

#4 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(16, 16, sqrt(16)) - pnorm(13, 16, sqrt(16))) / pnorm(16, 16, sqrt(16))
round((pnorm(16, 16, sqrt(16)) - pnorm(13, 16, sqrt(16))) / pnorm(16, 16, sqrt(16)), 4)
[1] 0.5467

#Sia X una variabile aleatoria distribuita come una Normale di media  10  e varianza  16 .
#Determinare:

# 1 La probabilità che X sia maggiore di 13.
# 2 La probabilità che X sia compresa fra 8.5 e 12.
# 3 La probabilità che X sia minore di 8.5 oppure maggiore di 12 sapendo che X è maggiore di 8.
# 4 La probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

# soluzione:

#1
1 - pnorm(13, 10, sqrt(16))
round(1 - pnorm(13, 10, sqrt(16)), 4)
[1] 0.2266

#2
pnorm(12, 10, sqrt(16)) - pnorm(8.5, 10, sqrt(16))
round(pnorm(12, 10, sqrt(16)) - pnorm(8.5, 10, sqrt(16)), 4)
[1] 0.3376

#3 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(8.5,10, sqrt(16)) - pnorm(8,10, sqrt(16)) + 1 - pnorm(12,10, sqrt(16))) / ( 1 - pnorm(8,10,sqrt(16)) )
round((pnorm(8.5,10, sqrt(16)) - pnorm(8,10, sqrt(16)) + 1 - pnorm(12,10, sqrt(16))) / ( 1 - pnorm(8,10,sqrt(16)) ), 4)
[1] 0.5117

#4 probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(7, 10, sqrt(16)) - pnorm(6, 10, sqrt(16))) / (1 - pnorm(6, 10, sqrt(16)))
round((pnorm(7, 10, sqrt(16)) - pnorm(6, 10, sqrt(16))) / (1 - pnorm(6, 10, sqrt(16))), 4)
[1] 0.0808

#Sia X una variabile aleatoria distribuita come una Normale di media  2  e varianza  4 . Sia Y una variabile aleatoria distribuita come una Normale standard, indipendente da X.
#Determinare:

# 1 La probabilità che X sia maggiore di 3.
# 2 La probabilità che entrambe le variabili aleatorie siano maggiori di 3. 
# 3 La probabilità che X sia compresa fra 1.5 e 2 sapendo che Y è maggiore di 7.
# 4 La probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

# soluzione:

#1
1 - pnorm(3, 2, sqrt(4))
round(1 - pnorm(3, 2, sqrt(4)), 4)
[1] 0.3085

#2
#indipendenza
(1 - pnorm(3, 2, sqrt(4))) * (1 - pnorm(3, 0, 1))
[1] 0.0004164942 --> arrotondato a 0.0004

#3
# essendo Y indipendente da X, la condizione su Y non influenza X
pnorm(2, 2, sqrt(4)) - pnorm(1.5, 2, sqrt(4))
round(pnorm(2, 2, sqrt(4)) - pnorm(1.5, 2, sqrt(4)), 4)
[1] 0.1915

#4
# probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
(pnorm(7, 2, sqrt(4)) - pnorm(6, 2, sqrt(4))) / (1 - pnorm(6, 2, sqrt(4)))
round((pnorm(7, 2, sqrt(4)) - pnorm(6, 2, sqrt(4))) / (1 - pnorm(6, 2, sqrt(4))), 4)
[1] 0.7270

# Sia X una variabile aleatoria distribuita come una Normale di parametri u = 3  e sigma^2 = 1 . 
#Sia Y una variabile aleatoria distribuita come una Normale standard, indipendente da X.
#Determinare:

# 1 La probabilità che entrambe le variabili aleatorie siano maggiori della propria media.
# 2 La probabilità che X sia compresa fra -1 e 0 sapendo che Y è maggiore di 7.
# 3 La probabilità che X sia minore di 2.5 oppure che Y sia maggiore di -1, sapendo che Y è maggiore di -2.
# 4 La probabilità che X sia minore di 7 sapendo che (X+1) è maggiore di 6.

# soluzione:

#1
(1 - pnorm(3, 3, 1)) * (1 - pnorm(0, 0, 1))
[1] 0.25

#2
# essendo Y indipendente da X, la condizione su Y non influenza X
pnorm(0, 3, 1) - pnorm(-1, 3, 1)
round(pnorm(0, 3, 1) - pnorm(-1, 3, 1), 4)
[1] 0.0013

# X ~ N(3,1)  (mean=3, sd=1)
# Y ~ N(0,1)  (standard)
# X e Y indipendenti

#3
# voglio: P( X < 2.5  OR  Y > -1  |  Y > -2 )
# uso il complemento dell’unione:
# (X < 2.5 OR Y > -1)^c = (X >= 2.5) AND (Y <= -1)
# con la condizione Y > -2 diventa:
# P(A|B) = 1 - P( X >= 2.5 AND (-2 < Y <= -1) ) / P(Y > -2)
# e per indipendenza: P(X>=2.5 AND ...) = P(X>=2.5) * P(-2<Y<=-1)

1 - (1 - pnorm(2.5,3,1)) * (pnorm(-1,0,1) - pnorm(-2,0,1)) / (1 - pnorm(-2,0,1))
round(1 - (1 - pnorm(2.5,3,1)) * (pnorm(-1,0,1) - pnorm(-2,0,1)) / (1 - pnorm(-2,0,1)), 4)
# [1] 0.9038


#4
# voglio: P( X < 7 | (X+1) > 6 )
# (X+1) > 6  <=>  X > 5
# quindi: P(X < 7 | X > 5) = P(5 < X < 7) / P(X > 5)

(pnorm(7,3,1) - pnorm(5,3,1)) / (1 - pnorm(5,3,1))
round((pnorm(7,3,1) - pnorm(5,3,1)) / (1 - pnorm(5,3,1)), 4)
# [1] 0.9986
