#This one actually works!!!
totaldensity2 <- data.frame(Conditions2 = factor(c("Normal","Normal","Normal",
                                                   "High", "High", "High"), levels=c("Normal","High")),
                            Habitat2=factor(c("Lower", "Middle", "Upper","Lower", "Middle", "Upper"
                            ), levels=c("Lower", "Middle", "Upper")),
                            MeanDensity=c(94.32,587.32,107.63,133.18,791.84,129.69) )
ggplot(data=totaldensity2, aes(x=Habitat2, y=MeanDensity, fill=Conditions2)) +
  geom_bar(stat="identity", position=position_dodge()) + labs(x="Habitat", 
                      y="Mean Density (seals/hectare)",fill="Conditions") + 
  geom_pointrange(aes(x=Habitat2, ymin=MeanDensity-sdtotaldensity, 
                  ymax=MeanDensity+sdtotaldensity), position = position_dodge(.9))
                   
sdtotaldensity<-c(108.55, 781.14, 186.37, 285.07, 997.12, 162.78)

#Boxplot
#All age classes
Habitat=c(rep("Lower",35),rep("Middle",36), rep("Upper", 30))
BoxDensity=read.csv("Total Density String2.csv", header=TRUE)
data=data.frame(Habitat, BoxDensity)

qplot(x=Habitat, y=BoxDensity, data=data, geom=c("boxplot", "jitter"), fill=Habitat) + labs(
  y="Density (seals/hectare)")

#Weanlings excluding Oct.-Jan.
WeanHabitat=c(rep("Lower",18),rep("Middle",19), rep("Upper", 16))
WeanDensity=read.csv("WeanString.csv",header=TRUE)
head(WeanDensity)
weandata=data.frame(WeanHabitat,WeanDensity)
head(weandata)

qplot(x=WeanHabitat, y=WeanDensity, data=weandata, geom=c("boxplot", "jitter"), 
      fill=WeanHabitat) + labs(y="Density (seals/hectare)", x="Habitat", fill="Habitat") + ylim(0,1500)

#Juveniles excluding Dec, Jan, Feb.
JuvHabitat=c(rep("Lower",20),rep("Middle",21), rep("Upper", 18))
JuvBoxDensity=read.csv("JuvString.csv",header=TRUE)
head(JuvBoxDensity)
juvdata=data.frame(JuvHabitat,JuvBoxDensity)
head(juvdata)

qplot(x=JuvHabitat, y=JuvBoxDensity, data=juvdata, geom=c("boxplot", "jitter"), 
      fill=JuvHabitat) + labs(y="Density (seals/hectare)", x="Habitat", fill="Habitat")

qplot(x=JuvHabitat, y=JuvBoxDensity, data=juvdata, geom=c("boxplot"), 
      fill=JuvHabitat) + labs(y="Density (seals/hectare)", x="Habitat", fill="Habitat")

#Adult Female excluding Oct,Nov,March
FemHabitat=c(rep("Lower",23),rep("Middle",24), rep("Upper", 20))
FemBoxDensity=read.csv("FemString.csv",header=TRUE)
head(FemBoxDensity)
femdata=data.frame(FemHabitat,FemBoxDensity)
head(femdata)

qplot(x=FemHabitat, y=FemBoxDensity, data=femdata, geom=c("boxplot", "jitter"), 
      fill=FemHabitat) + labs(y="Density (seals/hectare)", x="Habitat", fill="Habitat")

#Adult Male excluding Oct, Nov, March, April
MaleHabitat=c(rep("Lower",20),rep("Middle",20), rep("Upper", 16))
MaleBoxDensity=read.csv("MaleString.csv",header=TRUE)
head(MaleBoxDensity)
maledata=data.frame(MaleHabitat,MaleBoxDensity)
head(maledata)

qplot(x=MaleHabitat, y=MaleBoxDensity, data=maledata, geom=c("boxplot", "jitter"), 
      fill=MaleHabitat) + labs(y="Density (seals/hectare)", x="Habitat", fill="Habitat")
