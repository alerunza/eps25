load("suolo.RData")

ls()
[1] "dati"
 
str(dati)
'data.frame':	203 obs. of  2 variables:
 $ suolo : Factor w/ 3 levels "Argilloso","Calcareo",..: 1 1 1 3 2 3 1 1 3 2 ...
 $ pianta: Factor w/ 2 levels "Assente","Presente": 2 1 2 2 1 1 1 2 1 2 ...

head(dati)
      suolo   pianta
1 Argilloso Presente
2 Argilloso  Assente
3 Argilloso Presente
4  Sabbioso Presente
5  Calcareo  Assente
6  Sabbioso  Assente

names(dati)
[1] "suolo"  "pianta"

nrow(dati)
[1] 203

which(is.na(dati), arr.ind = TRUE)
    row col
128 128   1

freq <- sum(dati$suolo == "Argilloso", na.rm = TRUE)
freq_rel <- freq / sum(!is.na(dati$suolo))
round(freq_rel, 4)
[1] 0.2624

sum(dati$suolo[dati$pianta=="Presente"] == "Argilloso", na.rm = TRUE)
[1] 26

barplot(table(dati$suolo))

test <- chisq.test(table(dati$suolo, dati$pianta))

round(test$p.value, 4)
[1] 0.192

# se p-value < 0.05 allora rifiutiamo H0
# se p-value >= 0.05 allora non rifiutiamo H0
# quindi non rifiutiamo H0 al livello di significatività 0.05
# e quindi le due variabili sono indipendenti (domanda 7)

#cochran -> la più grande (MAX) frequenza attesa
max(test$expected)
[1] 45.36139

# se la più grande frequenza attesa è >= 5 allora
# l'approssimazione del test del chi quadro è valida
# e viene rispettata la reogla di Cochran (domanda 8)