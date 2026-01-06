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

