load("atleti_2.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	206 obs. of  2 variables:
 $ gruppo: Factor w/ 2 levels "I","T": 1 1 1 2 1 2 2 1 2 2 ...
 $ index : num  135 130 146 31 136 82 165 119 88 132 ...

head(dati)
    gruppo index
79       I   135
63       I   130
86       I   146
150      T    31
80       I   136
196      T    82

names(dati)
[1] "gruppo" "index" 

table(dati$gruppo)
  I   T 
108  98 

mean(dati$index[dati$gruppo == "I"])
[1] 117.6481

quantile(dati$index[dati$gruppo == "I"], 0.85)
  85% 
147.9 

boxplot(dati$index ~ dati$gruppo) #si sovrappongono

meanI <- mean(dati$index[dati$gruppo == "I"])
meanT <- mean(dati$index[dati$gruppo == "T"])

#T è meglio di I, quindi è unilaterale (dato che la domanda ci sta chiedendo se uno è meglio dell'altro)

test <- t.test(dati$index[dati$gruppo == "I"], dati$index[dati$gruppo == "T"], alternative = "greater")

round(test$p.value, 4)
[1] 0.692

#gradi della libertà
test$parameter
      df 
187.6621 

#dato che il p-value è maggiore di 0.01, non rifiutiamo H0 al livello di significatività 0.01
#e quindi non c’è sufficiente evidenza (domanda 7)
#e inoltre non possiamo affermare che le prestazioni del gruppo T siano migliori di quelle del gruppo I (domanda 8)