# FREQUENCY ANALYSIS
rm(list=ls())

data<-read.csv(file="NOUNS_PART2.csv", header=TRUE, sep=",", dec=".")
data

#NORMALITY TEST 
data2<- subset(data, data$class=="N"| data$class=="P")
data2
y<- data2$freq
y
length(y)
shapiro.test(y)
summary(y)
stdev<- sd(y)
stdev
#ANOVA FOR NOUNS

data2<- subset(data, data$class=="N")
data2

#anova nouns

y<- data2$freq
x<- as.factor(data2$categ)
x
contrasts(x)
model<- aov(y~x)
model
summary(model)

boxplot(x~y)



#ANOVA PART
rm(list=ls())

data<-read.csv(file="NOUNS_PART2.csv", header=TRUE, sep=",", dec=".")
data

data3<- subset(data, data$class=="P" )
data3
y<- data3$freq
y



x<- as.factor(data3$categ)
x

contrasts(x)

model<- aov(y~x)
model
summary(model)

# PREFIX

rm(list=ls())

data<-read.csv(file="NOMI_PART.csv", header=TRUE, sep=",", dec=".")
data

data3<- subset(data, data$ï..SYNT.CLASS=="PREF")

data3
y<- data3$freq

y
shapiro.test(y)
summary(y)
stdev<- sd(y)
stdev




#all together
rm(list=ls())

data<-read.csv(file="NOUNS_PART2.csv", header=TRUE, sep=",", dec=".")
data

data2<- subset(data, data$class=="N" | data$class=="P")
y<- data2$length

y

x<- as.factor(data2$categ)
x

model<- aov(y~x)
summary(model)
