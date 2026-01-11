#La densità (PDF) della v. a. X, che misura il tempo (in secondi) necessario ad una macchina
#per completare un test su un campione di sangue, è data dalla la seguente funzione:...
#f(x) = 0.04 se 50 < x < 75
#       0    altrimenti
#Quando esegui più test, puoi considerare le variabili aleatorie,
#che descrivono i tempi di completamento dei diversi test, indipendenti.

#1) Con che probabilità la macchina impiega meno di 50 secondi per completare un test?
#P(x<50) = 0 = punif(50,50,75)
punif(50,50,75)
#con the p. impiega esattamente 50 secondi?
dunif(50,50,75) #0.04

#2) Con che probabilità la macchina impiega più di 1 minuto per completare un test?
#P(x>60) = 1 - punif(60,50,75) oppure..
#P(x>60) = punif(60,50,75,lower.tail=FALSE)
1 - punif(60,50,75) #1−P(X≤60)
punif(60,50,75,lower.tail=FALSE) #1 - P(X≤60) = P(X>60)

#3)Oggi devi eseguire 3 test. Con che probabilità tutti saranno completati in un tempo maggiore ad 1 minuto?
#uso dbinom con n = 3 (numero di test) e p = P(x>60) (probabilità di successo)
n = 3
p = punif(60,50,75,lower.tail=FALSE)
dbinom(3,n,p)

#4)Oggi devi eseguire 3 test. Con che probabilità almeno (≥)
#uno dei test sarà completato in un tempo maggiore ad 1 minuto?

#uso pbinom con x=n-1 n = 3 e p=P(x>60)
n = 3
p = punif(60,50,75,lower.tail=FALSE) #P(x>60)
pbinom(1,n,p,lower.tail = FALSE) #P(X>1)
pbinom(0,n,p,lower.tail = FALSE) #P(X>0) = P(X>=1)

#================================================================

#Il tempo di rottura X(in anni) di un pezzo meccanico ha la seguente densità (PDF) disegnata in rosso:...

#1)Il tempo medio di rottura del pezzo è pari a
#abbiamo un grafico con pdf esponenziale
#E(X) di esponenziale è 1/lambda dove lambda è il valore della curva a x=0. Cioè 0.2
lambda = 0.2
1/lambda


#2)La probabilità che il pezzo si rompa dopo 6anni è pari a
#uso la VA continua pexp
pexp(6,lambda,lower.tail = FALSE)

#3)La probabilità che il pezzo si rompa tra 4 e 6 anni è pari a
#P(X=6) - P(X=4)
pexp(6,lambda,lower.tail = FALSE) - pexp(4,lambda,lower.tail = FALSE) #lo trasformo in positivo

#4)Se il pezzo sta funzionando correttamente da 3 anni, la probabilità che si romperà prima di 6 anni è pari a
#Importante: NON C'E memoria, condizionata non necessaria
#assenza di memoria=1−P(X>6−3)
pexp(6-3,lambda)

#================================================================

#Il tempo X(in minuti) necessario ad una cellula per dividersi
#ha la seguente densità (PDF) disegnata in rosso:
#nel grafico X ha una legge normale

#1)Il tempo medio di divisione cellulare è pari a
#Il parametro mean oppure u è il valore sull'asse delle x dove la curva di densità è massima
#E(X) = mean
mean = 60

#2) La deviazione standard del tempo di divisione cellulare è pari a
#P(μ−3⋅σ<X<μ−3⋅σ)=0.9973, quindi la parte della densità che è visibimente positiv
#è compresa in questo intervallo. Tra le risposte possibili, l’unica che è compatibile con la proposizione precedente è $ =$ 5.
sd = 5

#3)La probabilità che la divisione cellulare impieghi un tempo compreso tra 50 e 60 secondi è pari a
#P(50<X<60) = P(X<60) - P(X<50) 
p1= pnorm(60,mean,sd) - pnorm(50,mean,sd)

#4)Se la divisione cellulare è iniziata da 50 secondi, la probabilità che si concluderà prima di 60 secondi è pari a
#P(X<60|X>50) = P(50<X<60) / P(X>50)
pnorm(50,mean,sd,FALSE) # P(X>50)
p1 / pnorm(50,mean,sd,FALSE)

#================================================================

#Si osservi il grafico della funzione f, nella seguente figura.

#1)La funzione f è:
#la funzione di distribuzione (CDF) di una variabile aleatoria discreta X
#con immagine 0,1,2,3

#2)P(X≤1.5) = P(X<=1) cioè f(1) = 0,843750

#3)P(−1<X<1) = P(X<1) = P(X<=0) =f(0) = 0,4219..

#4) CDF di...
#Binomiale

#================================================================

#La variabile aleatoria X continua (AREA) ha funzione della densità di probabilità (PDF) data nel seguente grafico.
#1)P(X>0)
#metodo 1: conto l'area non nulla dei rettangoli con X>0
#metodo 2: vedo che il grafico è simmetrico rispetto a y. logicamente P(X>0) = 0.5

#2)P(X≤1.5) = (area rettangolo con b=[-3,-1] e h=0,25) + (area rettangolo con b=[1,1.5] e h=0,25
2*0.25 + 0.5*0.25

#3)P(−2<X<2) stesso ragionamento. meta del triangolo a sinistra + metà di quello a destra
#... 0.5

#E(X) = 0 perchè il grafico è simmetrico per y e x=0 vale y=0

#================================================================

#Uno studio dell’Organizzazione Mondiale della Sanità relativo alle condizioni di salute in diversi paesi
#riferisce che in Canada la media della pressione sistolica del sangue è 121 e che la sua deviazione standard è 16.
#I valori misurati superiori a 140 sono considerati sintomo di una pressione sistolica “alta” e diciamo, in questi casi,
#che il soggetto soffre di pressione alta. Si supponga la distribuzione della pressione sistolica normale.

