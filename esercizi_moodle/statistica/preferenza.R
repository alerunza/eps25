load("preferenza.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	116 obs. of  2 variables:
 $ Preferenza  : Factor w/ 2 levels "A","B": 2 1 1 2 2 1 2 1 1 1 ...
 $ Affidabilita: num  1.26 0.8 1.21 0.97 0.73 0.16 0.37 0.53 1.53 0.33 ...

head(dati)
  Preferenza Affidabilita
1          B         1.26
2          A         0.80
3          A         1.21
4          B         0.97
5          B         0.73
6          A         0.16

names(dati)
[1] "Preferenza"   "Affidabilita"

nrow(dati)
[1] 116

mean(dati$Affidabilita)
[1] 0.6175

mean(dati$Preferenza == "A")
[1] 0.4482759

mean(dati$Preferenza[dati$Affidabilita > 0.5] == "A")
[1] 0.3770492

#indice di affidabilità medio
mean(dati$Affidabilita[dati$Preferenza == "A"])
[1] 0.5321154

boxplot(dati$Affidabilita ~ dati$Preferenza)

mean(dati$Preferenza == "A")
[1] 0.4482759
mean(dati$Preferenza == "B")
[1] 0.5517241
#facendo le proporzioni, la marca A non è preferita dalla metà e quindi l'H_1 è p != 0.5

test <- binom.test(sum(dati$Preferenza == "A"), nrow(dati), p = 0.5, alternative = "two.sided")
round(test$p.value, 4)
[1] 0.3071

#se p-value < 0.05 allora rifiutiamo H0
#se p-value >= 0.05 allora non rifiutiamo H0
#quindi non rifiutiamo H0 al livello di significatività 0.05 (domanda 7)
#non potendo rifiutare l'ipotesi nulla
#la metà dei consumatori preferisce la marca A (domanda 8)
#si rimane sulla domanda posta alla domanda 5