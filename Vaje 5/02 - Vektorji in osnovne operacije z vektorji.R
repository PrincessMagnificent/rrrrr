#Generiramo vektor x:
x<-c(1,2,3,4,5) #x-u prirednimo vrednosti 1,2,3,4,5
x #prikli�emo vrednosti vektorja x

#uporabimo lahko tudi naslednji ukaz:
c(1,2,3,4,5)->x

#vrednosti vektorja x pomno�imo z 2:
x*2

#dvakratnike vrednosti vektorja x shranimo v objekt y:
y<-x*2
y

#Izra�unamo ena�bo s pomo�jo vrednosti vektorjev x in y:
2*x+y+1
v<-2*x+y+1 #Rezultate ena�be shranimo v objekt v

v

min(v)  #najmanj�a vrednost vektorja (objekta) v
max(v)  #najve�ja vrednost vektorja (objekta) v
range(v) #razpon vrednosti vektorja (objekta) v: izpi�e najmanj�o in najve�jo vrednost vektorja v
length(v) #dol�ina vektorja v (�tevilo vrednosti; �tevilo enot)
sum(v)  #vsota vrednosti vektorja v
sum(v)/length(v) #vsoto vektorja v delimo s �tevilom vrednosti (dobimo vrednost aritmeti�ne sredine)

#Za izra�un aritmeti�ne sredine pa lahko uporabimo tudi funkcijo mean()
mean(v)

sum((v-mean(v))**2) #vsota kvadratov odklonov od povpre�ja vektorja v
sum((v-mean(v))^2) #vsota kvadratov odklonov od povpre�ja vektorja v
sum((v-mean(v))^2)/length(v) #vsoto kvadratov odklonov od povpre�ja vektorja v delimo s �tevilom vrednosti (dobimo vrednost variance)
var.v<-sum((v-mean(v))^2)/length(v) #vrednost variance shranimo v objekt var.v

#Varianca za vzor�ne podatke:
var(v)
sum((v-mean(v))^2)/(length(v)-1)


sqrt(var.v) #kvadratni koren iz variance (dobimo standardni odklon)
sqrt(sum((v-mean(v))^2)/length(v))

sd.v<-(sqrt(var.v)) #vrednost standardnega odklona shranimo v objekt sd.v

#Standardni odklon za vzor�ne podatke:
sd(v)


