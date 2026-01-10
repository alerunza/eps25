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

nrow(dati)
[1] 111

mean(dati$eta)
[1] 30.66667

sum(dati$preferenza == "Sperimentale")
[1] 64

64/111
[1] 0.5765766

#particolare (gio):
#proporzione di solo soggetti < 35, considerando solo i soggetti che hanno preferito versione sperimentale < 35
sum(dati$preferenza[dati$eta < 35] == "Sperimentale") / sum(dati$eta < 35)
[1] 0.3783784

mean(dati$eta[dati$preferenza == "Sperimentale"])
[1] 34.76562

boxplot(dati$eta ~ dati$preferenza)

test <- binom.test(sum(dati$preferenza == "Sperimentale"), nrow(dati), p = 0.5, alternative = "greater")
round(test$p.value, 4)
[1] 0.0642

# se p-value < 0.05 allora rifiutiamo H0
# se p-value >= 0.05 allora non rifiutiamo H0
# non possiamo rifiutiare H0 (ipotesi nulla) al livello di significatività 0.05 (domanda 7)
# quindi rimaniamo con l'ipotesi della domanda 5: il prodotto sperimentale è preferito da più della metà dei consumatori
# e vale a dire che rifiutando ciò, risponderemo: 
# non più della metà dei consumatori preferisce il prodotto nella versione sperimentale (domanda 8)