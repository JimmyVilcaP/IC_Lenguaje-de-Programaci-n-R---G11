#autor @Grupo 11 INTRODUCCION A LA COMPUTACION
#Jordy Emanuel Ayma Cutipa
#María Fernanda Santos Villegas
#Antony Juan Tapia Huamantuma
#Jimmy Joaquín Vilca Peralta
# Marco Antonio Suarez Huamani
#===================
#PAQUETES INSTALADOS

#install.package(tidyverse)
#===================
#LIBRERIAS UTILIZADOS
library(tidyverse)
library(ggmap)
library(tibble)

#===================

# Mapa geografica de Peru

library(tidyverse)
ggplot() +
  borders("world","Peru")
# Departamentos de Peru
ciudad <- c("Arequipa","Amazonas","Ancash","Apurimac","Ayacucho","Cajamarca","Cusco","Huancavelica","Huanuco","Ica","Junin","La Libertad","Lambayeque","Lima","Loreto","Madre de Dios","Moquegua","Pasco","Piura","Puno","San Martin","Tacna","Tumbes","Ucayali")
# Latitudes de departamentos de Peru
lat <- c(-16.322972,-6.23071,-9.40014,-13.63884,-13.16380,-7.16140,-13.52969,-12.78556,-9.91496,-14.07568,-12.01801,-8.10847,-6.71909,-12.04443,-3.77479,-12.40337,-17.19338,-10.60595,-5.17864,-15.84033,-5.98536,-18.00672,-3.55570,-8.10643)
# Longitudes de departamentos de Peru
lon <- c(-71.44753,-77.86878,-77.49756,-72.89177,-74.21908,-78.51133,-71.96431,-74.97847,-76.25412,-75.73338,-75.20085,-79.02644,-79.90629,-77.03687,-73.26084,-69.20565,-70.92784,-76.26335,-80.65797,-70.02248,-76.95806,-70.24566,-80.43044,-74.50544)
#asiganacion 

bibliotecas <- tibble(ciudad = ciudad,
                      lati = lat,
                      lon = lon)

#imprime puntos
ggplot() +
  borders("world", "Peru") +
  geom_point(data = bibliotecas,
             aes(x = lon,
                 y = lat))
#imprime mas nombres de las ciudades
ggplot() +
  borders("world", "Peru",colour = "blue", fill = "red") +
  geom_text(data = bibliotecas,
            aes(x = lon, y = lati),
            label = ciudad)+
  ggtitle("MAPA DE PERU",
          subtitle = "Felices 200 años de independencia
          @(INTRODUCCION A LA COMPUTACION)
          @Autores:
              _#María Fernanda Santos Villegas
              _#Jordy Emanuel Ayma Cutipa
              _#Marco Antonio Suarez Huamani
              _#Antony Juan Tapia Huamantuma
              _#Jimmy Joaquín Vilca Peralta")
