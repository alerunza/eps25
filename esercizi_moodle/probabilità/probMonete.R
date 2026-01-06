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