animais <- c("cachorro", "gato", "peixe", "peixe", "lagarto")
alimentos <- c("pao", "laranja", "chocolate", "cenoura", "leite")

df <- data.frame(animais, alimentos)

write.csv(df, "animais_e_alimentos.csv")

install.packages('tidyverse', dependencies = TRUE)
library('tidyverse')
vignette('tidy-data')
