#Linear Regressions of Age Class vs. Tide and Wave Height
#Density vs. Tide Height
#Weanling
Weanling.TideWave=read.csv("Weanling Tide and Wave.csv", header=TRUE)
head(Weanling.TideWave)
WeanDensity=Weanling.TideWave$Weanling.Mean.Density
WeanTide=Weanling.TideWave$Weanling.Tide.Height
WeanWave=Weanling.TideWave$Weanling.Wave.Height
plot(WeanTide,WeanDensity,xlab="Tide Height (feet)", 
     ylab="Mean Density (seals/hectare)", main="Weanling Density vs. Tide Height", 
     pch=19, ylim=c(0,1650), xlim=c(0,7))
WeanTideReg=lm(WeanDensity~WeanTide)
summary(WeanTideReg)
abline(WeanTideReg, col="red")

#Juvenile
Juv.TideWave=read.csv("Juvenile Tide and Wave.csv", header=TRUE)
JuvDensity=Juv.TideWave$Juvenile.Mean.Density
JuvTide=Juv.TideWave$Juvenile.Tide.Height
JuvWave=Juv.TideWave$Juvenile.Wave.Height
plot(JuvTide,JuvDensity,xlab="Tide Height (feet)", 
     ylab="Mean Density (seals/hectare)", main="Juvenile Density vs. Tide Height", 
     pch=19, xlim=c(0,7), ylim=c(0,1650))
JuvTideReg=lm(JuvDensity~JuvTide)
summary(JuvTideReg)
abline(JuvTideReg, col="red")

#AdultFemale
AdFem.TideWave=read.csv("Adult Female Tide and Wave.csv", header=TRUE)
AdFemDensity=AdFem.TideWave$Adult.Female.Mean.Density
AdFemTide=AdFem.TideWave$Adult.Female.Tide.Height
AdFemWave=AdFem.TideWave$Adult.Female.Wave.Height
plot(AdFemTide,AdFemDensity,xlab="Tide Height (feet)", 
     ylab="Mean Density (seals/hectare)", main="Adult Female Density vs. Tide Height", 
     pch=19, xlim=c(0,7), ylim=c(0,1650))
AdFemTideReg=lm(AdFemDensity~AdFemTide)
summary(AdFemTideReg)
abline(AdFemTideReg, col="red")

#AdultMale
Male.TideWave=read.csv("Adult Male Tide and Wave.csv", header=TRUE)
MaleDensity=Male.TideWave$Adult.Male.Mean.Density
MaleTide=Male.TideWave$Adult.Male.Tide.Height
MaleWave=Male.TideWave$Adult.Male.Wave.Height
plot(MaleTide,MaleDensity,xlab="Tide Height (feet)", 
     ylab="Mean Density (seals/hectare)", main="Adult Male Density vs. Tide Height", 
     pch=19, xlim=c(0,7), ylim=c(0,1650))
MaleTideReg=lm(MaleDensity~MaleTide)
summary(MaleTideReg)
abline(MaleTideReg, col="red")

#Density vs. Wave Height
#Weanling
Weanling.TideWave=read.csv("Weanling Tide and Wave.csv", header=TRUE)
head(Weanling.TideWave)
WeanDensity=Weanling.TideWave$Weanling.Mean.Density
head(WeanWave)
WeanWaveReg=lm(WeanDensity~WeanWave)
summary(WeanWaveReg)

#Juvenile
JuvWaveReg=lm(JuvDensity~JuvWave)
summary(JuvWaveReg)

#Adult Female
AdFemWaveReg=lm(AdFemDensity~AdFemWave)
summary(AdFemWaveReg)

#Adult Male
MaleWaveReg=lm(MaleDensity~MaleWave)
summary(MaleWaveReg)

#All age classes
AllDensity=read.csv("TideWaveR.csv", header=TRUE)
AllDens=AllDensity$Mean.Density
AllWave=AllDensity$Wave.Height..m.
AllTide=AllDensity$Tide.Height

AllWaveReg=lm(AllDens~AllWave)
summary(AllWaveReg)
plot(AllWave,AllDens,xlab="Wave Height (m)", 
     ylab="Mean Density (seals/hectare)",
     pch=19)
abline(AllWaveReg, col="red")

AllTideReg=lm(AllDens~AllTide)
summary(AllTideReg)
plot(AllTide,AllDens,xlab="Tide Height (feet)", 
     ylab="Mean Density (seals/hectare)", 
     pch=19, ylim=c(0,1650), xlim=c(0,7))
abline(AllTideReg, col="red")
