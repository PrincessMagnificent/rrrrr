#�e smo R �e zaprli, ponovno

#Dolo�imo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Nalo�imo podatke v delovni prostor

load("podatki5.Rda")

#Izbor spremenljivk, na katerih bomo izvajali analizo:
#zmanj�ali smo koli�ino spremenljivk na samo izbrane

spr<-c("Price","Area","Cent.heat")
podatki6<-podatki5[spr]
View(podatki6)

#Spremenimo imena spremenljivk:
#RENAME

names(podatki6)<-c("Cena","Povrsina","Cent.ogr")
View(podatki6)

#Spremenimo vrednosti spremenljivke:

podatki6$Cent.ogr<-factor(podatki6$Cent.ogr,levels=c("no","yes"),labels=c("Ne","Da"))
View(podatki6)

#Shranimo podatke

save(podatki6,file="podatki6vaja2.Rda")
