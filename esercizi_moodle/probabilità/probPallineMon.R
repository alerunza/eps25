#Domanda 111
#L’urna A contiene 10 palline bianche e 10 nere. L’urna B contiene 5 palline bianche e 15 nere. 
#Viene lanciata una moneta non truccata: se esce testa allora vengono fatte 3 estrazioni senza reinserimento dall’urna A; 
#se esce croce vengono fatte 5 estrazioni con reinserimento dall’urna B.

#1 Calcolare la probabilità di estrarre esattamente 2 palline bianche sapendo di aver ottenuto testa.
#2 Calcolare la probabilità di estrarre esattamente 2 palline bianche sapendo di aver ottenuto croce.
#3 Calcolare la probabilità che vengano estratte esattamente 2 palline bianche.
#4 Sapendo che sono state estratte esattamente 2 palline bianche, calcolare la probabilità che sia uscita testa.

# soluzione:

#1
#P(BB | T)
choose(10,2) * choose(10,1) / choose(20, 3)

#2
#P(BB | C)
opzione 1: dbinom(2, 5, 5/20)
opzione 2: choose(5,2)*(1/4)^2*(3/4)^3
#opzione 2 spegazione:
# - sceglie 2/5 estrazioni
# - sceglie modi di quelle -->1/4 sono le 5/20 bianche e le nere 3/4
# - e queste ultime rispettivamente sono le 2 bianche estratte e 3 restanti (su 5 estrazioni)

#3
0.5*(choose(10,2)*choose(10,1)/choose(20,3)) +
0.5*(choose(5,2)*(1/4)^2*(3/4)^3)
#spiegazione:
# 0.5 è 1/2 di prob per T o C.
# poi umero di modi per scegliere 2 palline bianche dalle 10 bianche dell’urna A.

#4
P(T|BB) = P(BB|T)P(T) / P(BB)
num <- (choose(10,2) * choose(10,1) / choose(20, 3)) * 0.5
den <- num + (choose(5,2)*(1/4)^2*(3/4)^3) * 0.5
num / den
# bayes

#----------------------------------------------------------------------------#

#Domanda 104
#Procedi con il seguente esperimento: lanci una moneta truccata che restituisce testa con probabilità 0.3. 
#Se ottieni testa estrai con reimbussolamento 8 palline da un’urna che ne contiene 11, delle quali 4 sono bianche e 7 sono verdi. 
#Se ottieni croce estrai, con reimbussolamento dalla stessa urna, 6 palline.

# 1 Con quale probabilità ottieni 3 palline verdi?
# 2 Con quale probabilità ottieni 7 palline verdi?
# 3 Con quale probabilità ottieni meno di () 3 palline verdi?
# 4 Con quale probabilità avevi ottenuto testa se hai estratto meno di () 3 palline verdi?

# soluzione:

# 1
# 3 verdi può uscire in due modi:
# - esce testa e poi 3 verdi dalle 8 estrazioni
# - esce croce e poi 3 verdi dalle 6 estrazioni
# 7/11 è la prob di estrarre una pallina verde
# 0.3 è la prob di uscire testa
# 0.7 è la prob di uscire croce (il resto)
dbinom(3, 8, 7/11) * 0.3 + dbinom(3, 6, 7/11) * 0.7

# 2
# 7 verdi può uscire in due modi:
# - esce testa e poi 7 verdi dalle 8 estrazioni
# - esce croce e poi 7 verdi dalle 6 estrazioni
dbinom(7, 8, 7/11) * 0.3 + dbinom(7, 6, 7/11) * 0.7

# 3
# meno di 3 verdi può uscire in due modi:
# - esce testa e poi meno di 3 verdi dalle 8 estrazioni
# - esce croce e poi meno di 3 verdi dalle 6 estrazioni
# minore di 3 = 0, 1, 2
# quindi sommo le tre probabilità
# 7/11 è la prob di estrarre una pallina verde
# 0.3 è la prob di uscire testa
# 0.7 è la prob di uscire croce (il resto)
dbinom(0, 8, 7/11) * 0.3 + dbinom(1, 8, 7/11) * 0.3 + dbinom(2, 8, 7/11) * 0.3 +
dbinom(0, 6, 7/11) * 0.7 + dbinom(1, 6, 7/11) * 0.7 + dbinom(2, 6, 7/11) * 0.7

# 4
# Vogliamo calcolare P(T | X < 3), dove:
# T = evento "esce Testa"
# X = numero di palline verdi estratte

# minore di 3 = 0, 1, 2

# Applichiamo il teorema di Bayes:
# P(T | X < 3) = [ P(X < 3 | T) * P(T) ] / P(X < 3)

# Calcoliamo il numeratore:
# P(X < 3 | T) * P(T)
# Se esce Testa, estraiamo 8 palline con reimmissione,
# quindi X | T ~ Binomiale(8, 7/11)
num <- (dbinom(0, 8, 7/11) +
        dbinom(1, 8, 7/11) +
        dbinom(2, 8, 7/11)) * 0.3

