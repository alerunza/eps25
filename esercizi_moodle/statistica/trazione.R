load("trazione.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	191 obs. of  2 variables:
 $ trazione : num  24.8 27.3 29.6 23.8 31.8 22.1 31.4 26.1 24.9 30.7 ...
 $ materiale: chr  "A" "A" "B" "A" ...

head(dati)
  trazione materiale
1     24.8         A
2     27.3         A
3     29.6         B
4     23.8         A
5     31.8         B
6     22.1         A

names(dati)
[1] "trazione"  "materiale"

nrow(dati)
[1] 191

mean(dati$trazione[dati$materiale == "B"])
[1] 27.35472

sd(dati$trazione[dati$materiale == "B"])
[1] 3.165322

sum(dati$trazione[dati$materiale == "B"] >= 30)
[1] 23

quantile(dati$trazione[dati$materiale == "B"], 0.80)
 80% 
30.3 

barplot(table(dati$materiale))

meanA <- mean(dati$trazione[dati$materiale == "A"])
[1] 24.63647
meanB <- mean(dati$trazione[dati$materiale == "B"])
[1] 27.35472

meanA - meanB
[1] -2.718248

test <- t.test(dati$trazione[dati$materiale == "A"], dati$trazione[dati$materiale == "B"], paired = FALSE, alternative = "less")

round(test$p.value, 4)
[1] 0

# se p-value < 0.01 allora rifiutiamo H0
# se p-value >= 0.01 allora non rifiutiamo H0
# quindi rifiutiamo H0 (ipotesi nulla) al livello di significatività 0.01 (domanda 7)
# e quindi i due materiali hanno resistenze a trazione significativamente diverse (domanda 8)