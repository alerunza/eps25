View(dati)

mean(dati$time_new_version)
sd(dati$time_new_version)

sum(dati$time_new_version > 26.5)

quantile(dati$time_new_version, 0.9)

hist(dati$time_old_version, breaks=10)

#appaiati pk posso fare new−old per ogni soggetto

t.test(dati$time_old_version, dati$time_new_version, alternative="greater", paired=TRUE, na.rm=TRUE)



p.value:
> t.test(dati$time_new_version, dati$time_old_version, alternative = "less", paired = TRUE)
