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

#Si hanno a disposizione 3 monete. La moneta A ha probabilità di ottenere testa pari a  p . La moneta B ha probabilità di ottenere testa pari a  p/2 . 
#La moneta C ha probabilità di ottenere testa pari a  p/3 .
#Si fanno tre lanci consecutivi con la seguente procedura:
#- Primo lancio: Si lancia la moneta A.
#- Secondo lancio: Se al lancio precedente si è ottenuto testa allora si lancia la moneta A. Se si è avuto croce si lancia la moneta B.
#- Terzo lancio: Se nel lancio precedente si è ottenuto testa allora si lancia la moneta A. Se nel primo lancio si è ottenuto testa e nel secondo lancio si è ottenuto croce, allora si lancia la moneta B. Se nel primo e nel secondo lancio si è ottenuto croce allora si lancia la moneta C.

# 1 Se  p = 1/4 , determinare la probabilità della sequenza (Testa,Testa,Testa)
# 2 Se  p = 1/2 , determinare la probabilità della sequenza (Croce, Croce, Croce)
# 3 Se  p = 1/4 , determinare la probabilità che si abbia Testa al secondo e al terzo lancio.
# 4 Per quale valore di p la sequenza (Croce, croce, croce) ha probabilità 0?
# soluzione:





#Una moneta sbilanciata viene lanciata ripetutamente. In ciascun lancio la probabilità che esca T è 0.4. 
#Calcolare la probabilità degli eventi:

# 1. A = \text{"la prima T esce al quarto lancio"};
# 2. B = \text{"la terza T esce al settimo lancio"};
# 3. C = A \cap B;

#NB: può essere utile la funzione choose di R