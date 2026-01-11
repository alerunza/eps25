-------------------------------------------------------------------------------------
| L’urna A contiene 10 palline bianche e 10 nere. L’urna B contiene 5 palline bianche e 15 nere. 
Viene lanciata una moneta non truccata: se esce testa allora vengono fatte 3 estrazioni senza reinserimento dall’urna A; 
se esce croce vengono fatte 5 estrazioni con reinserimento dall’urna B.

1 Calcolare la probabilità di estrarre esattamente 2 palline bianche sapendo di aver ottenuto testa.
#P(BB | T)
choose(10,2) * choose(10,1) / choose(20, 3)

2 Calcolare la probabilità di estrarre esattamente 2 palline bianche sapendo di aver ottenuto croce.
#P(BB | C)
opzione 1: dbinom(2.5, 5/20)
opzione 2: choose(5,2)*(1/4)^2*(3/4)^3
#opzione 2 spegazione:
# - sceglie 2/5 estrazioni
# - sceglie modi di quelle -->1/4 sono le 5/20 bianche e le nere 3/4
# - e queste ultime rispettivamente sono le 2 bianche estratte e 3 restanti (su 5 estrazioni)

3 Calcolare la probabilità che vengano estratte esattamente 2 palline bianche.
0.5*(choose(10,2)*choose(10,1)/choose(20,3)) +
0.5*(choose(5,2)*(1/4)^2*(3/4)^3)
#spiegazione:
# 0.5 è 1/2 di prob per T o C.
# poi umero di modi per scegliere 2 palline bianche dalle 10 bianche dell’urna A.

4 Sapendo che sono state estratte esattamente 2 palline bianche, calcolare la probabilità che sia uscita testa.



