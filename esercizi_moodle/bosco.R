load("bosco.RData")

ls()
    [1] "dati"

str(dati)
    'data.frame':	99 obs. of  2 variables:
    $ PRIMA: num  791 591 211 449 421 624 363 682 462 549 ...
    $ DOPO : num  673 509 93 351 313 521 278 581 330 466 ...

head(dati)
  PRIMA DOPO
    1   791  673
    2   591  509
    3   211   93
    4   449  351
    5   421  313
    6   624  521

mean(dati$DOPO)
    [1] 376.3232

sd(dati$DOPO)
    [1] 155.5385

sum(dati$PRIMA > 500)
    [1] 40

quantile(dati$DOPO, 0.9)
  90% 
    574.6

# Istogramma
hist(dati$PRIMA, breaks = 15)

# Test t per campioni appaiati
t.test(dati$DOPO, dati$PRIMA, paired = TRUE, alternative = "less")


	Paired t-test

data:  dati$DOPO and dati$PRIMA
t = -68.06, df = 98, p-value
<2e-16 #1.28852e-84 -> t.test(dati$DOPO, dati$PRIMA, paired=TRUE, alternative="less")$p.value
#[1] 1.28852e-84 #rifiutiamo H0 dato che è molto minore di 0.05
#Se:
# p-value < 0.05 → rifiuti H₀
# p-value >= 0.05 → non rifiuti H₀

alternative hypothesis: true mean difference is less than 0
95 percent confidence interval:
     -Inf -100.112
sample estimates:
mean difference 
       -102.616 # < 0 quindi la media DOPO è minore della media PRIMA