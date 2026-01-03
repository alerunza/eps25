load("ricette.RData")

ls()
[1] "ricette"

str(ricette)
'data.frame':	43 obs. of  2 variables:
 $ indice_ricetta_A: num  0.7 0.6 0.7 0.56 0.7 0.58 0.6 0.6 0.72 0.6 ...
 $ indice_ricetta_B: num  0.75 0.8 0.75 0.56 0.7 0.58 0.7 0.75 0.87 0.6 ...

head(ricette)
  indice_ricetta_A indice_ricetta_B
1             0.70             0.75
2             0.60             0.80
3             0.70             0.75
4             0.56             0.56
5             0.70             0.70
6             0.58             0.58

names(ricette)
[1] "indice_ricetta_A"
[2] "indice_ricetta_B"

round(mean(ricette$indice_ricetta_A), 4)
[1] 0.6279

round(sd(ricette$indice_ricetta_A), 4)
[1] 0.0556

sum(ricette$indice_ricetta_A < 0.6)
[1] 12

quantile(ricette$indice_ricetta_A, 0.9)
90% 
0.7 

### intervallo di confidenza per la media ###
ic <- t.test(ricette$indice_ricetta_A, ricette$indice_ricetta_B, paired = TRUE, conf.level = 0.99)

round(ic$conf.int, 4)
[1] -0.1178 -0.0613 #estremo inferiore ed estremo superiore
attr(,"conf.level")
[1] 0.99

#interpretazione:
# con un livello di confidenza del 99% l'intervallo da -0.
#1178 a -0.0613 contiene la differenza tra le medie degli indici delle due ricette
# siccome l'intervallo non contiene lo 0, possiamo affermare che
# esiste una differenza significativa tra le due ricette
# in particolare, siccome l'intervallo è tutto negativo,
# la ricetta B ha un indice di ricetta significativamente
# più alto della ricetta A
# cioè la ricetta B ha un indice di gradimento maggiore della ricetta A

#risposta corretta: 
# C’è sufficiente evidenza per affermare che i piatti cucinati con le due ricette abbiano indici di gradimento differenti

# Mini-schema mentale (fondamentale)
# IC su μA - μB
# 0 dentro → nessuna differenza
# 0 fuori → differenza significativa
# IC < 0 → B migliore di A
# scegli solo ciò che è scritto nelle opzioni