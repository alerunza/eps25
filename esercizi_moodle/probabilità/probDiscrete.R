# nelle continue non possono esserci probabilità puntuali
# quindi P(X = k) = 0 per ogni k

# Sia Y una variabile aleatoria tale che P(Y = 0.5) = 3P(Y = 2)
# e tale che P(Y appartiene {0.5, 2}) = 1

# calcolare:

# 1 P(Y = 0.5)
# 2 P(Y = 2)
# 3 E(Y)

# soluzione:

# 1 e 2
p <- 1/(1 + 3) # --> dalla relazione: 3p + p = 1
#allora

P_Y_2 <- p
P_Y_05 <- 3 * p

P_Y_05
[1] 0.75
P_Y_2
[1] 0.25

#3 
#E(Y) = sum(yi * P(Y = yi))
E_Y <- 0.5 * P_Y_05 + 2 * P_Y_2
E_Y
[1] 0.875

# Sia Y una variabile aleatoria tale che P(Y = 0.4) = 1/5 P (Y = 3)
# e tale che P(Y appartiene {0.4, 3}) = 1
# calcolare:

# 1 P(Y = 0.4)
# 2 P(Y = 3)
# 3 E(Y)

# soluzione:
# 1 e 2
p <- 1/(1 + 1/5) # --> dalla relazione: (1/5)p + p = 1
#allora
P_Y_3 <- p
P_Y_04 <- (1/5) * p

round(P_Y_04, 4)
[1] 0.1667

round(P_Y_3, 4)
[1] 0.8333

#3
#E(Y) = sum(yi * P(Y = yi))
E_Y <- 0.4 * P_Y_04 + 3 * P_Y_3
round(E_Y, 4)
[1] 2.5667