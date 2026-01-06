load("ristorante.RData")

ls()
[1] "ristorante"

str(ristorante)
'data.frame':	319 obs. of  2 variables:
 $ fascia_oraria   : Factor w/ 2 levels "Cena","Pranzo": 1 1 2 2 2 1 2 1 2 1 ...
 $ categoria_piatto: Factor w/ 3 levels "Piatti di carne",..: 2 1 3 2 3 3 2 1 1 2 ...

head(ristorante)
  fascia_oraria   categoria_piatto
1          Cena    Piatti di pesce
2          Cena    Piatti di carne
3        Pranzo Piatti vegetariani
4        Pranzo    Piatti di pesce
5        Pranzo Piatti vegetariani
6          Cena Piatti vegetariani

names(ristorante)
[1] "fascia_oraria"   
[2] "categoria_piatto"

nrow(ristorante)
[1] 319

which(is.na(ristorante), arr.ind=TRUE)
    row col
11  11   2 # riga 11, colonna 2 (categoria_piatto) ha un valore NA

freq_prim <- sum(ristorante$fascia_oraria == "Pranzo", na.rm = TRUE)
[1] 132

freq_rel <- freq_prim / sum(!is.na(ristorante$fascia_oraria))

round(freq_rel, 4)
[1] 0.4138

freq_veg <- sum(ristorante$fascia_oraria[ristorante$categoria_piatto == "Piatti vegetariani"] == "Pranzo", na.rm = TRUE)
[1] 34

barplot(table(ristorante$categoria_piatto))
