View(dati)

mean(dati$durata[dati$marca=="B"])

sd(dati$durata[dati$marca=="B"])

sum(dati$durata[dati$marca=="B"]>=10)

quantile(dati$durata[dati$marca=="B"], 0.95)

boxplot(dati$durata~dati$marca)

#risposta quantitativa a: B ha media superiore?
#un test di ipotesi per la media delle differenze, per campioni appaiati, con ipotesi nulla H_0: mu_A = mu_B

test<-t.test(dati$durata[dati$marca=="B"], dati$durata[dati$marca=="A"], alternative="greater", na.rm=TRUE)
round(test$p.value, 4)

WAR IS OVER
