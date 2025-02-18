
#faz o gr�fico da distribui��o normal utilizando a m�dia e o desvio-padr�o da tabela 4 de Jan17
x <- seq(0,200, by = 1)
y <- dnorm(x, mean = 69.3093, sd = 6.4445)
plot(x,y, xlab = NA ,ylab= NA, type = 'l', col = 'darkgreen')

#a vari�vel z � a padroniza��o dos valores do eixo horizontal
z <-  c((x - Media_Jan17)/desvio_padrao)

#curva normal padronizada com m�dia zero e desvio 1
y2 <- dnorm(z, mean = 0, sd = 1)

plot(z,y2,type="l",lwd=2,col='darkred')

#---- Probabilidade de v < 70km/h

#definimos a velocidade a ser analisada
velocidade <- 60

#pegamos a m�dia da distribui��o dos nossos dados
Media = 69.3093

#pegamos tamb�m o desvio-padr�o dos dados
desvio_padrao = 6.4445

#E agora temos o valor num�rico da probabilidade. A resposta sai no terminal abaixo
pnorm(velocidade, mean = Media, sd = desvio_padrao)


#Para fazer um gr�fico que mostra todas as velocidades abaixo de 70km/h
z1 <- (velocidade - Media_Jan17)/6.44

x=seq(-4,4,length=200)
y=dnorm(x)
plot(x,y,type="l", lwd=4, col="darkred")

x=seq(-4,z1,length=200)
y=dnorm(x)
polygon(c(-4,x,z1),c(0,y,0),col="gray")

