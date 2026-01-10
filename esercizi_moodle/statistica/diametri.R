View(dati)

table(dati$stabilimento=="B")

#proporzione di B (B/tot)
> 111/212

mean(dati$diametro[dati$stabilimento=="B"])

quantile(dati$diametro, 0.1)

hist(dati$diametro[dati$stabilimento=="B"], breaks=13)

#risposta quantitativa:
mean(dati$diametro[dati$stabilimento=="B"])->media
round(media) = 26
#vediamo che è 26 e quindi la risposta è: H0=26 contro H1=!26.

t.test(dati$diametro[dati$stabilimento == "B"])->test
round(test$p.value, 4) = 0

#Con livello di significatività pari a 0.05, posso affermare che:
#il diametro medio dei pezzi prodotti dallo stabilimento B è diverso da 26
# --> questo pk l'ipotesi nulla, che prima abbiamo appurato di dover rifiutare
#era proprio H0=26 --> rifiutandola la risposta diventa =!26.
