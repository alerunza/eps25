#Si sono misurati i valori del parametro Kpl (chilometri percorsi con un litro di carburante, variabile Kpl)
#per campioni di autovetture con 3 diversi tipi di motorizzazione (variabile Engine).
Kpl <- Consumo$Kpl
Engine <- Consumo$Engine

#Fare un’analisi descrittiva del dataset rispondendo alle domande seguenti.

  #1)Il dataset contiene osservazioni non mancanti:
  sum(is.na(Consumo)) #somma di tutte le osservazioni nulle
  
  #2.1)Il 25 %dei valori di Kpl è inferiore a
  quantile(Kpl,0.25)
  #e il coefficiente di variazione degli stessi in percentuale è pari a
  #stdev/mean
  sd(Kpl)/mean(Kpl) * 100 #in percentuale
  #la fequenza relativa di valori di Kpl pari almeno a 15 è
  sum(Kpl>=15)/280 #280 numero di osservazioni totali
  
  #3)La frequenza corrispondente al tipo di motorizzazione per cui è stato estratto il campione più numeroso è
  table(Engine) #si vede che tipo II ha 98 elementi
  #la frequenza cumulativa assoluta di misure per tutti i tipi di motorizzazione eccetto il primo è
  98+85 #II + III

#Eseguire un’analisi statistica inferenziale sulla base del dataset rispondendo alle domande seguenti.
  
  #4)Al livello di significatività 0.10, si può affermare che non ci sia sufficiente evidenza statistica
  #per sostenere che valori medi di Kpl rilevati per la motorizzazione II siano inferiori a quelli rilevati
  #per la motorizzazione III
  test<-t.test(Kpl[Engine == "II"],
              Kpl[Engine == "III"],
              alternative = "less")
  test$p.value
  test$statistic
  
  #5)L’intervallo di confidenza al 99 % per la differenza nei valori medi di Kpl rilevati tra la motorizzazione II e la motorizzazione III
  #ha estremo superiore ??? e estremo inferiore???
  
  test1<-t.test(Kpl[Engine == "II"],
               Kpl[Engine == "III"],
               conf.level = 0.99)
  test1$conf.int
        
  #==============================================================================#
  
  
  Rate <- Approval$Rate
  Area <- Approval$Area
  
  sum(is.na(Approval))
  
  quantile(Rate,0.75)
  
  sd(Rate)/mean(Rate) *100
  
  sum(Rate<=30)/290
  
  table(Area)
  
  test1 <- t.test(Rate[Area == "I"],
                  Rate[Area == "III"],
                  alternative = "greater")
  
  test1$statistic
  test1$p.value
  
  test2 <- t.test(Rate[Area == "I"],
                  conf.level = 0.90)
  test2$conf.int
  
  #==============================================================================#
  
  Tempo <- Attention$tempo
  Orario <- Attention$orario
  
  sum(is.na(Attention))
  
  quantile(Tempo,0.95)
  
  sd(Tempo)/mean(Tempo) * 100
  
  sum(Tempo>30)/270
  
  table(Orario)
  102+69
  
  test1 <- t.test(Tempo[Orario == "1"],
                  Tempo[Orario == "3"],
                  alternative = "greater")
  test1$p.value
  test1$statistic
  
  test2 <- t.test(Tempo[Orario == "1"],
                  Tempo[Orario == "2"],
                  conf.level = 0.99)
  test2$conf.int
  
  0.9289636 - (-0.7242666)
  
#==============================================================================#
  
  val1 = Cura$val1
  val2 = Cura$val2
  drug = Cura$drug
  
  sum(is.na(Cura))
  
  quantile(val1,1-0.75)
  
  sd(val2)/mean(val2)*100
  
  sum(val1 >= mean(val1))/280
  
  table(drug)
  
  92+104
  
  test1 <- t.test(val2[drug == "B"],
                  val2[drug == "C"],
                  alternative = "less")
  
  test1$p.value
  test1$statistic
  
  test2 <- t.test(val2[drug == "B"],
                  val2[drug == "C"],
                  conf.level = 0.99)
  test2$conf.int
  
  test2$conf.int[2] - test2$conf.int[1]
  
  cor(val1,val2)
  cor.test(val1,val2)

  
  #==============================================================================#
  
  