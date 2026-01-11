View(snack)

which(is.na(snack), arr.ind=TRUE)

#frequenza
table(snack$snack=="Frutta Secca")

#frequenza relativa
freq/tot oss.

table(snack$snack[snack$occasione=="Pausa"]=="Frutta Secca")

barplot(table(snack$snack))

test<-chisq.test(table(snack$snack, snack$occasione))
> round(test$p.value, 4)

#frequenza più piccola (regola di Cochran)
min(test$expected)
[1] 5.948339

#regola di Cochran rispettata o no?
[1] 5.948339 >= 5  #---> quindi è rispettata.
