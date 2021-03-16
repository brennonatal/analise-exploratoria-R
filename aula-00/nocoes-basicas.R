# Atribuicao de variaveis

x = c(1, 2, 3, 4, 5)
y <- c(6, 7, 8, 9, 10)
x -> z

a <- cbind(x, y)
# notacao de matriz a[linhas, colunas]

dim(a) # fornece a dimensao da matriz
class(x)
class(a)
b = data.frame(a)
b$y # o sinal $ indica o path, da mesma maneira que / indica
    # caminho (path) no windows e . indica caminho no java

length(a)   # comprimento da matriz = quantidade de observacoes
length(b)   # comprimento do data.frame = quantidade de colunas
length(b$y) # comprimento de uma variavel é a quantidade de observasoes dela (5)

length(b)

c = pi
d = sqrt(12)

round(c, 2) # arredondamento matematico
ceiling(pi) # arredondamento para cima
floor(pi)   # arredondamento para baixo

e = as.integer(pi)  # aparecera um L ao lado do numero no global environment
                    # apenas indicando que o numero é inteiro

f <- pi <= e
class(f)

media <- function(x) {
  resultado <- sum(x)/length(x)
  cat("O resultado é", resultado, "\n")
}

media(z)
mean(z) # funcao nativa para calcular a media

h = c("e", "s", "p", "m", "e", "s", "p", "m", "e", "s", "p", "m", "e", "s", "p", "m")
class(h)
g = factor(h) # a classe factor usa a ordem alfabetica

remove(c)
remove(d)
remove(e)

m = factor(h, levels = c("e", "s", "p", "m"))
# traducao: character == texto
# factor = variavel categorizada

# todo character é um factor, mas nem todo factor é um character

