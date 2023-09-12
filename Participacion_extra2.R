

#___________ Práctica 1_______________
# Exploración de datos


# Se implementa la matriz iris que se encuentra cargada en R

#--------------------------------------------------------
#        Exploración de la Matriz  Iris
#--------------------------------------------------------

# 1.- Importación de la matriz
data(penguins)

# 2.- Dimensión de la matriz
dim(penguins)

# 3.- Nombre de las columnas
colnames(penguins)

# 4.- Tipo de variables
str(penguins)

# 5.- En busca de datos perdidos
anyNA(penguins)


























#_____________________ MEDIDAS ___________________

# Se trabajará con la matriz de datos "penguins.xlsx"
# Obtenida de https://allisonhorst.github.io/palmerpenguins/

#----------------------------------------------
# Descargar la matriz y 
# subirla a la nube de trabajo
#----------------------------------------------

# 1.- Descargar la matriz desde classroom o github 
# Nota: El archivo se encontrará en la carpeta de descargas

# 2.- En la ventana de visualizacion (ventana 4) seleccionar:
# Upload / Seleccionar archivo / abrir la carpeta en donde se encuentra
# descargado el archivo (carpeta de descargas)/ aceptar.


#----------------------------------------
# Exportacion de la matriz
#----------------------------------------

# Environment /Import dataset/from excel/ Browser/ seleccionar el 
# archivo/ aceptar/ (visualizar)/ import

#----------------------------------------
#  Exploracion de la matriz
#----------------------------------------

dim(penguins)
str(penguins)
colnames(penguins)
anyNA(penguins)


#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(penguins)


# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")

# 2.2.- Se abre la librería
library(modeest)

# 2.3.- Cálculo de la moda para la variable masa corporal
#mfv(penguins$isla) # categorica
mfv(penguins$masa_corporal_g) # numerica masa_corporal_g


#-----------------------------------------------
#    Medidas de posición
#------------------------------------------------

# 1.- Cuartiles (cuantiles)
summary(penguins)

# Selección de una variable de la matriz de datos
masa_corporal_g<-penguins$masa_corporal_g

table(masa_corporal_g)

# 2.- Quintil
quintil<-quantile(penguins[["masa_corporal_g"]], 
                  p=c(.20, .40, .60, .80))

#2.1.- Visualizacion de la variable
quintil

# 3.- Decil
decil<-quantile(penguins[["masa_corporal_g"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))

#3.1.- Visualizacion de la variable
decil


# 4.- Percentil
percentil<-quantile(penguins[["masa_corporal_g"]], 
                    p=c(.33, .66))
percentil

# Interpretacion:
# <3700 = Bajo
# 3700-4500 = Intermedio
# > 4500 = Alto

table(masa_corporal_g)

#-----------------------------------------------
#      Medidas de dispersión
#-----------------------------------------------

# 1.- Cálculo de la varianza (sólo para variables cuantitativas)
var(penguins$masa_corporal_g)

# 2.- Cálculo de la desviación estándar
sd(penguins$masa_corporal_g)

# 3.- Error
media_masa<-mean(penguins$masa_corporal_g)
error<-(penguins$masa_corporal_g-(media_masa))
error


#4.- Coeficiente de variacion
CV<-sd(penguins$masa_corporal_g)/mean(penguins$masa_corporal_g)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(penguins$masa_corporal_g)

# 6.- Rango
masa<-penguins$masa_corporal_g
rango<-max(masa)-min(masa)
rango
