#Sia X una variabile aleatoria Uniforme Discreta distribuita su {2,3} U {6.5, 10, 10.5, 10.7, 15}

# calcolare:

# 1 la probabilità che "la variabile aleatoria valga 2 oppure assuma un valore nell'insieme [10, infinito)"
# 2 la P (X ≥ 5)"
# 3 il E X

# soluzione:

x <- c(2, 3, 6.5, 10, 10.5, 10.7, 15)

#1

mean(x == 2 | x >= 10)
round(mean(x == 2 | x >= 10), 4)
[1] 0.7143

#2
mean(x >= 5)
round(mean(x >= 5), 4)
[1] 0.7143

mean(x)
round(mean(x), 4)
[1] 8.2429

#Sia X una variabile aleatoria Uniforme Discreta distribuita su {2,3} 
#e sia Y una variabile aleatoria indiepndente e identicamente distribuita ad X.
# Calcolare:

#1 la probabilità che "la variabile aleatoria X valga 5/2"
#2 il E X
#3 la Var(X)
#¥ la Var(X + Y)

# soluzione:
x <- c(2, 3)

#1
mean(x == 5/2)
[1] 0

#2
mean(x)
[1] 2.5

#3
mean(x^2) - mean(x)^2
[1] 0.25

#4 Var(X + Y) = Var(X) + Var(Y)  dato che X e Y sono indipendenti
2 * (mean(x^2) - mean(x)^2)
[1] 0.5

#Sia X una variabile aleatoria continua distribuita come una Uniforme sull'intervallo[2,10] .
# Determinare:

# 1 La probabilità che X sia minore della sua media. 
# 2 La probabilità che X sia maggiore di 3.
# 3 La probabilità che X sia compresa fra -2 e 3. 
# 4 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6. 

#Comandi di R che potrebbero essere utili: punif, dunif

# soluzione:

#1
punif(6, 2, 10)
[1] 0.5

#2
1 - punif(3, 2, 10)
[1] 0.875

#3
punif(3, 2, 10) - punif(-2, 2, 10)
[1] 0.125  

#4
num <- punif(6, 2, 10) - punif(3, 2, 10)
den <- punif(6, 2, 10)
num / den
[1] 0.75

# Sia X una variabile aleatoria continua distribuita come una Uniforme sull'intervallo [0,1] .
#Determinare:

# 1 La probabilità che X sia minore della sua media. 
# 2 La probabilità che - X sia maggiore di -0.25. 
# 3 La probabilità che X - 0.5 sia positiva sapendo che X è minore di 0.9. 

#Comandi di R che potrebbero essere utili: punif, dunif

# soluzione:

#1
punif(1/2, 0, 1)
[1] 0.5

#2
#P(-X > -0.25) = P(X < 0.25)
punif(0.25, 0, 1)
[1] 0.25

#3
#probabilità condizionata P(A|B) = P(A ∩ B) / P(B)
num <- punif(0.9, 0, 1) - punif(0.5, 0, 1)
den <- punif(0.9, 0, 1)
num / den
[1] 0.4444444

