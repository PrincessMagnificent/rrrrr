#�e smo R �e zaprli, ponovno

#Dolo�imo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Nalo�imo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#Povezanost preverimo s pomo�jo razsevnega grafikona:

plot(podatki6$Povrsina,podatki6$Cena,xlab="Povr�ina",ylab="Cena",main="Razsevni grafikon")


####################################################################

#Izra�un Pearsonovega korelacijskega koeficienta:

cor(podatki6$Povrsina,podatki6$Cena)


####################################################################

#Izra�un regresijske premice (odvisna spremenljivka: Cena, neodvisna spremenljivka: Povr�ina)

lm(podatki6$Cena~podatki6$Povrsina)

#Kakovost regresijskega modela (preverimo vrednost determinacijskega koeficienta)
#V izpisu je to vrednost Multiple R Squared v predzadnji vrstici

summary(lm(podatki6$Cena~podatki6$Povrsina))


####################################################################

#Regresijsko premico dodamo na razsevni grafikon:

plot(podatki6$Povrsina,podatki6$Cena,xlab="Povr�ina",ylab="Cena",main="Razsevni grafikon")
abline(lm(podatki6$Cena~podatki6$Povrsina))