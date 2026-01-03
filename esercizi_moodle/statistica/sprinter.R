load("sprinter.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	316 obs. of  2 variables:
 $ t.reazione  : num  0.148 0.211 0.342 0.161 0.288 0.165 0.211 0.387 0.148 0.309 ...
 $ velocita.max: num  37.4 34.5 34.4 34 33.1 ...

head(dati)
  t.reazione velocita.max
1      0.148        37.38
2      0.211        34.48
3      0.342        34.35
4      0.161        33.97
5      0.288        33.11
6      0.165        28.61

names(dati)
[1] "t.reazione"   "velocita.max"

nrow(dati)
[1] 316

sum(is.na(dati))
[1] 4

round(mean(dati$velocita.max[dati$t.reazione > 0.3], na.rm = TRUE),  4)
[1] 29.7075

round(sd(dati$velocita.max[dati$t.reazione > 0.3], na.rm = TRUE),  4)
[1] 5.0671

quantile(dati$t.reazione, na.rm = TRUE, 0.1)
  10% 
0.138

boxplot(dati$velocita.max[dati$t.reazione > 0.3], dati$velocita.max[dati$t.reazione <= 0.3])

cor <- cor.test(dati$velocita.max, dati$t.reazione, use = "complete.obs")
#complete.obs per ignorare i NA nella correlazione

round(cor$estimate, 4)
    cor 
-0.4068 # correlazione campionaria

# se è < 0.1 significa che la correlazione è significativa (NON NULLA)

round(cor$p.value, 4)
[1] 0 # p-value

## retta di regressione lineare

mod <- lm(velocita.max ~ t.reazione, data = dati)

round(coef(mod), 4)
(Intercept)  t.reazione 
    38.8149    -28.8747 


summary(mod) -> visualizziamo il tutto il sommario del modello
p_slope <- summary(mod)$coefficients["t.reazione", "Pr(>|t|)"]

#Pr(>|t|) indica il p-value associato al test di significatività della pendenza

round(p_slope, 4)
[1] 0