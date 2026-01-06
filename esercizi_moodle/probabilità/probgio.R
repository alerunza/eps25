| Sia X una variabile aleatoria distribuita come una Normale di media 0 e varianza 4
Determinare:

1 La probabilità che X sia minore di 1.5. Risposta 1 Domanda 27
 
> pnorm(1.5, 0, 2) #--> 2 == sqrt(4) -> deviazione standard 2 e 4 varianza
[1] 0.7733726

2 La probabilità che X sia maggiore di 3. Risposta 2 Domanda 27

> 1-pnorm(3, 0, 2)
[1] 0.0668072

3 La probabilità che X sia compresa fra -2 e 1.

# - -> compresa fra -2 e 1
> pnorm(1, 0, 2)-pnorm(-2, 0, 2)
[1] 0.5328072

4 La probabilità che X sia maggiore di 3 sapendo che X è minore di 6. Risposta 3 Domanda 27

> x6<-pnorm(6, 0, 2)
> x3<-pnorm(3, 0, 2)
> (x6-x3)/x6
[1] 0.06554578

| Sia X una variabile aleatoria distribuita come una Normale di media 2 e varianza 4. Sia Y una variabile aleatoria distribuita come una Normale standard, indipendente da X.
Determinare:

1 La probabilità che X sia maggiore di 3.

> 1-pnorm(3, 2, 2)
[1] 0.3085375

2 La probabilità che entrambe le variabili aleatorie siano maggiori di 3.

> x<-(1-pnorm(3, 2, 2))
> y<-(1-pnorm(3, 0, 1))
> x*y
[1] 0.0004164942

3 La probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

> x6->(1-pnorm(6, 2, 2))
> ((pnorm(7, 2, 2))-(pnorm(6, 2, 2)))/x6
[1] 0.7270493

| Sia X una variabile aleatoria distribuita come una Normale di media 10 e varianza 16.
Determinare:

1 La probabilità che X sia maggiore di 13.

> 1-pnorm(13, 10, 4)
[1] 0.2266274

2 La probabilità che X sia compresa fra 8.5 e 12.

> pnorm(12, 10, 4)-pnorm(8.5, 10, 4)
[1] 0.3376322

3 La probabilità che X sia minore di 8.5 oppure maggiore di 12 sapendo che X è maggiore di 8.

> x_oppure <- pnorm(8.5, 10, 4)+(1-pnorm(12, 10, 4))
> (x_oppure - pnorm(8, 10, 4))/(1-pnorm(8, 10, 4))
[1] 0.5117129

4 La probabilità che X sia minore di 7 sapendo che X è maggiore di 6. Risposta 4 Domanda 31

> (pnorm(7, 10, 4)-pnorm(6, 10, 4))/(1-pnorm(6, 10, 4))
[1] 0.08078983

| Sia X una variabile aleatoria distribuita come una Normale di media 2 e varianza 4. Sia Y una variabile aleatoria distribuita come una Normale standard, indipendente da X.
Determinare:

1 La probabilità che X sia compresa fra 1.5 e 2 sapendo che Y è maggiore di 7. Risposta 3 Domanda 33

> x_compresa<-pnorm(2, 2, 2)-pnorm(1.5, 2, 2)
> x_compresa
[1] 0.09870633
(e qui ignoriamo la condizionata Y 7, perchè standard e sarebbe stato 1-pnorm(7, 0, 1) x definizione perè equivale a circa 2. quindi 1-1=0 e la ignoro)

2 La probabilità che X sia minore di 7 sapendo che X è maggiore di 6.

> (pnorm(7, 2, 2)-pnorm(6, 2, 2))/(1-pnorm(6, 2, 2))
[1] 0.7270493

| Sia X una variabile aleatoria distribuita come una Normale di media 0.2 e varianza 1. Sia Y una variabile aleatoria distribuita come una Esponenziale di parametro ('rate') pari a 1, indipendente da X.
Determinare:

1. La probabilità che Y sia maggiore di 2.

> 1-pexp(2, 1)
[1] 0.1353353

2. La probabilità che almeno una delle due variabili aleatorie sia maggiore di 2.

TEORIA: 1 - P("tutte e due minori di 2") = 1 - P(X < 2) x P(Y < 2)
> 1 - (pnorm(2,0.2,1) * pexp(2,1))
[1] 0.166403

3. La probabilità che al massimo una delle due sia maggiore di 1.

