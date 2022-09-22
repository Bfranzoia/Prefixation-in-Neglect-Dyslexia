rm(list=ls())
# morph vs other
datatable<- matrix(c(31,16), nrow=1, ncol=2)
datatable
results<-chisq.test(datatable,correct= FALSE )
results
p<-round(results$p.value, 5)
#morph vs all
datatable<- matrix(c(7,17,
                     7,21,
                     7,15,
                     14,17,
                     17,45,
                     19,27,
                     3,48,
                     27,29),8,2, byrow=TRUE)

datatable

results<-chisq.test(datatable,correct= TRUE)
results
p<-round(results$p.value, 5)
# other vs all

datatable<- matrix(c(3,21,
                     3,25,
                     4,18,
                     5,26,
                     10,47,
                     7,44,
                     3,43,
                     10,46),8,2, byrow=TRUE)

datatable

results<-chisq.test(datatable,correct= TRUE)
results
p<-round(results$p.value, 5)

#test esatto di Fisher
rm(list=ls())
cells <- c(4,3,5,2) # genera l'array cells con i valori numerici contenuti nelle celle
rnames <- c("BO", "FT") # genera l'array rnames con i nomi delle righe
cnames <- c("morf", "other") # genera l'array cnames con i nomi delle colonne
mydata <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames)) # genera la matrice dei dati
mydata # mostra i dati
mydata<- matrix(c(3,49,
                  27,29),2,2, byrow=TRUE)
mydata
fisher.test(mydata) # esegue il test di Fisher
#
results<-chisq.test(mydata,correct= TRUE)
results
mydata<- c(12,27)
