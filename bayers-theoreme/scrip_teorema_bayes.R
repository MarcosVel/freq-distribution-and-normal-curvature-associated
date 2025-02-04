#script para introdu��o do teorema de Bayes

#� o n�mero total de testes que ser�o aplicados
#numero_de_testes <- 10000
numero_de_testes <- 100000

#� o conhecimento a priore: quantos s�o os resultados previamente com problema
#percentagem_problema  <- 0.20
percentagem_problema  <- 0.10

problemas_conhecidos <- percentagem_problema*numero_de_testes
 
#Erro tipo 1: A hipotese H0 � verdadeira e o teste rejeita H0 
significancia_tipo1 <- 0.05
  
#acuracia do teste: Se H0 � verdadeira, o teste n�o rejeita H0
acuracia_tipo1 <- 1 - significancia_tipo1

#Erro tipo 2: A hipotese H0 � falsa e o teste n�o rejeita H0
#significancia_tipo2 <- 0.05
significancia_tipo2 <- 0.15

#acuracia do teste: Se H0 � falsa, o teste rejeita H0
acuracia_tipo2 <- 1 - significancia_tipo2

#Calculo de Bayes---------

#probabilidade da pessoa ter covid dentre a populacao
P_A <- problemas_conhecidos/numero_de_testes; P_A

#probabilidade do teste dar positivo sabendo que ela tem COVID
P_B_A <- acuracia_tipo2; P_B_A

#probabilidade de B ocorrer sendo que A n�o ocorreu
P_B_nA <- significancia_tipo1; P_B_nA

#probabilidade de A n�o ocorrer
P_nA <- 1 - P_A; P_nA

#probabilidade de A ocorrer se B j� tiver ocorrido
Probabilidade_A_se_B <- P_B_A*P_A/(P_B_A*P_A+P_B_nA*P_nA)

Probabilidade_A_se_B
