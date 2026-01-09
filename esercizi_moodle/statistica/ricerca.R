load("ricerca.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	200 obs. of  2 variables:
 $ algoritmo: Factor w/ 2 levels "alg_A","alg_B": 2 1 1 1 2 1 2 1 2 1 ...
 $ tempo    : num  7.4 5 6.9 6.6 9.3 5.4 4.2 6.1 4.2 6.4 ...

head(dati)
    algoritmo tempo
140     alg_B   7.4
41      alg_A   5.0
14      alg_A   6.9
52      alg_A   6.6
95      alg_B   9.3
20      alg_A   5.4

names(dati)
[1] "algoritmo" "tempo"   

table(dati$algoritmo)
alg_A alg_B
81  119

mean(dati$tempo[dati$algoritmo == "alg_A"])
[1] 6.562963

sd(dati$tempo[dati$algoritmo == "alg_A"])
[1] 1.212964

quantile(dati$tempo[dati$algoritmo == "alg_A"], 0.95)
95% 
8.4 

mean(dati$tempo[dati$algoritmo == "alg_A"])
[1] 6.562963
mean(dati$tempo[dati$algoritmo == "alg_B"])
[1] 6.962185

testA <- t.test(dati$tempo[dati$algoritmo == "alg_A"], conf.level = 0.99)
testB <- t.test(dati$tempo[dati$algoritmo == "alg_B"], conf.level = 0.99)

# IC = stima della media + incertezza
# t.test(..., conf.level=...) → IC = intervallo di confidenza
# 2 IC separati → confronto
# overlap → non posso dire che sono diversi
# no overlap → sono diversi

round(testA$conf.int, 4)
[1] 6.2407 6.8852
round(testB$conf.int, 4)
[1] 6.4530 7.4714