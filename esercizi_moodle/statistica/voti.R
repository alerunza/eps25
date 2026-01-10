View(dati)

table(dati$scuola)

mean(dati$voto[dati$scuola=="A"])
sd(dati$voto[dati$scuola=="A"])

quantile(dati$voto[dati$scuola=="A"], 0.95)

boxplot(dati$voto[dati$scuola=="A"], dati$voto[dati$scuola=="B"], na.rm=TRUE)

corA<-t.test(dati$voto[dati$scuola=="A"], conf.level=0.99, na.rm=TRUE)
corA$conf.int

corB<-t.test(dati$voto[dati$scuola=="B"], conf.level=0.99, na.rm=TRUE)
corB$conf.int

#Dall’analisi dei risultati ottenuti ai punti 6. e 7. posso affermare che:
#gli intervalli di confidenza non si sovrappongono, quindi i voti medi nelle due scuole sono diversi
