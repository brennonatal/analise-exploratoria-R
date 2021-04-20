linear = function(x, y, alfa){
  mod = lm(y ~ x)
  res = summary(mod)
  if(res$coefficients[2,4] >= alfa){
    cat("Não há relação entre x e y,", "y =", 
        round(mean(y),2), "\n")
  }else{
    if(res$coefficients[1,4] >= alfa){
      mod = lm(y ~ x - 1)
      res = summary(mod)
      cat("A equação é: y =", res$coefficients[1], "* x", "\n")
    }else{
      cat("A equação é: y =", res$coefficients[1,1],
          "+", res$coefficients[2,1], "* x", "\n")
      cat("Ou a equação é: y =", mean(y),
          "+", res$coefficients[2,1], "* (x -",  mean(x), ")",
          "\n")
    }
  }
}

linear(x, y, 0.05)
mean(x)
mean(y)

# Cenário sem relação entre X e Y
x1 = runif(20,0,100)
y1 = rnorm(20,20,2)

plot(y1 ~ x1)

linear(x1, y1, 0.05)

# Cenário passando pela origem
x2 = runif(20,0,100)
y2 = rnorm(20,20,2)*x2

plot(y2 ~ x2)

linear(x2, y2, 0.05)


# Cenário  qualquer
x3 = runif(20,0,100)
y3 = rnorm(20,100,1) + rnorm(20,20,2)*x3

plot(y3 ~ x3)


linear(x3, y3, 0.05)