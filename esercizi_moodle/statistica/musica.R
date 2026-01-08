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