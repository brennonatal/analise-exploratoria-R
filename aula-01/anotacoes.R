##################################################
####  AULA 01 - A ORGANIZACAO DOS DADOS NO R  ####
##################################################

# Primeiro: instalar o pacote 'tidyverse'

install.packages('tidyverse')
library(tidyverse)  # carrega o pacote

vignette('tidy-data') #chama no help

dados <- read_csv('cces_sample.csv')

dados <- drop_na(dados) # eliminar missings (nem sempre sera a melhor solucao)
                        # Imputacao é o nome dado para substituicao do missing value
                        # ou pela media (numerica), mediana (inteiro) ou moda (character)

women <- filter(dados, gender == 2) # filtrando todos os dados com gender igual a 2

dim(dados)
dim(women)

table(dados$gender) # indica um encadeamento (ramificacao)

republican_women <- filter(women, pid7 > 4)
dim(republican_women)

table(republican_women$pid7)

# select serve para recortar a base e diminuir a quantidade de colunas na base
recorte <- select(republican_women, 'educ', 'employ')
dim(recorte)

# filter reduz a quantidade de linhas
# select reduz a quantidade de colunas

# Pipping
women_republican_educ_employ <- dados %>% filter(gender == 2 & pid7 > 4) %>% select('educ', 'employ')


party <- recode(dados$pid7,
                `1`="Democrat",
                `2`="Democrat",
                `3`="Democrat",
                `4`="Independent",
                `5`="Republican",
                `6`="Republican",
                `7`="Republican")
table(party)

dados$party <- party

# rename(nome_da_base, nome_novo = nome_antigo)

base <- rename(dados,partido = party)
base <- rename(dados, partido = party, posicionamento = pid7)

# mean serve para o cálculo da média, e sd para o cálculo
# do desvio padrão (sd = standard deviation)

# A função summarise é a que mais se aproxima de uma “tabela dinâmica”
summarise(dados, media = mean(pid7), desvio = sd(pid7))

install.packages("tinytex")
tinytex::install_tinytex()

# Problema 1

#### solução:
obj_ex_um <- dados %>% select('educ','edloan', 'employ', 'CC18_308a')

# Problema 2

#### solução:
trump_approve_disapprove <- recode(obj_ex_um$CC18_308a,
                                   `1` = 'Approve',
                                   `2` = 'Approve',
                                   `3` = 'Disapprove',
                                   `4` = 'Disapprove')

# Problema 3

#### solução: 

solution <- dados %>%
            filter(employ == 1 & marstat == 1) %>%
            select("pew_religimp") %>%
            summarise(media = mean(pew_religimp),`mediana` = median(pew_religimp))

print(solution)

