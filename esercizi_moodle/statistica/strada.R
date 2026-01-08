load("strada.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	129 obs. of  2 variables:
 $ PRIMA: num  0.1 0.16 0.08 0.16 0.14 0.2 0.12 0.18 0.08 0.16 ...
 $ DOPO : num  0.05 0.11 0.03 0.11 0.14 0.1 0.07 0.08 0.03 0.11 ...

head(dati)
  PRIMA DOPO
1  0.10 0.05
2  0.16 0.11
3  0.08 0.03
4  0.16 0.11
5  0.14 0.14
6  0.20 0.10

names(dati)
[1] "PRIMA" "DOPO" 

nrow(dati)
[1] 129

round(mean(dati$DOPO), 4)
[1] 0.1161

round(sd(dati$DOPO), 4)
[1] 0.0582

sum(dati$DOPO > 0.2)
[1] 8

quantile(dati$DOPO, 0.95)
 95% 
0.21 

test <- t.test(dati$PRIMA, dati$DOPO, paired = TRUE, alternative = "greater")
round(test$p.value, 4)
[1] 0

# se p-value < 0.01 allora rifiutiamo H0
# se p-value >= 0.01 allora non rifiutiamo H0
# quindi rifiutiamo H0 al livello di significatività 0.01

#e quindi C’è sufficiente evidenza per affermare che la percentuale di veicoli 
#che commettono infrazioni del codice della strada è diminuita dopo la campagna