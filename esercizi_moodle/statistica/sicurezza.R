table(dati$sicurezza=="presente")

sum(is.na(dati))

mean(dati$vel[dati$sicurezza=="presente"])
sd(dati$vel[dati$sicurezza=="presente"])

quantile(dati$vel, 0.9, na.rm=TRUE)

#istogramma a campana: con un solo picco centrale praticamente

#la domanda che viene fatta è: Qual è la domanda statistica vera?
#“Più del 60% dei veicoli in circolazione dispone di dispositivi di sicurezza stradale.”
#Traduzione matematica: ipotesi:
#H0: p=0.6
#𝐻1: p>0.6 --> quindi in caso "greater"

#comando: binom.test(x, n, p = 0.6, alternative = "greater")
#x=numero di successi
#y=numero oss. totali
test<-binom.test(71, 102, p = 0.6, alternative = "greater")
round(test$p.value, 4)

#la stima del parametro oggetto del test è pari a:
71/102 #num / tot. obs.
