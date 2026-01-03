load("pallavolo.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	120 obs. of  2 variables:
 $ PRIMA: num  0.52 0.74 0.64 0.74 0.72 0.56 0.64 0.72 0.62 0.62 ...
 $ DOPO : num  0.52 0.74 0.74 0.84 0.72 0.61 0.64 0.77 0.77 0.62 ...

head(dati)
  PRIMA DOPO
1  0.52 0.52
2  0.74 0.74
3  0.64 0.74
4  0.74 0.84
5  0.72 0.72
6  0.56 0.61

names(dati)
[1] "PRIMA" "DOPO" 

nrow(dati)
[1] 120

round(mean(dati$DOPO, na.rm = TRUE), 4)
[1] 0.7115

round(sd(dati$DOPO, na.rm = TRUE), 4)
[1] 0.084

sum(dati$DOPO > 0.7, na.rm = TRUE)
[1] 68

round(quantile(dati$DOPO, 0.95, na.rm = TRUE), 4)
   95% 
0.8305 

test <- t.test(dati$DOPO, dati$PRIMA, paired = TRUE, alternative = "greater")

round(test$p.value, 4)
[1] 0
#p-value < 0.01 quindi si rifiuta h0 e si conclude che DOPO è maggiore di PRIMA