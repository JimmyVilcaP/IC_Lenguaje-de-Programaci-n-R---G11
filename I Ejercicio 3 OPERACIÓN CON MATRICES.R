#Lenguaje R

#Operaciones con matrices
a=matrix(1:8, nrow=2, ncol=4, byrow=T)
b=matrix(9:16, nrow=2, ncol=4, byrow=T)
a;b

#Suma y resta
a+b; b-a
#Multiplicación por un escalar
a*3
#División por escalar
b/2

m=matrix(1:6, nrow=3, ncol=2)
n=matrix(7:12, nrow=2, ncol=3, byrow=T)
m;n

#Multiplicación
m%*%n