# Calcoliamo il denominatore usando la legge della probabilità totale:
# P(X < 3) = P(X < 3 | T)*P(T) + P(X < 3 | C)*P(C)
# Se esce Croce, estraiamo 6 palline:
# X | C ~ Binomiale(6, 7/11)
den <- num +
       (dbinom(0, 6, 7/11) +
        dbinom(1, 6, 7/11) +
        dbinom(2, 6, 7/11)) * 0.7

num / den
#----------------------------------------------------------------------------#

#Domanda 105
#Procedi con il seguente esperimento: lanci una moneta truccata che restituisce testa con probabilità 0.2. 
#Se ottieni testa estrai con reimbussolamento 8 palline da un’urna che ne contiene 12, delle quali 5 sono bianche e 7 sono verdi. 
#Se ottieni croce estrai, con reimbussolamento dalla stessa urna, 6 palline.

#1  Con quale probabilità ottieni 3 palline verdi?
#2  Con quale probabilità ottieni 7 palline verdi?
#3  Con quale probabilità ottieni meno di () 3 palline verdi?
#4  Con quale probabilità avevi ottenuto testa se hai estratto meno di () 3 palline verdi?

# soluzione:

# 1
dbinom(3, 8, 7/12) * 0.2 + dbinom(3, 6, 7/12) * 0.8

# 2
dbinom(7, 8, 7/12) * 0.2 + dbinom(7, 6, 7/12) * 0.8

# 3
dbinom(0, 8, 7/12) * 0.2 + dbinom(1, 8, 7/12) * 0.2 + dbinom(2, 8, 7/12) * 0.2 +
dbinom(0, 6, 7/12) * 0.8 + dbinom(1, 6, 7/12) * 0.8 + dbinom(2, 6, 7/12) * 0.8

# 4
num <- (dbinom(0, 8, 7/12) +
        dbinom(1, 8, 7/12) +
        dbinom(2, 8, 7/12)) * 0.2

den <- num +
       (dbinom(0, 6, 7/12) +
        dbinom(1, 6, 7/12) +
        dbinom(2, 6, 7/12)) * 0.8

num / den
#----------------------------------------------------------------------------#

#Domanda 106
#Procedi con il seguente esperimento: lanci una moneta truccata che restituisce testa con probabilità 0.4. 
#Se ottieni testa estrai con reimbussolamento 8 palline da un’urna che ne contiene 11, delle quali 2 sono bianche e 9 sono verdi. 
#Se ottieni croce estrai, con reimbussolamento dalla stessa urna, 6 palline.

# 1 Con quale probabilità ottieni 3 palline verdi?
# 2 Con quale probabilità ottieni 7 palline verdi?
# 3 Con quale probabilità ottieni almeno (>=) 3 palline verdi?
# 4 Con quale probabilità avevi ottenuto testa se hai estratto meno di () 3 palline verdi?

# soluzione:

# 1
dbinom(3, 8, 9/11) * 0.4 + dbinom(3, 6, 9/11) * 0.6

#2
dbinom(7, 8, 9/11) * 0.4 + dbinom(7, 6, 9/11) * 0.6

#3
#dato che le estrazioni le facciamo da 0 a 8 o 6, calcoliamo il complemento:
# P(X >= 3) = 1 - P(X < 3)
1 - (dbinom(0, 8, 9/11) * 0.4 + dbinom(1, 8, 9/11) * 0.4 + dbinom(2, 8, 9/11) * 0.4 +
dbinom(0, 6, 9/11) * 0.6 + dbinom(1, 6, 9/11) * 0.6 + dbinom(2, 6, 9/11) * 0.6)

# oppure direttamente sommando le probabilità:
# di base le estrazioni sono da 0 a 8 o 6, quindi sommo da 3 a 8 o 6
# almeno 3 verdi = 3,4,5,6,7,8 per 8 estrazioni
dbinom(3, 8, 9/11) * 0.4 +
dbinom(4, 8, 9/11) * 0.4 +
dbinom(5, 8, 9/11) * 0.4 +
dbinom(6, 8, 9/11) * 0.4 +
dbinom(7, 8, 9/11) * 0.4 +
dbinom(8, 8, 9/11) * 0.4 +
# 3,4,5,6 per 6 estrazioni
dbinom(3, 6, 9/11) * 0.6 +
dbinom(4, 6, 9/11) * 0.6 +
dbinom(5, 6, 9/11) * 0.6 +
dbinom(6, 6, 9/11) * 0.6

#4
num <- (dbinom(0, 8, 9/11) +
        dbinom(1, 8, 9/11) +
        dbinom(2, 8, 9/11)) * 0.4

den <- num +
       (dbinom(0, 6, 9/11) +
        dbinom(1, 6, 9/11) +
        dbinom(2, 6, 9/11)) * 0.6

num / den
#----------------------------------------------------------------------------#

#Domanda 