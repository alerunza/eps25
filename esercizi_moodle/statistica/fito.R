sum(is.na(fito))

mean(fito$fitoplancton[fito$temperatura<18.5], na.rm=TRUE)

sd(fito$fitoplancton[fito$temperatura<18.5], na.rm=TRUE)

quantile(fito$temperatura, 0.05, na.rm=TRUE)

#scatteplot = comando plot
plot(fito$temperatura, fito$fitoplancton)

cor.test(fito$temperatura, fito$fitoplancton)

test<-cor.test(fito$temperatura, fito$fitoplancton)
round(test$p.value, 4)

mod<-lm(fito$temperatura ~ fito$fitoplancton)
round(coef(mod), 4)

sum<-summary(mod)
sum$r.squared
