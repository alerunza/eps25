#Si tira quattro volte una moneta EQUA. Calcolare:

#1 la probabilità dell'evento A: "I primi tre risultati sono uguali":
#2 la probabilità dell'evento B: "Gli ultimi due risultati sono uguali":
#3 P(A ∩ B):

#soluzione:

#1
# i primi tre risultati sono uguali: possono essere tutti teste o tutti croce
p_A <- 2 * (1/2)^3
round(p_A, 4)
[1] 0.25

#2
# gli ultimi due risultati sono uguali: possono essere tutti teste o tutti croce
p_B <- 2 * (1/2)^2
round(p_B, 4)
[1] 0.5

#3
# i primi tre risultati sono uguali e gli ultimi due sono uguali: i primi tre
# possono essere tutti teste o tutti croce, e l'ultimo risultato deve essere uguale
# al terzo
p_A_and_B <- 2 * (1/2)^4
round(p_A_and_B, 4)
[1] 0.125

# Si tira quattro volte una moneta non equa, con probabilità di ottenere testa pari a 1/3. 
# Calcolare:

#1 la probabilità dell'evento A: "I primi tre risultati sono uguali":
#2 la probabilità dell'evento B: "Gli ultimi due risultati sono uguali":
#3 P(A ∩ B):

#soluzione:

#1
# i primi tre risultati sono uguali: possono essere tutti teste o tutti croce
p_A <- (1/3)^3 + (2/3)^3
round(p_A, 4)
[1] 0.3333

#2
# gli ultimi due risultati sono uguali: possono essere tutti teste o tutti croce
p_B <- (1/3)^2 + (2/3)^2
round(p_B, 4)
[1] 0.5556

#3
# i primi tre risultati sono uguali e gli ultimi due sono uguali: i primi tre
# possono essere tutti teste o tutti croce, e l'ultimo risultato deve essere uguale
# al terzo
p_A_and_B <- (1/3)^4 + (2/3)^4
round(p_A_and_B, 4)
[1] 0.2099

— Esercizio —

| Si hanno a disposizione 3 monete. La moneta A ha probabilità di ottenere testa pari a  p . La moneta B ha probabilità di ottenere testa pari a  p/2 . La moneta C ha probabilità di ottenere testa pari a  p/3 . Si fanno tre lanci consecutivi con la seguente procedura:

- Primo lancio: Si lancia la moneta A.
- Secondo lancio: Se al lancio precedente si è ottenuto testa allora si lancia la moneta A. Se si è avuto croce si lancia la moneta B.
- Terzo lancio: Se nel lancio precedente si è ottenuto testa allora si lancia la moneta A. Se nel primo lancio si è ottenuto testa e nel secondo lancio si è ottenuto croce, allora si lancia la moneta B. Se nel primo e nel secondo lancio si è ottenuto croce allora si lancia la moneta C.

1. Se  p = 1/4 , determinare la probabilità della sequenza (Testa,Testa,Testa):
(1/4)^3 = 0.0156

2. Se  p = 1/2 , determinare la probabilità della sequenza (Croce, Croce, Croce):
poichè qui si tratta di croce, prendo le probabilità di ciauscuna moneta (calcolata per testa) e poi prendo tutto il resto (per croce)
e si moltiplica tutto --> 1/2 * 3/4 * 5/6 = 0.3125

3. Per quale valore di  p  la sequenza (Croce, Croce, Croce) ha probabilità zero?
P = 1 --> semplicemente pk così significa x def. che esce per forza testa al primo lancio --> cosa che esclude quindi CCC (prob=0, come richiesto).

| Si hanno a disposizione 3 scatole. La scatola A contiene 12 palline rosse e 12 palline nere. La scatola B contiene 10 palline rosse e 30 palline nere. La scatola C contiene 3 palline rosse e 15 palline nere. Si estraggono tre palline in tre estrazioni consecutive con reintroduzione con la seguente procedura:

- Prima estrazione: Si estrae una pallina dalla scatola A.
- Seconda estrazione: Se all'estrazione precedente si è estratta una pallina rossa allora si estrae una pallina dalla scatola A. Se invece si è estratta una pallina nera si estrae una pallina dalla scatola B.
- Terza estrazione: Se nell'estrazione precedente si è estratta una pallina rossa allora si estrae una pallina dalla scatola A. Se nella prima estrazione si è estratta una pallina rossa e nella seconda estrazione si è estratta una pallina nera, allora si estrae una pallina dalla scatola B. Infine, se nella prima e nella seconda estrazione si è estratta una pallina nera allora si estrae una pallina dalla scatola C.

!!! REGOLA: con reinserzione ⇒ ogni estrazione è indipendente dato la scatola scelta, quindi per una sequenza si moltiplica.

Determinare la probabilità della sequenza (Rossa, Rossa, Rossa):
(1/2)^3 --> dato che per la prima scatola sono 12 e 12 (per un tot di 24) e poi così via dato che se R nella A, si estrae di nuovo dalla A (sempre 1/2 prob).

Determinare la probabilità della sequenza (Nera, Nera, Nera):
(1/2)*(1/4)*(5/6) --> da subito mi segno la prob per R e N per le 3 estrazioni e trovo semplicemente quei valori.

Determinare la probabilità che si estragga una pallina rossa sia alla seconda sia alla terza estrazione.:
per la prima, dato che non specificato --> R o N è uguale (1/2) e per tre posizioni (^3) dato che potrebbe avere conseguenze sulla seconda e anche sulla terza.
per la seconda estrazione, è 1/4 di prob per R, come stabilito fin da subito.
per la terza: molto semplicemente, se la seconda è R, da consegna, la terza si estrae dalla A (quindi 1/2 di prob).
quindi risposta finale: (1/2)^3 + (1/2)*(1/4)*(1/2).


# Si lancia cinque volte una moneta non truccata. Calcolare:

#1 la probabilità dell'evento A: "i primi tre risultati sono uguali":
#2 la probabilità dell'evento B: "{"i primi tre risultati sono uguali"} U {gli ultimi tre risultati sono uguali}":

# soluzione:

#1
# i primi tre risultati sono uguali: possono essere tutti teste o tutti croce
p_A <- 2 * (1/2)^3
round(p_A, 4)
[1] 0.25

#2
# gli ultimi tre risultati sono uguali: possono essere tutti teste o tutti croce
p_B <- 2 * (1/2)^3
# calcolo P(A ∩ B)
# i primi tre risultati sono uguali e gli ultimi tre sono uguali: i primi tre
# possono essere tutti teste o tutti croce, e il quarto e il quinto risultato
# devono essere uguali al terzo
p_A_and_B <- 2 * (1/2)^5
# calcolo P(A U B) = P(A) + P(B) - P(A ∩ B)
p_A_or_B <- p_A + p_B - p_A_and_B
round(p_A_or_B, 4)
[1] 0.4375