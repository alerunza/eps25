############################################################
# COMANDI GENERALI R – EPS (Elementi di Probabilità e Statistica)
# Usalo come riferimento rapido durante gli esercizi
############################################################

############################
# 0) RESET AMBIENTE (SEMPRE)
############################
# Usalo SEMPRE a inizio esercizio
rm(list = ls())      # cancella tutte le variabili
cat("\014")          # pulisce la console
set.seed(1)          # rende replicabili i risultati casuali
options(digits = 6)  # numero cifre decimali stampate


############################
# 1) VETTORI E DATI
############################
# Quando hai dati numerici espliciti
x <- c(2, 4, 6, 8)

# Lunghezza del campione
length(x)

# Ordinare dati
sort(x)

# Accedere a elementi
x[1]     # primo
x[length(x)]  # ultimo


############################
# 2) STATISTICHE DESCRITTIVE
############################
# Media campionaria
mean(x)

# Varianza campionaria (ATTENZIONE: divide per n-1)
var(x)

# Deviazione standard
sd(x)

# Riassunto rapido
summary(x)

# Min, max
min(x)
max(x)


############################
# 3) DISTRIBUZIONI DISCRETE
############################

### BINOMIALE X ~ Bin(n, p)
# ES: numero successi su n prove indipendenti

# P(X = k)
dbinom(k, size = n, prob = p)

# P(X ≤ k)
pbinom(k, size = n, prob = p)

# P(X ≥ k)
1 - pbinom(k - 1, size = n, prob = p)

# Quantile
qbinom(0.95, size = n, prob = p)

# Simulazioni
rbinom(10, size = n, prob = p)


############################
# 4) DISTRIBUZIONI CONTINUE
############################

### NORMALE X ~ N(mu, sigma)
# ATTENZIONE: in R si usa sigma (dev std), NON la varianza

# Densità
dnorm(x, mean = mu, sd = sigma)

# P(X ≤ x)
pnorm(x, mean = mu, sd = sigma)

# P(a ≤ X ≤ b)
pnorm(b, mu, sigma) - pnorm(a, mu, sigma)

# Quantili
qnorm(0.975, mean = mu, sd = sigma)

# Simulazioni
rnorm(10, mean = mu, sd = sigma)


### ESPONENZIALE X ~ Exp(lambda)
# ATTENZIONE: lambda = rate

# Densità
dexp(x, rate = lambda)

# P(X ≤ x)
pexp(x, rate = lambda)

# P(X > x)
1 - pexp(x, rate = lambda)

# Quantile
qexp(0.9, rate = lambda)

# Simulazioni
rexp(10, rate = lambda)


############################
# 5) VALORE ATTESO E VARIANZA
############################

# Valore atteso empirico
mean(x)

# Varianza empirica
var(x)

# Per variabili note:
# Bin(n,p): E = n*p , Var = n*p*(1-p)
# Exp(lambda): E = 1/lambda , Var = 1/lambda^2
# Normale: E = mu , Var = sigma^2


############################
# 6) GRAFICI (SE RICHIESTI)
############################

# Istogramma
hist(x, probability = TRUE)

# Curva teorica sopra istogramma
curve(dnorm(x, mean = mean(x), sd = sd(x)),
      col = "red", lwd = 2, add = TRUE)

# Grafico semplice
plot(x, type = "b")


############################
# 7) CONTROLLO RISULTATI
############################

# Controllo probabilità = 1
sum(dbinom(0:n, size = n, prob = p))

# Controllo NA / errori
is.na(x)
any(is.na(x))


############################################################
# FINE FILE – usa solo ciò che serve all'esercizio
############################################################