#1)Il valore soglia pari a 140 corrisponde al percentile
#X ha legge normale di parametri media = 121 e dev.st =16
pnorm(140,121,16)
#0.8824848 *100 = 88,2485 %

#2)La probabilità che un canadese soffra di pressione alta è pari a
#P(X>140)
pnorm(140,121,16) #P(X<=140)
p = pnorm(140,121,16,lower.tail = FALSE)#P(X>140)

#3)Il ??????? %(in percentuale) dei canadesi ha pressione sistolica compresa tra 100 e 140.
#P(100<=X<=140) = P(X<=140) - P(X<=100)
pnorm(140,121,16) - pnorm(100,121,16)
#0.787809 * 100 = 78,7809

#4)La probabilità che più di (>) 5 canadesi, in un campione casuale
#- estratto con reimbussolamento - composto da 20 individui, soffrano di pressione alta è pari a
pbinom(5,20,p) #P(X<=5)
pbinom(5,20,p,lower.tail = FALSE) #P(X>5)

#================================================================

#Una batteria ha un tempo di vita (in anni) X con distribuzione esponenziale di media pari a 4.25.
#X esponenziale con E(X) = 4.25 e so che E(X) = 1 / lambda
#di conseguenza lambda = 1/ E(X)
lambda = 1 / 4.25

#1)La probabilità che la batteria duri più di 4 anni è pari a
pexp(4,lambda) #P(X<=4)
pexp(4,lambda,lower.tail = FALSE) #P(X>4)

#2)La probabilità che la batteria duri più di 4 anni, sapendo che sta correttamente funzionando da 1 anno, è pari a
#osservo che la condizionata non vale nella exp, tutta via devo fare
pexp(4-1,lambda,lower.tail = FALSE)

#3) Var(X)
#so che la var (X) di exp è 1/lambda^2
1/(lambda^2)

#4)Considera un sistema di 3 batterie di questo tipo messe in serie (che quindi funziona se ogni batteria funziona).
#La probabilità che un tale sistema funzioni per almeno 4 anni è pari a
#so che sono eventi dipendenti, quindi non posso usare binomiale ne bernoulli ne geom
p = pexp(4,lambda,lower.tail = FALSE) #P(X>4)
p * p * p
p^3

#================================================================

#Vuoi comprare un nuovo paio di scarpe per andare a correre.
#Hai confrontato i prezzi delle scarpe da corsa in due negozi differenti, il negozio A e il negozio B.
#Nel negozio A il prezzo delle scarpe da corsa ha distribuzione normale con media pari a 98 euro e deviazione standard pari a 12 euro.
#Nel negozio B il prezzo delle scarpe da corsa ha distribuzione normale con media pari a 104 euro e deviazione standard pari a 10 euro.
#Il negozio A è più vicino a casa tua, quindi la probabilità che comprerai le scarpe in quel negozio è pari a 0.7.
A = 0.7 #compro ad A
Ac = 0.3 #compro a B
meanA = 98
sdA = 12
meanB = 104
sdB = 10

#1)Nel negozio A, il prezzo pari a 80 euro corrisponde al percentile (o quantile):
pnorm(80,meanA,sdA) * 100 #P(X<=80) * 100

#2)La probabilità che più di (>) 15 paia di scarpe, in un campione casuale
#- estratto con reimbussolamento dalle scarpe in vendita nel solo negozio A - composto da 20 paia di scarpe,
#costino più di 80 euro è pari a
p80 = pnorm(80,meanA,sdA,FALSE) #P(X>80|A)
pbinom(15,20,p80,FALSE) #P(X>80) per almeno 15 paia su 20

#3)Considerando entrambi i negozi, la probabilità che pagherai le scarpe nuove più di 110 euro è pari a
PX110 = pnorm(110,meanA,sdA,FALSE)* A + pnorm(110,meanB,sdB,FALSE) * Ac #P(X>110)

#4)Se hai pagato le scarpe più di 110 euro, con che probabilità le hai comprate nel negozio A?
#P(A|X>110) = P(X>110|A) * P(A) / P(X>110)
#P(X>110|A) = pnorm(110,meanA,sdA,FALSE)
pnorm(110,meanA,sdA,FALSE)

(pnorm(110,meanA,sdA,FALSE)*A )/ (PX110)

#================================================================

#Si osservi il grafico della funzione f, nella seguente figura in rosso:

#1)La funzione f è la funzione della massa di probabilità (PMF) di una variabile aleatoria discreta X

#2)P(X≤1.5)
#P(X≤1.5) = P(X<=1) = P(X=0) + P(X=1) =
0.36 + 0.48

#3)P(−1<X<1) = P(X=0)
0.36

#4)La variabile aleatoria X ha distribuzione:
#BERNOULLI

#5)La media della variabile aleatoria X è pari a
#sappiamo che E(X) di Binomiale è n*p
n = 2 #da 0 a 2 size
p = sqrt(0.16) #radice quadrata di f(2)
E = n * p


#================================================================

#2)P(X=1|Y=−1)
#so che P(X=1, Y=-1) = 0,2
#uso la p. delle probabilità condizionate INSIEMI
#P(X=1|Y=−1) = P(X=1 v Y=-1) / P(Y=-1)
0.2/0.25

#3) E(X):
1*0.7 + 2*0.3
#E(Y):
-1*0.25 + 3*0.55 + 6*0.2
#4) E(X^3):
(1^3)*0.7 + (2^3)*0.3

#5)X e Y sono indipendenti?
#NO
#P(X=1,Y=−1)=0.2≠P(X=1)⋅P(Y=−1)=0.7⋅0.25=0.175 