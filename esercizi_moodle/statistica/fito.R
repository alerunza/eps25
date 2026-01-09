sum(is.na(fito))

mean(fito$fitoplancton[fito$temperatura<18.5], na.rm=TRUE)

sd(fito$fitoplancton[fito$temperatura<18.5], na.rm=TRUE)

quantile(fito$temperatura, 0.05, na.rm=TRUE)

#scatteplot = comando plot
plot(fito$temperatura, fito$fitoplancton)

#
cor.test(fito$temperatura, fito$fitoplancton)

test<-cor.test(fito$temperatura, fito$fitoplancton)
round(test$estimate, 4) #correlazione campionaria (o leggere "cor")
round(test$p.value, 4)

#regressione lineare
mod<-lm(fito$temperatura ~ fito$fitoplancton)
round(coef(mod), 4)

#R^2
sum<-summary(mod)
sum$r.squared
