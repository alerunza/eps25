load("nuotatori.RData")
ls()
    [1] "dati"

str(dati)
'data.frame':	168 obs. of  2 variables:
 $ categoria: Factor w/ 2 levels "Dilettanti","Professionisti": 2 1 2 1 1 2 1 2 1 2 ...
 $ tempo    : num  117 147 116 144 154 ...

head(dati)
       categoria  tempo
    1 Professionisti 117.29
    2     Dilettanti 147.10
    3 Professionisti 115.70
    4     Dilettanti 144.28
    5     Dilettanti 153.62
    6 Professionisti 109.75

names(dati)
    [1] "categoria" "tempo"  

mean(dati$tempo[dati$categoria == "Dilettanti"])
    [1] 143.7842

sd(dati$tempo[dati$categoria == "Dilettanti"])
    [1] 13.12723

round(sd(dati$tempo[dati$categoria == "Dilettanti"]), 4)
[1] 13.1272

quantile(dati$tempo[dati$categoria == "Dilettanti"], 0.05)
     5% 
121.106 

boxplot(tempo ~ categoria, data = dati)

t.test(
  tempo ~ categoria,
  data = dati,
  alternative = "greater",
  var.equal = FALSE
)


		Welch Two Sample t-test

data:  tempo by categoria
t = 10.92, df = 120.91,
p-value < 2.2e-16
alternative hypothesis: true difference in means between group Dilettanti and group Professionisti is greater than 0
95 percent confidence interval:
 16.77301      Inf
sample estimates:
    mean in group Dilettanti 
                    143.7842 
mean in group Professionisti 
                    124.0095 

# Se:
# p-value < 0.05 → rifiuti H₀
# p-value >= 0.05 → non rifiuti H₀
# In questo caso rifiutiamo H0 dato che il p-value è molto minore di 0.05

#t-test per campioni indipendenti, unilaterale

> test <- t.test(tempo ~ categoria, data = dati, alternative = "greater", var.equal = FALSE)
> test$p.value
[1] 4.900531e-20
> test$parameter
      df 
120.9126 

round(test$p.value, 4)
[1] 0