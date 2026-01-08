load("musica.RData")

ls()
[1] "musica"

str(musica)
'data.frame':	323 obs. of  2 variables:
 $ punteggio: int  51 49 54 59 55 50 52 59 48 46 ...
 $ metodo   : chr  "metodo B" "metodo B" "metodo A" "metodo A" ...

head(musica)
  punteggio   metodo
1        51 metodo B
2        49 metodo B
3        54 metodo A
4        59 metodo A
5        55 metodo B
6        50 metodo B

names(musica)
[1] "punteggio" "metodo" 

mean(musica$punteggio[musica$metodo=="metodo A"])
[1] 59.88764
sd(musica$punteggio[musica$metodo=="metodo A"])
[1] 4.8174

sum(musica$punteggio[musica$metodo=="metodo A"]>=55 & musica$punteggio[musica$metodo == "metodo A"] <= 65)
[1] 133

# Il 10% degli studenti con rendimento peggiore (con punteggio basso) tra gli studenti che hanno seguito il metodo A ha punteggio inferiore a:
quantile(musica$punteggio[musica$metodo=="metodo A"], 0.1)
10% 54

hist(musica$punteggio, breaks=8)

# livello confidenza
test<-t.test(musica$punteggio[musica$metodo == "metodo A"], musica$punteggio[musica$metodo == "metodo B"], paired = FALSE, conf.level = 0.99)
round(test$conf.int, 4)

