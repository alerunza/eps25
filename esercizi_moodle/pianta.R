load("pianta.RData")
ls()
    [1] "dati"

str(dati)
    'data.frame':	175 obs. of  2 variables:
    $ suolo : Factor w/ 3 levels "Argilloso","Calcareo",..: 2 2 1 2 2 2 1 2 2 3 ...
    $ pianta: Factor w/ 2 levels "Assente","Presente": 1 1 1 1 1 2 2 2 2 2 ...

head(dati)
    head(dati)
        suolo   pianta
    1  Calcareo  Assente
    2  Calcareo  Assente
    3 Argilloso  Assente
    4  Calcareo  Assente
    5  Calcareo  Assente
    6  Calcareo Presente

nrow(dati)  #totale osservazioni
    [1] 175

which(is.na(dati), arr.ind = TRUE) #posizioni NA
    row col
173 173   2


#La frequenza di osservazioni di suolo Calcareo è pari a Risposta 3 Domanda 12
#50 e la corrispondente frequenza relativa è pari a Risposta 4 Domanda 12
#0.2857
freq_calc <- sum(dati$suolo == "Calcareo", na.rm = TRUE)
freq_rel  <- freq_calc / sum(!is.na(dati$suolo)) 

freq_calc
    [1] 50
round(freq_rel, 4)
    [1] 0.2857

#La frequenza di osservazioni di suolo Calcareo e con la presenza della pianta X è pari a
#32

sum(dati$suolo == "Calcareo" & dati$pianta == "Presente", na.rm = TRUE)
    [1] 32

barplot(table(dati$suolo))

obs <- table(dati$suolo)
chisq.test(obs, p = c(1/3, 1/3, 1/3))

	Chi-squared test for given
	probabilities

data:  obs
X-squared = 2, df = 2,
p-value = 0.3679
#Se:
# p-value < 0.05 → rifiuti H₀
# p-value >= 0.05 → non rifiuti H₀
#In questo caso non rifiutiamo H0 dato che il p-value è maggiore di 0.05

chisq.test(obs, p = c(1/3, 1/3, 1/3))$expected
Argilloso  Calcareo  Sabbioso 
 58.33333  58.33333  58.33333 
#Valori attesi sotto H0 di distribuzione uniforme
#Regola di Cochran (affidabilità)
min(chisq.test(obs, p = c(1/3, 1/3, 1/3))$expected) >= 5
    [1] TRUE
#Regola di Cochran rispettata
#Valori attesi sotto H0 di distribuzione uniforme
#quindi è 58
#e infine i risultati del test sono affidabili perché la regola è rispettata
