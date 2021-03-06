#�e smo R �e zaprli, ponovno
#Dolo�imo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 7")

#Nalo�imo podatke v delovni prostor

load("vaje7.Rda")

####################################################################

#Izra�unamo vrednost hi-kvadrat testa:

HI<-chisq.test(table(podatki$Genre,podatki$Rating))
HI

HI$observed		#Izpis tabele empiri�nih (dejanskih) frekvenc
HI$expected		#Izpis tabele teoreti�nih (pri�akovanih) frekvenc


####################################################################

#Uporabimo lahko tudi funkcijo assocstats(), ki se nahaja v knji�nici vcd,
#ki poleg vrednosti hi-kvadrat testa izra�una tudi vrednosti kontigen�nih koeficientov

library(vcd)
assocstats(table(podatki$Genre,podatki$Rating))
