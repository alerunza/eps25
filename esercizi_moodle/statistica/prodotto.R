load("prodotto.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	111 obs. of  2 variables:
 $ preferenza: Factor w/ 2 levels "Attuale","Sperimentale": 2 2 1 2 2 1 2 1 1 1 ...
 $ eta       : num  35 40 23 29 42 18 33 29 34 27 ...

head(dati)
     preferenza eta
69 Sperimentale  35
56 Sperimentale  40
12      Attuale  23
93 Sperimentale  29
90 Sperimentale  42
2       Attuale  18

names(dati)
[1] "preferenza" "eta" 