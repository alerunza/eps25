load("escursioni.RData")

ls()
[1] "escursioni"

str(escursioni)
'data.frame':	162 obs. of  2 variables:
 $ Preferenza       : Factor w/ 2 levels "Sentiero facile",..: 2 2 2 1 1 1 2 2 2 2 ...
 $ Numero escursioni: int  3 9 7 2 1 1 8 9 4 8 ...

head(escursioni)
            Preferenza Numero escursioni
1 Sentiero impegnativo                 3
2 Sentiero impegnativo                 9
3 Sentiero impegnativo                 7
4      Sentiero facile                 2
5      Sentiero facile                 1
6      Sentiero facile                 1

names(escursioni)
[1] "Preferenza"        "Numero escursioni"