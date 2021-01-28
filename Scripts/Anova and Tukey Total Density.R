
library(reshape2)
#Reshape package
#Move data from wide to long (columns to rows)
data <- melt(Total_Density_Boxplot, variable.name = "Habitat", value.name = "density")
#dcast - move from long to wide

#Anova and Tukey test for all age groups
aov1 <- aov(density ~ Habitat, data=data)

summary(aov1)

TukeyHSD(aov1)
#Results
> TukeyHSD(aov1)
Tukey multiple comparisons of means
95% family-wise confidence level

Fit: aov(formula = density ~ Habitat, data = data)

$Habitat
diff       lwr       upr     p adj
Middle-Lower  538.705863  245.2290  832.1827 0.0000917
Upper-Lower     8.090163 -299.5138  315.6942 0.9978425
Upper-Middle -530.615699 -836.2415 -224.9899 0.0002225
#Middle significantly different from upper and lower, 
#lower and upper not signifcantly different