> 1 - (1 - pnorm(1,0.2,1)) * (1 - pexp(1,1))
[1] 0.9220628

| Siano X1,X2,X3 tre variabili aleatorie indipendenti e identicamente distribuite, con distribuzione Normale di media 0.2 e varianza 1.
Determinare:

1. La probabilità che X_2 sia maggiore di 2.

> 1-pnorm(2, 0.2, 1)
[1] 0.03593032

2. La probabilità che almeno una delle tre variabili aleatorie sia maggiore di 1.

> 1-(pnorm(1, 0.2, 1)*pnorm(1, 0.2, 1)*pnorm(1, 0.2, 1))
[1] 0.5104267

3. La probabilità che Y = 2X_2 − 0.4 sia maggiore di 1.

Y ha distribuzione Normale di media 0 e varianza 4.
Quindi P ( Y > 1 ):

> 1 - pnorm(1,0,2)
[1] 0.3085375

| Sia X una variabile aleatoria distribuita come una Normale di parametri μ=3 e σ2=1. Sia Y una variabile aleatoria distribuita come una Normale standard, indipendente da X.
Determinare:

1 La probabilità che entrambe le variabili aleatorie siano maggiori della propria media.

> x<-1-pnorm(3, 3, 1)
> y<-1-pnorm(0, 0, 1)
> x*y
[1] 0.25

2 La probabilità che X sia compresa fra -1 e 0 sapendo che Y è maggiore di 7.

> pnorm(0, 3, 1)-pnorm(-1, 3, 1)
[1] 0.001318227

3 La probabilità che X sia minore di 2.5 oppure che Y sia maggiore di -1, sapendo che Y è maggiore di -2.

> oppure <- pnorm(2.5,3,1) + (1 - pnorm(-1,0,1)) / (1 - pnorm(-2,0,1))
> result <- oppure - pnorm(2.5,3,1) * ((1 - pnorm(-1,0,1)) / (1 - pnorm(-2,0,1)))
> round(result, 4)
[1] 0.9038

4 La probabilità che X sia minore di 7 sapendo che (X+1) è maggiore di 6.

num <- pnorm(7,3,1) - pnorm(5,3,1)
den <- 1 - pnorm(5,3,1)
num / den
[1] 0.9986079

| Sia Y una variabile aleatoria Normale standard e sia X = Y + 2.
Determinare:

1. Il valore atteso (=media) di X: 2 => pk media di y strd è 0 -> sostituiamo nella equazione data e risulta 0+2=2.

2. P({X <= 2.5} U {X > 3}):
> pnorm(2.5,2,1) + (1 - pnorm(3,2,1)) = 0.8501

3. La probabilità che X sia maggiore di 1.7 sapendo che X è maggiore di 1 Risposta 3 Domanda 43
> (1 - pnorm(1.7,2,1)) / (1-pnorm(1,2,1)) =  0.7344

| Sia X una variabile aleatoria continua distribuita come una Uniforme sull intervallo  [2,10] .
Determinare:

note: Intervallo: [2, 10] | Lunghezza: 10−2=8 | Media: μ=(2+10)/2=6.

1. La probabilità che X sia minore della sua media.
> punif(6, 2, 10)

2. La probabilità che X sia maggiore di 3.
> 1-punif(3, 2, 10)

3. La probabilità che X sia compresa fra -2 e 3.
> punif(3, 2, 10)-punif(-2, 2, 10) = 0.125

4. La probabilità che X sia maggiore di 3 sapendo che X è minore di 6.
> num<-punif(6, 2, 10)-punif(3, 2, 10)
> den<-punif(6, 2, 10)
> num/den = 0.75

| Sia  Y  una variabile aleatoria distribuita come una Normale di media -5 e varianza 1.
Consideriamo  X = Y + 4.
Determinare:

RICORDARE: la varianza non cambia!! solo la media deriva dalla equazione (-5+4=-1).

1. La probabilità che X sia negativa.
pnorm(0,-1,1) = 0.8413

2. La probabilità che  -X  sia compresa fra -2 e 1.
pnorm(1,1,1) - pnorm(-2,1,1) = 0.4987

3. La probabilità che X sia positiva sapendo che 2X è minore di 3.
(pnorm(3/2,-1,1) - pnorm(0,-1,1) ) / pnorm(3/2,-1,1) = 0.1534
