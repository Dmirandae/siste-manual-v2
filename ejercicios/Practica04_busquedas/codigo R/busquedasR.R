library(ape)
library(phangorn)

#Cargue el alineamiento o la matriz llamada chars2.txt 
#Escribala como formato NEXUS utilizando el nombre primates.nex

primates <- read.phyDat ("chars2.txt", format="phylip",  type="DNA")
write.nexus.data (primates, file="primates.nex")

#Estime la matriz de distancia

matrizDistancia <- dist.dna(as.DNAbin(primates))

#Realice el analisis de agrupamiento 
arbolUPGMA <- upgma (matrizDistancia)

arbolNJ    <- NJ(matrizDistancia)

#Grafique para un posterior analisis.
plot (arbolUPGMA, main="UPGMA", cex = 0.8)

plot (arbolNJ, "unrooted", main="NJ", cex = 0.5)

#Definir los arboles iniciales de los cuales parte el analisis de parsimonia

arbolRAM <- random.addition(primates,  method="fitch")
plot(arbolRAM,  main="UPGMA",  cex = 0.8)

#Parsimonia y optimizacion

#Calcule la longitud  de los arboles y obtenga el arbol de menor costo o score.

parsimony(arbolUPGMA,  primates)
parsimony(arbolNJ,  primates)
parsimony(arbolRAM, primates)

#Para la optimizacion por omision

optParsUPGMA <- optim.parsimony(arbolUPGMA,  primates)
optParsNJ    <- optim.parsimony(arbolNJ,  primates)
optParsRAM   <- optim.parsimony(arbolRAM,  primates)

#Para la optimizacion con rearreglo de ramas especifico

optParsUPGMA_SPR <- optim.parsimony(arbolUPGMA,  primates, rearrangements="SPR")
optParsUPGMA_NNI <- optim.parsimony(arbolUPGMA,  primates, rearrangements="NNI")

#Parsimonia usando Rachet

#Busqueda con Rachet utilizando los arboles iniciales y optimizando con el metodo de rearreglos NNI.

pratchet(primates,  start=arbolUPGMA,  method="fitch",  maxit=100,  k=5,  trace=1,  all=FALSE, rearrangements="NNI")

#B\'usqueda con Rachet utilizando los \'arboles iniciales y optimizando con el m\'etodo de rearreglos SPR.

pratchet(primates,  start=arbolUPGMA,  method="fitch",  maxit=100,  k=5,  trace=1,  all=FALSE, rearrangements="SPR")

# B\'usqueda con Rachet utilizando los \'arboles optimizados con NNI y optimizando con el m\'etodo de rearreglos NNI.

pratchet(primates,  start=optParsUPGMA_NNI,  method="fitch",  maxit=100,  k=5,  trace=1,  all=FALSE, rearrangements="NNI")

#B\'usqueda con Rachet utilizando los \'arboles optimizados con NNI y optimizando con el m\'etodo de rearreglos SPR.

pratchet(primates,  start=optParsUPGMA_NNI,  method="fitch",  maxit=100,  k=5,  trace=1,  all=FALSE,  rearrangements="SPR")


#B\'usqueda con Rachet utilizando los \'arboles optimizados con SPR y optimizando con el m\'etodo de rearreglos NNI

pratchet(primates,  start=optParsUPGMA_SPR,  method="fitch",  maxit=100,  k=5,  trace=1,  all=FALSE, rearrangements="NNI")
#B\'usqueda con Rachet utilizando los \'arboles optimizados con SPR y optimizando con el m\'etodo de rearreglos SPR

pratchet(primates,  start=optParsUPGMA_SPR,  method="fitch", maxit=100,  k=5,  trace=1,  all=FALSE, rearrangements="SPR")



