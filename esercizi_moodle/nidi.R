load("nidi.RData")

ls()
[1] "dati"

str(dati)
'data.frame':	202 obs. of  2 variables:
 $ Foresta: Factor w/ 2 levels "Primaria","Secondaria": 1 1 2 2 2 2 1 1 2 2 ...
 $ Nido   : Factor w/ 2 levels "Non occupato",..: 2 2 2 2 2 2 1 2 2 2 ...

head(dati)
     Foresta     Nido
1   Primaria Occupato
2   Primaria Occupato
3 Secondaria Occupato
4 Secondaria Occupato
5 Secondaria Occupato
6 Secondaria Occupato

names(dati)
[1] "Foresta" "Nido"  

which(is.na(dati), arr.ind = TRUE)
   row col
33  33   2
#col 1 = Foresta
#col 2 = Nido
#quindi se è 2 alla riga 33 mancherà il valore di Nido

### frequenza primaria e relativa ###

freq_prim <- sum(dati$Foresta == "Primaria", na.rm = TRUE)
freq_rel <- freq_prim / sum(!is.na(dati$Foresta))

freq_prim
[1] 87

round(freq_rel, 4)
[1] 0.4307

### frequenza forsta primaria e nido occupato ###

sum(dati$Foresta == "Primaria" & dati$Nido == "Occupato", na.rm = TRUE)
[1] 51

barplot(table(dati$Nido))

### chi-quadro
#✔️ chi-quadro per l’indipendenza con
#H₀: le due variabili sono indipendenti (corretta)
#H₁: le due variabili non sono indipendenti

tab <- table(dati$Foresta, dati$Nido)
test <- chisq.test(tab)

test$p.value
[1] 6.534305e-12

round(test$p.value, 4)
[1] 0
#se è 0 < 0.05 rifiuto h0
# e quindi le due variabili non sono indipendenti

min(test$expected) #regola di Cochran (la piu piccola frequenza attesa deve essere >= 5)
[1] 15.83085