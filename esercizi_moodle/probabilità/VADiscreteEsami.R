#Una scatola contiene 5 palline nere e 10 palline bianche.
#Lanci un dado equo a 4 facce e aggiungi alla scatola un numero di palline bianche pari all’esito del lancio del dado.
#A questo punto la scatola è pronta ed estrai SENZA REIMBUSSOLAMENTO 4 palline.

#1)Con che probabilità la scatola contiene 12 palline bianche?
#prob che abbia restituito n.2 è uguale a 1/4 perchè equo
1/4

#2)Con che probabilità estrai 3 palline bianche?
#chiamo Di l'evento "il dado restituisce i" per i = {1,2,3,4}
#calcolo la formula delle P totali:
#P(X=3) = per ogni i P(X=3|Di) * P(Di)
#so che P(Di) = 1/4
treBianche= 1/4 * dhyper(3,11,5,4) +
            1/4 * dhyper(3,12,5,4) +
            1/4 * dhyper(3,13,5,4) +
            1/4 * dhyper(3,14,5,4) 



#3)Con che probabilità estrai almeno ≥ 3 palline bianche?
#P(X≥3)=P(X=3)+P(X=4). Il primo cel'ho già. Calcolo solo P(X=4)

QuattroBianche= 1/4 * dhyper(4,11,5,4) +
  1/4 * dhyper(4,12,5,4) +
  1/4 * dhyper(4,13,5,4) +
  1/4 * dhyper(4,14,5,4) 

QuattroBianche+treBianche

#4)Se hai estratto 3 palline bianche, con che probabilità nella scatola ci sono 14 palline bianche?
#uso la formula di Bayes P(D4|X=3)
(dhyper(3,14,5,4) * (1/4)) / treBianche

#================================================================

#Una scatola contiene 7 palline nere e 7 palline bianche.
#Lanci un dado equo a 4 facce e aggiungi alla scatola un numero di palline bianche pari all’esito del lancio del dado.
#A questo punto la scatola è pronta ed estrai CON REIMBUSSOLAMENTO 4 palline.

#1)Con che probabilità la scatola contiene 10 palline bianche?
#prob che abbia restituito n.3 è uguale a 1/4 perchè equo
1/4

#2)Con che probabilità estrai 2 palline bianche?
#chiamo Di l'evento "il dado restituisce i" per i = {1,2,3,4}
#calcolo la formula delle P totali:
#P(X=2) = per ogni i P(X=2|Di) * P(Di)
#so che P(Di) = 1/4
dueBianche= 1/4 * dbinom(2,4,(8/15)) +
  1/4 * dbinom(2,4,(9/16)) +
  1/4 * dbinom(2,4,(10/17)) +
  1/4 * dbinom(2,4,(11/18)) 

#3)Con che probabilità estrai meno di < 2  palline bianche?
#P(X<2)=P(X=1)+P(X=0) 

unaBianca= 1/4 * dbinom(1,4,(8/15)) +
  1/4 * dbinom(1,4,(9/16)) +
  1/4 * dbinom(1,4,(10/17)) +
  1/4 * dbinom(1,4,(11/18)) 

zeroBianca= 1/4 * dbinom(0,4,(8/15)) +
  1/4 * dbinom(0,4,(9/16)) +
  1/4 * dbinom(0,4,(10/17)) +
  1/4 * dbinom(0,4,(11/18)) 

unaBianca+zeroBianca

#4)Se hai estratto 2 palline bianche, con che probabilità nella scatola ci sono 8 palline bianche?
((dbinom(2,4,(8/15)))*1/4)/(dueBianche)

#================================================================

#Una scatola contiene 4 palline nere e 2 palline bianche.
#Lanci un dado equo a 4 facce e toglia alla scatola una pallina bianca se esce 4, nera altrimenti.
#A questo punto la scatola è pronta ed estrai CON REIMBUSSOLAMENTO 4 palline.

#1)Con che probabilità la scatola contiene 3 palline nere?
3/4 #perchè il dado equo cade su 1/2/3 con prob 3/4

#2)Con che probabilità estrai 1 pallina bianca?
#chiamo N l'evento "tolgo una pallina nera" per i = {1,2,3,4}
#calcolo la formula delle P totali:
#P(X=1)=P(X=1|N)⋅P(N)+P(X=1|Nc)⋅P(Nc) ,dove P(N)=3/4
dbinom(1,3,(2/5)) #P(X=1|N)
dbinom(1,3,(1/5)) #P(X=1|Nc)
unaBianca = dbinom(1,3,(2/5)) * 3/4 + dbinom(1,3,(1/5)) * 1/4

#3)P(X>1) = P(X=2)+P(X=3)+P(X=4) OPPURE 1 - P(X=0)+P(X=1)
#P(X=0)=P(X=0|N)⋅P(N)+P(X=0|Nc)⋅P(Nc) ,dove P(N)=3/4
dbinom(0,3,(2/5)) #P(X=0|N)
dbinom(0,3,(1/5)) #P(X=0|Nc)
zeroBianca = dbinom(0,3,(2/5)) * 3/4 + dbinom(0,3,(1/5)) * 1/4
1- (unaBianca+zeroBianca)

#4) Se hai estratto 1 pallina bianca, con che probabilità nella scatola ci sono 3 palline nere?
#P(N|X=1) = P(X=1|N)⋅P(N) / P(X=1)
(dbinom(1,3,(2/5)) * 3/4) /(unaBianca)


#================================================================

#Alleni la squadra di basket del tuo quartiere.
#Hai due tipologie di giocatori in squadra: i giocatori forti,
#che quando tirano a canestro hanno probabilità pari a 0.7 di mettere a segno il tiro,
#e i giocatori deboli, che quando tirano a canestro hanno probabilità pari a 0.3 di mettere a segno il tiro.

