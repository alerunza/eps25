View(pomodori)

mean(pomodori$produzione[pomodori$fertilizzante=="fertilizzante A"], na.rm=TRUE)

sd(pomodori$produzione[pomodori$fertilizzante=="fertilizzante A"], na.rm=TRUE)

sum(pomodori$produzione > 2 & pomodori$produzione < 3)

quantile(pomodori$produzione, 0.9)

hist(pomodori$produzione, breaks=12)

#con confidenza=0.9 (richiesta)
test<-t.test(pomodori$produzione[pomodori$fertilizzante == "fertilizzante A"], pomodori$produzione[pomodori$fertilizzante == "fertilizzante B"], paired = FALSE, conf.level = 0.9)
test #e vedo i valori dell'intervallo di confidenza

