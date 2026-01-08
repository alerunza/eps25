#quanti mancanti
which(is.na(mais), arr.ind=TRUE)

#media e sd (senza fertilizzante => ferilizzante=0)
mean(mais$altezza[mais$fertilizzante=="0"])
sd(mais$altezza[mais$fertilizzante=="0"])

#Il 3% delle piante più alte ha altezze superiori a:
> quantile(mais$altezza, 0.97, na.rm=TRUE)

#scatteplot (con i cerchietti)
plot(mais$fertilizzante, mais$altezza)

test<-t.test(mais$fertilizzante, mais$altezza, paired=TRUE)
round(test$p.value, 4)
[1] 0
