load("alberi.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	319 obs. of  2 variables:
 $ diametro: num  61 46 27 71 79 26 29 32 33 24 ...
 $ altezza : num  39 24 25 48 40 27 19 26 17 19 ...

head(dati)
  diametro altezza
1       61      39
2       46      24
3       27      25
4       71      48
5       79      40
6       26      27

names(dati)
[1] "diametro" "altezza" 

nrow(dati)
[1] 319

#mancanti
sum(is.na(dati))
[1] 6

#(alberi con altezza tra 25 e 35, estremi inclusi) [consegna moodle esercizio]

idx <- dati$altezza >= 25 & dati$altezza <= 35

round(mean(dati$diametro[idx], na.rm = TRUE), 4)
[1] 39.6333

round(sd(dati$diametro[idx], na.rm=TRUE), 4)
[1] 15.0657

round(quantile(dati$altezza, 0.9, na.rm = TRUE), 4)
[1] 46

boxplot(
    dati$altezza[dati$diametro < 40],
    dati$altezza[dati$diametro >= 40]
)

test <- test_cor <- cor.test(dati$diametro, dati$altezza, use = "complete.obs", alternative = "two.sided")
#non c'è correlazione tra altezza e diametro con h0

round(cor(dati$diametro, dati$altezza, use = "complete.obs"), 4)
[1] 0.4829 #correlazione campionaria
#più easy: > cor.test(dati$diametro, dati$altezza)

round(test$p.value, 4)
[1] 0

# < 0.01 e quindi correlazione signifciativamente (non nulla)

#### RETTA DI REGRESSIONE ####
mod <- lm(altezza ~ diametro, data = dati)
round(coef(mod), 4)
(Intercept)    diametro 
    15.4793      0.3488 # e in questo caso prendiamo altezza come y e diametro come x

### nullità del coefficiente (a = 0.05)

p_slope <- summary(mod)$coefficients["diametro", "Pr(>|t|)"]
[1] 1.096021e-19

round(p_slope, 4)
[1] 0
#se < 0.05 rifitiutiamo h0, e qindi è non nullo
#e il p-value del test di nullità del parametro è 0
