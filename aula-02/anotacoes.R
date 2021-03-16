library('tidyverse')

#install.packages("tinytex")
#tinytex::install_tinytex()   

dados <- read_delim( "https://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt", delim = "\t")

a = table(dados$continent)/12
a
pie(a) 

b = 1704/12
b

dim(a)
length(a)

# Colorindo com as cores básicas:
pie(a, col = c(1:dim(a))) # ou pie(a, col = c(1:length(a)))

# Colorindo com degradê de uma matiz a outra(no padrão RGB):
degrade = colorRampPalette(c('red', 'yellow'))
pie(a, col = degrade(length(a)))

degrade = colorRampPalette(c('green', 'blue'))
pie(a, col = degrade(length(a)))

# Colorindo com degradê na mesma matiz:
matiz = colorRampPalette(c("darkblue", "lightblue"))
pie(a , col = matiz(length(a)))

par(mfrow = c(1,1))

matiz = colorRampPalette(c("darkgreen", "lightgreen"))
pie(a , col = matiz(length(a)))


barplot(sort(a,decreasing = TRUE), col = matiz(length(a)))
#
boxplot(dados$lifeExp ~ dados$continent , col = matiz(length(a)), xlab = "Continentes", ylab = "Expectativa de vida")


