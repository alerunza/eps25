load("escursioni.RData")

ls()
[1] "escursioni"

str(escursioni)
'data.frame':	162 obs. of  2 variables:
 $ Preferenza       : Factor w/ 2 levels "Sentiero facile",..: 2 2 2 1 1 1 2 2 2 2 ...
 $ Numero escursioni: int  3 9 7 2 1 1 8 9 4 8 ...

head(escursioni)
            Preferenza Numero escursioni
1 Sentiero impegnativo                 3
2 Sentiero impegnativo                 9
3 Sentiero impegnativo                 7
4      Sentiero facile                 2
5      Sentiero facile                 1
6      Sentiero facile                 1

names(escursioni)
[1] "Preferenza"        "Numero escursioni"

nrow(escursioni)
[1] 162

sum(escursioni$Preferenza == "Sentiero facile")
[1] 71

freq_rel <- 71 / nrow(escursioni)
round(freq_rel, 4)
[1] 0.4383

mean(escursioni$`Numero escursioni`[escursioni$Preferenza == "Sentiero facile"])
[1] 1.380282
[1] 1.3803

barplot(table(escursioni$Preferenza))

mean(escursioni$`Numero escursioni`[escursioni$Preferenza == "Sentiero impegnativo"])
[1] 7.054945
mean(escursioni$`Numero escursioni`[escursioni$Preferenza == "Sentiero facile"])
[1] 1.380282


tab <- table(escursioni$Preferenza)
x <- tab["Sentiero impegnativo"]
n <- sum(tab)

test <- binom.test(x, n, p = 0.5, alternative = "greater")
#oppure
test <- binom.test(91, 162, p = 0.5, alternative = "greater")
round(test$p.value, 4)
Sentiero impegnativo 
              0.0676 
# se p-value < 0.01 allora rifiutiamo H0
# se p-value >= 0.01 allora non rifiutiamo H0
# quindi non rifiutiamo H0 (ipotesi nulla) al livello di significatività 0.01
# E quindi non potendo rifiutare H0, bisogna prendere in considerazione H0. H0 afferma che
# la proporzione di escursionisti che preferiscono il sentiero impegnativo è
# p=0.5 (50%).
