#: size_bytes in price, ter dve
#�tevilski spremenljivki, in sicer: cont_rating in prime_genre;

# "size_bytes","price","cont_rating","prime_genre"

dataset <- read_csv("GitHub/rrrrr/AppleStoreData-sample.csv")

interest<-c("size_bytes","price","cont_rating","prime_genre")
mydata<-dataset[interest]
names(mydata)[1]<-"Velikost"
names(mydata)[2]<-"Cena"
names(mydata)[3]<-"Primernost"
names(mydata)[4]<-"Tip"

#Analiza �tevilskih spremenljivk
#a) Izra�unajte glavne opisne statistike (srednje vrednosti in mere variabilnosti) za obe �tevilski spremenljivki in jih prika�ite. Rezultate tudi vsebinsko interpretirajte.
#b) �tevilski spremenljivki predstavite tudi grafi�no s pomo�jo histograma in okvirja z ro�aji. Na grafi�nih prikazov opi�ite zna�ilnosti posamezne spremenljivke.
#c) S pomo�jo �tevilskih spremenljivk nari�ite razsevni grafikon. Ustrezno preimenujte naslova osi, grafikonu dodajte tudi glavni naslov. Ali razsevni grafikon nakazuje na povezanost obravnavanih spremenljivk? Svoj odgovor pojasnite!
 # d) Med obravnavanima spremenljivkama preverite njuno povezanost s pomo�jo Pearsonovega korelacijskega koeficienta. Na osnovi njegove vrednosti  opredelite smer in jakost povezanosti med obravnavanima spremenljivkama!
  #e) Glede na vsebino spremenljivk dolo�ite odvisno in neodvisno spremenljivko. Izra�unajte ustrezno regresijsko premico, jo zapi�ite ter vsebinsko interpretirajte. Regresijsko premico vri�ite tudi v razsevni grafikon iz to�ke c) te naloge.
#f) Izra�unajte determinacijski koeficient in standardno napako za izra�unano regresijsko premico! Na osnovi njunih vrednosti opredelite kakovost dobljenega regresijskega modela!

mydata$Velikost<-mydata$Velikost/1024 #for kB
mydata$Velikost<-mydata$Velikost/1024 #run again for MB

library(psych)
describe(mydata$Velikost)
describe(mydata$Cena)

###BIG WARNING, YOU HAVE TO DO A BOX PLOT AND A HIST IN ONE AND THEN THE OTHER