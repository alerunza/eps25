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