#Se un giocatore forte effettua 20 tiri:

#2)la probabilità che più (>)della metà dei tiri vada a segno è pari a 
pbinom(10,20,0.7) #P(X<=10)
pbinom(10,20,0.7,lower.tail = FALSE) #P(X>10)

#Oggi giochi una partita con una formazione composta da 2 giocatori forti e da 3 giocatori deboli.

#3)La probabilità che un giocatore scelto a caso nella squadra di oggi metta a segno il suo tiro è pari a
#F = giocatore forte Fc= Giocatore debole
#P(F) = 2/5 P(Fc) = 3/5
#S = Il tiro va a segno dipende dai giocatori. P TOTALI:
#P(S) = P(S|F) * P(F) + P(S|Fc) * P(Fc) 
ps = 0.7 * (2/5) + 0.3 * 3/5


#4) Se il tiro va a segno, la probabilità che lo abbia fatto un giocatore forte è pari a
#P(F|S) = (P(S|F) * P(F)) / (P(S))
(0.7 * (2/5)) / ps

#5)I giocatori forti tentano 20 tiri ciascuno durante la partita, i giocatori deboli tentano 15 tiri ciascuno durante la partita. Mediamente quanti tiri vengono messi a segno?
#VA P(Y) conta i tiri a segno i=1..15 dei deboli
#VA P(X) conta i tiri a segno i=1..20 dei forti
#E(tiri a segno)==E(X1+X2+Y1+Y2+Y3)=E(X1)+E(X2)+E(Y1)+E(Y2)+E(Y3)
2 * 20 * 0.7 + 3 * 15 * 0.3


#================================================================

#Oggi vai al campetto da basket con la tua amica Luisa. Vi allenate a fare tiri liberi.
#Luisa è più brava di te con i tiri liberi: i suoi tiri a canestro vanno a segno l’80 % delle volte.
#La percentuale di successo dei tuoi tiri a canestro è inferiore a quella di Luisa, pari al 65 %.
#Si possono considerare gli esiti di ciascun tiro, indipendenti.

#Se Luisa effettua 25 tiri:
#1)la probabilità che più (>) della metà dei tiri vada a segno è pari a
pbinom(12,25,0.8) #P(X<=12)
pbinom(12,25,0.8,lower.tail = FALSE) #P(X>12)

#2)il numero medio di tiri che vanno a segno è pari a 
#VA che conta il numero di tiri a segno su 25
#E(Tiri a segno) = E(X) = 
25*0.8

#Fate il seguente gioco: lanciate una moneta equa, se esce testa Luisa fa tiri a canestro
#fino a che non fa punto. Se esce croce, tu fai tiri a canestro fino a che non fai punto.
#Procedete così tutto il pomeriggio e chi ha fatto meno tiri vince.

#4)Se tira Luisa, la probabilità che debba fare almeno (≥) 3 tiri è pari a
pgeom(3-1,0.8) #p(x<=3|L)
pgeom(2-1,0.8) #p(x<3|L) o p(x<=2|L)
pgeom(2-1,0.8,lower.tail = FALSE) #p(x>=3|L)

#5)A fine giornata incontrate la vostra amica Giovanna e le fate la seguente domanda:
#se il primo canestro è arrivato prima (<) di aver fatto 3 tiri, con che probabilità a tirare era Luisa?

#p(L) = 0.5 moneta sceglie Luisa
#P(Lc) = 0.5 = p(L) moneta sceglie Anna
#P(L|X<3) P Luisa dato che il canestro è arrivato < di 3 tiri?
#Formula di Bayes
#P(L|X<3) = (P(X<3|L) * P(L)) / (P(x<3))
#ci manca P(X<3). Formula P Totali
#P(X<3) = P(X<3|L) * P(L) + P(X<3|Lc) * P(Lc)
px = pgeom(1,0.8) * 0.5 + pgeom(1,0.65) * 0.5  #P(X<3)
(pgeom(1,0.8) * 0.5) / px #P(L|X<3)


#================================================================
#Vengono intervistate 500 coppie sposate e a ciascuna coppia vengono chieste alcune informazioni riguardanti i rispettivi stipendi.
#I risultati sono rappresentati nella seguente tabella:....

#1)La probabilità che il marito guadagni meno di 30K all’anno è pari a
Ptotali = 212 + 198+ 36 + 54
pm1 = 212#P(Marito<30)∩PMoglie<30) = 212
pm2 = 36#P(Marito<30)∩PMoglie>30) = 36
pm = (pm1 + pm2) / Ptotali#P(Marito<30) = (212 + 36) / Ptotali

#2)La probabilità che la moglie guadagni più di 30K all’anno sapendo che il marito guadagna più di 30K all’anno è pari a
54 / Ptotali #SBAGLIATO
#Uso la probabilità condizionata
#P(A|B)=P(A∩B)/P(B)
54 / (198+54)

#3)La probabilità che la moglie guadagni più di 30K all’anno sapendo che il marito guadagna meno di 30K all’anno è pari a
36 / (212+36)

#4)Sia X la variabile aleatoria Binomiale, che conta il numero di mariti che guadagnano
#più di 30K/anno su 15 coppie estratte a caso e con reimbussolamento dalle 500 intervistate.
#dbinom(x, n = 15, p = 198+54/500)
n = 15
p = (198+54)/500
media =  n * p
var = n * p * (1-p)

#5)P(X≥8)
pbinom(7,n,p)#P(X<8)
pbinom(7,n,p,FALSE)#P(X>=8)



