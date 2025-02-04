library(readr)

#---Balas e Comerciais

#Carrega a tabela de balas
tabela_balas <- read.csv2("tabela_balas.csv")

#sum�rio da tabela
summary(tabela_balas)

#cria a coluna media comerciais
tabela_balas$media_comerciais <- mean(tabela_balas$Comerciais.assistidos)

#cria a coluna media pacotes
tabela_balas$media_pacotes <- mean(tabela_balas$Pacotes.comprados)

#cria a coluna desvio-padr�o para os comerciais
tabela_balas$desvio_comerciais <- sd(tabela_balas$Comerciais.assistidos)

#cria a coluna desvio-padr�o para os pacotes
tabela_balas$desvio_pacotes <- sd(tabela_balas$Pacotes.comprados)

# cria o GR�FICO com os dados as m�dias
plot(tabela_balas$Pacotes, type = "p", pch = 16, cex = 2, xlab = "Pessoas", ylab="N�mero de pacotes/comerciais", ylim=c(0,16), col="darkred")
par(new = TRUE)
plot(tabela_balas$Comerciais.assistidos, type = "p", pch = 15, cex = 2, xlab = NA, ylab = NA, ylim=c(0,16), col="#69b3a2")
par(new = TRUE)
plot(tabela_balas$media_comerciais, type = "l", lty = 2, xlab = NA, ylab = NA,  ylim=c(0,16), col="#69b3a2")
par(new = TRUE)
plot(tabela_balas$media_pacotes, type = "l", lty = 2, xlab = NA, ylab = NA, ylim=c(0,16), col="darkred")
legend(1, 16, legend=c("Pacotes", "Comerciais"),col=c("darkred", "#69b3a2"), pch = 16:15, cex=1)


#faz a correla��o entre as colunas da tabela. Veja que s� os quatro primeiros importam
cor(tabela_balas, method = "pearson")





#-------- correla��o entre peso e tamanho do c�rebro em animais
library(MASS)
head(Animals)
cor(Animals, method = "pearson")

#-------- correla��o entre dados de carros americanos
head(Cars93)
Motor_Consumo <- cor(Cars93$EngineSize, Cars93$MPG.city, method = "pearson")
Motor_potencia <- cor(Cars93$EngineSize, Cars93$Horsepower, method = "pearson")
Motor_Consumo^2
Motor_potencia^2

#-------- correla��o de Spearman
plot(wtloss$Days,wtloss$Weight)
cor(wtloss, method = "spearman")
