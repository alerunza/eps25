############################################################
# comandi_generali.R — EPS (RStudio) cheat sheet da esame
# Obiettivo: comandi rapidi + quando usarli
############################################################

############################
# 0) Setup base
############################
ls()

# load("file.RData")  # di solito carica un oggetto chiamato "dati" o simili
# ls(); str(dati); head(dati); names(dati)

############################
# 1) NA: contare e trovare dove sono
############################

sum(is.na(dati))                       # quante celle NA in tutto
which(is.na(dati), arr.ind = TRUE)     # dove sono (riga,colonna)

############################
# 2) Arrotondamenti (4 cifre decimali)
############################

round(x, 4)

############################
# 3) Proporzioni / Frequenze (variabili categoriali)
############################

# Frequenze assolute
table(dati$variabile)

# Frequenze relative
prop.table(table(dati$variabile))

# Proporzione di una categoria (metodo super-rapido)
# (mean(TRUE/FALSE) = proporzione di TRUE)
mean(dati$variabile == "VALORE")

# Proporzione con filtro (condizionata)
mean(dati$variabile[dati$filtro] == "VALORE")

# Conteggio con filtro
sum(dati$variabile[dati$filtro] == "VALORE")

# Esempio tipico: "solo affidabili" (Affidabilita > 0.5)
# mean(dati$Preferenza[dati$Affidabilita > 0.5] == "A")

############################
# 4) Statistica descrittiva (variabili numeriche)
############################

mean(dati$x, na.rm = TRUE)
sd(dati$x, na.rm = TRUE)
var(dati$x, na.rm = TRUE)

# Quantili: "top 10%" => soglia oltre cui sta il 10% più alto => quantile 0.9
quantile(dati$x, 0.9, na.rm = TRUE)

# "5% più veloce" (tempi più piccoli) => quantile 0.05
quantile(dati$tempo, 0.05, na.rm = TRUE)

############################
# 5) Grafici rapidi (RStudio: tab "Plots")
############################

# Istogramma
hist(dati$x, breaks = "FD")     # regola frequente (Freedman–Diaconis)
# oppure breaks = 10 / 20 ecc.

# Boxplot singolo
boxplot(dati$x)

# Boxplot per gruppi (fattore)
boxplot(x ~ gruppo, data = dati)

# Boxplot di due vettori al volo
boxplot(v1, v2)

# Barplot di una variabile categoriale
barplot(table(dati$variabile))

# Scatterplot (per regressione/correlazione)
plot(dati$x, dati$y)

# "Pulire" i plot (trucco): apri un nuovo device
dev.off()  # chiude la finestra grafica corrente (ripeti se necessario)

############################
# 6) Outliers da boxplot (valori estremi)
############################

boxplot.stats(dati$x)$out

############################
# 7) Test su una PROPORZIONE (binom.test / prop.test)
############################

# QUANDO: domanda tipo "più della metà", "il 25% ...", "p = 0.6?"
# Variabile binaria categoriale => successi x su n

# 7a) Preparare x e n da una variabile categoriale
tab <- table(dati$variabile)
x <- tab["VALORE_SUCCESSO"]
n <- sum(tab)

# 7b) binom.test (esatto, spesso accettato e pulito)
binom.test(x, n, p = 0.5, alternative = "greater")$p.value
# alternative:
# "greater" -> p > p0
# "less"    -> p < p0
# "two.sided"-> p != p0

# 7c) prop.test (approssimazione; Moodle a volte usa Yates = correct=TRUE)
prop.test(x, n, p = 0.5, alternative = "greater")$p.value
prop.test(x, n, p = 0.5, alternative = "greater", correct = TRUE)$p.value
prop.test(x, n, p = 0.5, alternative = "greater", correct = FALSE)$p.value

# Regola decisione
# if (pvalue < alpha) rifiuto H0 else non rifiuto H0

