#Codigo para problema 2

#parte introduccion
mis_datos<- iris

mean(mis_datos$Sepal.Length)

sd(mis_datos$Sepal.Length)

dim(mis_datos)

names(mis_datos)

hist(mis_datos$Sepal.Length)

#Problema 2

x<- mis_datos$Petal.Length
x

y<- mis_datos$Sepal.Length
y

plot(x,y)

#calculo de la pendiente
m= sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
m

#interseccion decon el eje y (b)
b<- mean(y)- m*mean(x)
b

#prediccion cuando Petal.Length = 1.5
m*1.5+b

#forma rapida
model1=lm(y~x)
model1

summary(model1)

abline(model1, col="blue", lwd=4)

#calcular valores de y para x valor/es de x
xpred<- data.frame(x=1.5)

xpred<- data.frame(x=1:7)
xpred

xpred<- data.frame(x=x)
xpred

ypred<- predict(model1,xpred)
ypred

