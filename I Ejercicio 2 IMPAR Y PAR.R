#Lenguaje R

#Números impares y pares entre un rango de M y N
m=5
n=20
print("PARES")
while(m<=n) {
  if(m%%2==0) {
    print(m)
  }
  m=m+1
}

m=5
n=20
print("IMPARES")
while(m<=n) {
  if(m%%2!=0) {
    print(m)
  }
  m=m+1
}
