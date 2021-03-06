#�e smo R �e zaprli, ponovno

#Dolo�imo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Nalo�imo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#Osnovna statistika (povzetek opisnih statistik):

summary(podatki6)		#Vse spremenljivke naenkrat

summary(podatki6$Povrsina)	#Samo za spremenljivko Povr�ina

summary(podatki6$Cent.ogr)


#Uporabimo lahko tudi funkcijo describe() v knji�nici psych:

library(psych)

describe(podatki6$Povrsina)	#Opisna statistika spremenljivke Povr�ina

describe(podatki6[,c("Povrsina","Cena")])		#Opisna statistika ve� spremenljivk hkrati


####################################################################

#Izra�un kvantilov:

quantile(podatki6$Cena,p=c(0.25,0.5,0.75))	#1., 2. in 3. kvartil

quantile(podatki6$Povrsina,p=c(0.25,0.5,0.75))	#1., 2. in 3. kvartil

quantile(podatki6$Povrsina,p=seq(0.1,0.9,by=0.1))	#Decili

quantile(podatki6$Povrsina,p=0.5)	#Mediana (2. kvartil)

median(podatki6$Povrsina)	#Mediana


####################################################################

#Aritmeti�na sredina

#Uporabimo funkcijo mean()

mean(podatki6$Povrsina,na.rm=TRUE)

#Izra�unamo po formuli

Mean<-sum(podatki6$Povrsina)/length(podatki6$Povrsina); Mean


####################################################################

#Varianca

#Uporabimo funkcijo var(), ki pa je primerna za izra�un variance na vzorcu

var(podatki6$Povrsina,na.rm=TRUE)

#Izra�unamo po formuli (formula za izra�un variance za populacijo)

Var<-sum((podatki6$Povrsina-Mean)^2)/length(podatki6$Povrsina); Var


####################################################################

#Standardni odklon

#Uporabimo funkcijo sd(), ki pa je primerna za izra�un standardnega odklona na vzorcu

sd(podatki6$Povrsina,na.rm=TRUE)

#Izra�unamo po formuli (upo�tevamo varianco, izra�unano po formuli za populacijo)

Sd<-sqrt(Var); Sd