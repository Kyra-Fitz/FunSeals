#Barplots of seal density by habitat in normal and high swell conditions

#Example
set.seed(112)
data=matrix(sample(1:30,15) , nrow=3)
colnames(data)=c("A","B","C","D","E")
rownames(data)=c("var1","var2","var3")
head(data)
barplot(data, col=colors()[c(23,89,12)] , border="white", font.axis=2, 
        beside=T, legend=rownames(data), xlab="group", font.lab=2)

#Total Density
totaldensity=matrix(c(94.32,587.32,107.63,133.18,791.84,129.69), nrow=3, ncol=2)
colnames(totaldensity)=c("Normal Conditions", "High Conditions")
rownames(totaldensity)=c("Lower", "Middle", "Upper")
View(totaldensity)

barplot(totaldensity, col=colors()[c(23,89,12)] , border="white", font.axis=2, 
        beside=T, legend=rownames(totaldensity), xlab="Habitat", 
ylab="Mean Density (seals/hectare)",font.lab=2)



#Example with Error Bars
# library
library(ggplot2)

# create a dataset
specie=c(rep("sorgho" , 3) , rep("poacee" , 3) , rep("banana" , 3) , rep("triticum" , 3) )
condition=rep(c("normal" , "stress" , "Nitrogen") , 4)
value=abs(rnorm(12 , 0 , 15))
data=data.frame(specie,condition,value)

# Grouped
ggplot(data, aes(fill=condition, y=value, x=specie)) + 
  geom_bar(position="dodge", stat="identity")

Conditions=c(rep("Normal", 3), rep("High", 3))
Habitat=rep(c("Lower", "Middle", "High"), 2)
Values=c(94.32,133.18,587.32,791.84,107.63,129.69)
totaldata=data.frame(Conditions,Habitat,Values)

ggplot(totaldata,aes(fill=Conditions),y=Values,x=Habitat) + 
  geom_bar(position = "dodge",stat="identity")


# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
  geom_bar(stat="identity", position=position_dodge())

dat1 <- data.frame(
  sex = factor(c("Female","Female","Male","Male")),
  time = factor(c("Lunch","Dinner","Lunch","Dinner"), levels=c("Lunch","Dinner")),
  total_bill = c(13.53, 16.81, 16.24, 17.42))

#This one actually works!!!
totaldensity2 <- data.frame(Conditions2 = factor(c("Normal","Normal","Normal",
                                                   "High", "High", "High"), levels=c("Normal","High")),
                            Habitat2=factor(c("Lower", "Middle", "Upper","Lower", "Middle", "Upper"
                                              ), levels=c("Lower", "Middle", "Upper")),
                      MeanDensity=c(94.32,587.32,107.63,133.18,791.84,129.69) )
ggplot(data=totaldensity2, aes(x=Habitat2, y=MeanDensity, fill=Conditions2)) +
  geom_bar(stat="identity", position=position_dodge()) + labs(x="Habitat", 
                                            y="Mean Density (seals/hectare)",fill="Conditions") + 
  geom_pointrange(aes(x=Habitat2, ymin=MeanDensity-sdtotaldensity, ymax=MeanDensity+sdtotaldensity
                    ))

sdtotaldensity<-c(108.55, 781.14, 186.37, 285.07, 997.12, 162.78)
