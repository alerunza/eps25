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
- per la prima, dato che non specificato --> R o N è uguale (1/2) e per tre posizioni (^3) dato che potrebbe avere conseguenze sulla seconda e anche sulla terza.
- per la seconda estrazione, è 1/4 di prob per R, come stabilito fin da subito.
- per la terza: molto semplicemente, se la seconda è R, da consegna, la terza si estrae dalla A (quindi 1/2 di prob).
quindi risposta finale: (1/2)^3 + (1/2)*(1/4)*(1/2).

| Ci sono quattro scatole in un armadio: la scatola A ha 4 palline numerate da 1 a 4, la scatola B ha sei palline numerate da 1 a 6), le scatole C e D  hanno ambedue 8 palline numerate da 1 a 8. La tua amica prende segretamente e uniformemente a caso una scatola e ne estrae una pallina.

1. Determinare la probabilità di ottenere un numero minore o uguale a 3 oppure 5 (=5).
inizio considerando per ogni scatola (A, B, C, D) la prob. di ottenre {1, 2, 3, 5}.
- in A la prob. è 3/4
- in B la prob. è 4/6 => 2/3
- in C la prob. è 4/8 => 1/2
- in D come in C (1/2)
tutti questi valori li sommo.
E POI ultimo importante passaggio: MOLTIPLICO quel risultato * 1/4 (=la scatola scelta a caso, 1 su 4 essendo 4 le scatole). ez

2. Sai che è uscito 4 oppure 5. Qual è la probabilità che la pallina sia stata estratta dalla scatola C o dalla D?
--> formuletta: (casi C o D che danno 4 o 5)/(tutti i casi che danno 4 o 5).
E RICORDARE SEMPRE CHE BISOGNA MOLTICPLICARE PER LA PROBABILITA DELLA SCATOLA (1/4).
quindi: {4, 5}:
numeratore (C * 1/4 + D * 1/4): (1/4*1/4) + (1/4*1/4)
denominatore ((A + B + C + D) *1/4): (1/4+1/3+1/4+1/4)*1/4
> (1/8)/(13/48) = 0.4615

| L'urna U_1 contiene una proporzione 0.3 di palline bianche e l'urna U_2 una proporzione 0.5 di palline bianche. Si estraggono con reimbussolamento 4 palline da U_1 e 6 da U_2. Tutte le palline estratte vengono sistemate in una terza urna U_3. Sia X la proporzione di palline bianche nella urna  U_3.
Calcolare:

1. Il valore atteso E X:
> 0.3*4 = 1.2
> 0.5*6 = 3
e poi: (1.2+3)/10 --> 10 palline totali in U_3

2. La varianza VAR X:
> (4 x 0.3 x 0.7 + 6 x 0.5 x 0.5) / 100 (teoria della varianza: (10)^2=100)

3. Il momento secondo E X^2:
--> VAR + EX^2
> ((0.42)^2) + ((4*0.3*0.7 + 6*0.5*0.5) / 100) = 0.1998

Siano date 3 urne e 4 palline indistinguibili. Si definisca l'evento A_j = l'urna j-esima resta vuota con j = 1, 2, 3. Calcolare con quale probabilità, inserendo uniformemente a caso e indipendentemente le 4 palline nelle 3 urne?.
1. la prima urna resti vuota: significa che teniamo conto solo di 2 e 3 U. quindi (2/3 ^ 4).
2. la seconda urna resti vuota: uguale a 1.-
3. almeno una urna resti vuota:
4. due urne restano vuote se almeno una delle tre urne è vuota:
