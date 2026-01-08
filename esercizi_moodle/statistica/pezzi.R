load("pezzi.RData")

ls()
[1] "pezzi"

str(pezzi)
'data.frame':	96 obs. of  2 variables:
 $ StatoPezzo : Factor w/ 2 levels "Conforme","Non Conforme": 2 1 2 1 1 1 1 1 1 2 ...
 $ TipoDifetto: Factor w/ 3 levels "Estetico","Nessuno",..: 1 2 1 2 2 2 2 2 2 3 ...

head(pezzi)
    StatoPezzo TipoDifetto
1 Non Conforme    Estetico
2     Conforme     Nessuno
3 Non Conforme    Estetico
4     Conforme     Nessuno
5     Conforme     Nessuno
6     Conforme     Nessuno

names(pezzi)
[1] "StatoPezzo"  "TipoDifetto"

nrow(pezzi)
[1] 96

table(pezzi$StatoPezzo== "Non Conforme")
FALSE  TRUE 
   45    51 

#oppure
sum(pezzi$StatoPezzo == "Non Conforme")
[1] 51 

#la proporziona di pezzi non conformi (51 su 96 --> 96 pezzi totali)
round(51/96, 4)
[1] 0.5312

sum(pezzi$StatoPezzo[pezzi$TipoDifetto== "Strutturale"]=="Non Conforme")
[1] 29

round(29/51, 4)
[1] 0.5686

barplot(table(pezzi$TipoDifetto))


x <- sum(pezzi$StatoPezzo[pezzi$TipoDifetto== "Estetico"]=="Non Conforme")
n <- sum(pezzi$StatoPezzo== "Non Conforme")

test <- binom.test(x, n, p = 0.5, alternative = "less")
round(test$p.value, 4)
[1] 0.2005

# se p-value < 0.01 allora rifiutiamo H0
# se p-value >= 0.01 allora non rifiutiamo H0
# conclusione: non rifiutiamo H0 al livello di significatività 0
#e nessuna affermazione è vera (domanda 7)
# dato che i dati NON forniscono evidenza sufficiente contro H₀
