load("atleti.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	112 obs. of  2 variables:
 $ index_PRE : num  147 123 150 103 142 121 124 102 141 139 ...
 $ index_POST: num  92 161 115 276 199 125 168 104 105 111 ...

head(dati)
  index_PRE index_POST
1       147         92
2       123        161
3       150        115
4       103        276
5       142        199
6       121        125

names(dati)
[1] "index_PRE"  "index_POST"

nrow(dati)
[1] 112

sum(is.na(dati))
[1] 3

mean(dati$index_PRE, na.rm = TRUE)
[1] 120.3273

sd(dati$index_PRE, na.rm = TRUE)
[1] 27.92753

quantile(dati$index_PRE, 0.75, na.rm = TRUE)
75% 
138 

meanA <- mean(dati$index_PRE, na.rm = TRUE)
[1] 120.3273
meanB <- mean(dati$index_POST, na.rm = TRUE)
[1] 129.7568

#sono campioni appaiati
#unilaterale

test <- t.test(dati$index_PRE, dati$index_POST, paired = TRUE, alternative = "less")

round(test$p.value, 4)
[1] 0.0501
# se p-value < 0.05 allora rifiutiamo H0
# se p-value >= 0.05 allora non rifiutiamo H0
# quindi non rifiutiamo H0 al livello di significatività 0.05
# e quindi non c’è sufficiente evidenza (domanda 7)
# ma possiamo afferma che le prestazioni sono peggiorate (domanda 8)

round(mean(dati$index_PRE - dati$index_POST, na.rm = TRUE), 4) #domanda 6 (secondo box blank)
[1] -8.5963