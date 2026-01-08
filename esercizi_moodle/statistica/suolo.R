load("suolo.RData")

ls()
[1] "dati"
 
str(dati)
'data.frame':	203 obs. of  2 variables:
 $ suolo : Factor w/ 3 levels "Argilloso","Calcareo",..: 1 1 1 3 2 3 1 1 3 2 ...
 $ pianta: Factor w/ 2 levels "Assente","Presente": 2 1 2 2 1 1 1 2 1 2 ...

head(dati)
      suolo   pianta
1 Argilloso Presente
2 Argilloso  Assente
3 Argilloso Presente
4  Sabbioso Presente
5  Calcareo  Assente
6  Sabbioso  Assente

names(dati)
[1] "suolo"  "pianta"