############################
# 8) Chi-quadrato: bontà del fit vs indipendenza
############################

# 8a) Bontà del fit (1 variabile categoriale, confronti con probabilità teoriche)
# Esempio: 3 categorie equiprobabili (1/3,1/3,1/3)
obs <- table(dati$suolo)
chisq.test(obs, p = c(1/3, 1/3, 1/3))$p.value

# 8b) Indipendenza (2 variabili categoriali: tabella di contingenza)
tab2 <- table(dati$suolo, dati$pianta)
test <- chisq.test(tab2)
test$p.value
test$expected  # frequenze attese (serve per Cochran)

# Regola di Cochran (affidabilità chi-quadrato):
# - tutte le attese >= 1
# - almeno l'80% delle attese >= 5
min(test$expected)
mean(test$expected >= 5)  # proporzione celle con attese >=5

# Se l'esercizio chiede "più grande attesa": max(test$expected)
# Se chiede "più piccola attesa": min(test$expected)

############################
# 9) t-test: indipendenti vs appaiati (molto importante)
############################

# 9a) Due gruppi INDIPENDENTI (due categorie, soggetti diversi)
# Esempio: tempo ~ categoria (Professionisti vs Dilettanti)
t.test(tempo ~ categoria, data = dati, alternative = "two.sided", var.equal = FALSE)

# alternative:
# "greater" -> mean(gruppo1) > mean(gruppo2) (occhio all'ordine)
# "less"    -> mean(gruppo1) < mean(gruppo2)

# 9b) Appaiati (stessi soggetti PRE/POST)
# Domanda: "dopo è aumentato?" => PRE < POST
# Usando t.test(pre, post, paired=TRUE):
# PRE < POST  <=> pre - post < 0  => alternative="less"
t.test(dati$PRE, dati$POST, paired = TRUE, alternative = "less")

# Se invece vuoi POST > PRE ma passi post,pre inverti l'alternativa.

# 9c) IC (intervallo di confidenza) della media
# (anche per confrontare due gruppi facendo due IC separati)
IC_A <- t.test(vA, conf.level = 0.99)$conf.int
IC_B <- t.test(vB, conf.level = 0.99)$conf.int
round(IC_A, 4); round(IC_B, 4)

# Trick Moodle sugli IC:
# - se IC si sovrappongono -> "non posso dire che sono diversi" (con questo metodo)
# - se NON si sovrappongono -> "sono diversi"

############################
# 10) Correlazione e regressione lineare
############################

# 10a) Correlazione (due numeriche)
# usa complete.obs per ignorare righe con NA
cor(dati$x, dati$y, use = "complete.obs")

ct <- cor.test(dati$x, dati$y, use = "complete.obs", alternative = "two.sided")
ct$estimate      # correlazione campionaria
ct$p.value       # p-value del test H0: rho=0

# 10b) Regressione (y dipendente, x indipendente)
mod <- lm(y ~ x, data = dati)
coef(mod)                    # intercept e slope
summary(mod)                 # include Pr(>|t|) per slope
summary(mod)$coefficients    # tabella completa

# p-value del coefficiente angolare (slope) direttamente:
summary(mod)$coefficients["x", "Pr(>|t|)"]

############################
# 11) Mini-regole da esame (rapidissime)
############################

# - "più del 50%" => H1: p > 0.5 => alternative="greater"
# - "meno del 50%"=> H1: p < 0.5 => alternative="less"
# - "diverso da"  => H1: p != p0 => alternative="two.sided"

# - Due variabili categoriali => chisq.test(table(A,B))  (indipendenza)
# - Una variabile categoriale vs teorico => chisq.test(obs, p=...) (goodness-of-fit)

# - PRE/POST stessi soggetti => paired=TRUE
# - gruppi diversi => paired=FALSE (default) o formula y~gruppo

# - Proporzione con filtro: denominatore è solo il sottoinsieme!
#   mean(var[filtro] == valore)