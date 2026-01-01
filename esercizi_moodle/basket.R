load("basket.RData")

nrow(basket)

table(basket$`Ruolo in campo` == "Playmaker")

FALSE  TRUE 
  259    65 --> #playmaker

#oppure

sum(basket$`Ruolo in campo` == "Playmaker")
#65

round(mean(basket$`Ruolo in campo` == "Playmaker"), 4)
[1] 0.2006 --> #20.06% (proportion of playmakers)

round(mean(basket$`Scarpa preferita`[basket$`Ruolo in campo` == "Playmaker"] == "Basse" , na.rm = TRUE), 4)
[1] 0.9231 --> #92.31% of playmakers prefer low-top shoes

barplot(table(basket$`Scarpa preferita`))
#corretto

x <- sum(basket$`Ruolo in campo` == "Playmaker")
#65
n <- nrow(basket)
#324
# two.sided = controlla se la proporzione è diversa da 0.25 (?)
test <- prop.test(x, n, p = 0.25, alternative = "two.sided", correct = FALSE)

round(test$p.value, 4)
[1] 0.0401 --> #p-value = 0.0401
#se p-value < 0.01 allora rifiutiamo H0
#se p-value >= 0.01 allora non rifiutiamo H0
#conclusione: non rifiutiamo H0 al livello di significatività 0.01 e affermiamo che la proporzione di playmaker è 25%
#H0: p = 0.25
#H1: p != 0.25

# da CAPIRE meglio
round(test$conf.int, 4)
[1] 0.1583 0.2529 --> #intervallo di confidenza al 99% per la proporzione di playmaker è (15.83%, 25.29%)