load("fertilizzante.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	208 obs. of  2 variables:
 $ fertilizzante: Factor w/ 2 levels "A","B": 2 1 2 2 2 1 2 1 2 1 ...
 $ altezza      : num  213 116 147 210 242 152 166 86 101 140 ...

head(dati)
  fertilizzante altezza
1             B     213
2             A     116
3             B     147
4             B     210
5             B     242
6             A     152

names(dati)
[1] "fertilizzante" "altezza"

table(dati$fertilizzante)
  A   B 
120  88 

round(mean(dati$altezza[dati$fertilizzante == "A"]), 4)
[1] 122.65

round(sd(dati$altezza[dati$fertilizzante == "A"]), 4)
[1] 28.7585

round(quantile(dati$altezza[dati$fertilizzante == "A"], 0.9), 4)
  90% 
160.1 

boxplot(altezza ~ fertilizzante, data = dati)
#se le scatole si toccano/sovrappongono -> vero
#se le scatole sono separate -> falso

mean(dati$altezza[dati$fertilizzante == "A"])
[1] 122.65
> mean(dati$altezza[dati$fertilizzante == "B"])
[1] 148.9091

#facendo la differenza tra le medie
148.9091 - 122.65
[1] 26.25909

#h0 : muA = muB
#h1 : muA != muB
#in questo caso h1 è a due code e quindi è bilaterale

test <- t.test(altezza ~ fertilizzante, data = dati, alternative = "two.sided", var.equal = FALSE)

 test$p.value
[1] 1.071481e-05

round(test$p.value, 4)
[1] 0

test$parameter
[1] 132.4076
#va in gradi di libertà

#dato che il p-value è < 0.01 (rifiutiamo H0)

#conclusione (domanda 8)
#dato che meadia(A) < media(B) e rifiutiamo H0
#le piante trattate con il fertilizzante A crescono mediamente meno di quelle trattate con il fertilizzante B