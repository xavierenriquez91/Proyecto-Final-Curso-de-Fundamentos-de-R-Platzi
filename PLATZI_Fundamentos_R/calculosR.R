4 + 8

20-9

4^2

X <- 86
X

Oficina <- 7
Platzi <- 1
transporte <- 1.5
Tiempo_al_dia <- Oficina + Platzi + transporte
Tiempo_al_dia

Corte_1 <- 0.3
Corte_2 <- 0.3
Corte_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0

Nota_c_1 <- Nota_1 * Corte_1
Nota_c_1

Nota_c_2 <- Nota_2 * Corte_2
Nota_c_2

Nota_c_3 <- Nota_3 * Corte_3
Nota_c_3

Nota_final <- Nota_c_1 + Nota_c_2 + Nota_c_3
Nota_final


## VIDEO #6 CURSO PLATZI

str(mtcars) # este comando te muestra todos los campos de un dataset, los tipos de datos y un breve

  class(mtcars)
  str(mtcars)
  
################

# Tabla con la media de cada variable
  stats <- as.matrix(apply(mtcars, 2, mean))
  
  # Asignar el nombre de la columna a stats
  colnames(stats) = "KWEAAA"
  print(stats,digits=2)
    
################

class(mtcars$vs)
class(mtcars$am)


mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(orangeec)

## VIDEO #7

summary(orangeec)
summary(mtcars)

wt <- (mtcars$wt*1000)/2

wt

mtcars.new <- transform(mtcars,wt=wt*1000/2) # CON ESTA FUNCIÓN SE CAMBIO EL TIPO DE DATO DE UNA VARIABLE
mtcars.new


summary(mtcars.new)

## VIDEO #8 USO DE VECTORES

tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje


#VECTOR CON CARACTERES

dias_aprendizaje <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
dias_aprendizaje

dias_mas_20min <- c(TRUE,FALSE,FALSE,TRUE,TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi

total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas

total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas
total_tiempo_adicional

## VIDEO #9 MATRICES

tiempo_matrix <- matrix(c(tiempo_platzi,tiempo_lecturas),
                        nrow = 2,byrow = TRUE)

dias <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
Tiempo <- c("tiempo_platzi","tiempo_lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix

colSums(tiempo_matrix)

## VIDEO #10 AGREGAR UNA NUEVA FILA A LA MATRIZ

final_matrix <- rbind(tiempo_matrix,c(10,15,30,5,0)) #con rbind se agrega una nueva fila
final_matrix

colSums(final_matrix)

final_matrix <- cbind(final_matrix, Sabado = c(1, 2, 3)) #con cbind se agrega una nueva columna
final_matrix

#ubicar un elemento de una matriz

final_matrix[1,5] #fila 1, columna 5

## VIDEO #11 OPERADORES PARA COMPARAR

# == IGUAL
# != NO IGUAL
# < MENOR QUE
# < MENOR O IGUAL QUE
# > MAYOR QUE
# >= MAYOR O IGUAL QUE
# | SIGNIFICA "O"
# ! SIGNIFICA "NO"
# %in% QUE ESTÉ EN EL DATA SET

mtcars[mtcars$cyl<6,]

orangeec[orangeec$GDP.PC>= 15000,]

orangeec[orangeec$Creat.Ind...GDP<=2,]

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >= 4.5)

neworangeec

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >= 4.5,
                      select = Creat.Ind...GDP)


neworangeec

rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))

# VIDEO #12 FACTORES

Nivel_curso <- c("Básico", "Intermedio", "Avanzado")
Nivel_curso

head(mtcars)
head(orangeec)

#PARA HECHAR UN VISTAZO AL DATASET "TABLA", SE INSTALA LA LIBRERÍA "DPLYR" Y SE ACTIVA LA CASILLA EN EL LADO DERECHO DEL R

# SE USA glimpse para ver qué hay en el dataset
glimpse(orangeec)


my_vector <- 1:8
my_vector
my_matrix <- matrix(1:9, ncol = 3)
my_matrix
my_df <- mtcars[1:4,]
my_df


my_list = list(my_vector,my_matrix,my_df)
my_list


## VIDEO # 16
# EDA Scatter plot


plot(mtcars$mpg ~ mtcars$cyl,
     xlab = "cilindros",
     ylab = "millas por galon",
     main = "Relación cilindors vs millas por galon")


plot(mtcars$mpg ~ mtcars$hp,
     xlab = "caballos de fuerza",
     ylab = "millas por galon",
     main = "Relación caballos de fuerza vs millas por galon")


# EDA Scatter de Economía Naranja
# usar las teclas ALT + 126 para el signo ~


plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab = "Inversión Educación (%PIB)",
     ylab = "Desempleo",
     main = "Relación inversión educación vs desempleo")


plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab = "Aporte Economia Narnaja al PIB",
     ylab = "PIB per Cápita",
     main = "Relación Economía Naranja vs PIB per cápita")

## VIDEO # 17
# EDA HISTOGRAMAS
# para usar la función qplot primero hay que activar la librería ggplot2

qplot(mtcars$hp,
      geom = "histogram",
      xlab = "Caballos de fuerza",
      main =  "Carros según caballos de fuerza")

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+ # binwidth cambia el tamaño de las barras
  labs(x="Caballos de fuerza", y="Cantidad de carros",
                 title="Caballos de fuerza en carros seleccionados") +
  theme(legend.position = "none")+
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# otra manera de hacer el histograma

ggplot() + geom_histogram(data=mtcars,
                          aes(x=hp), fill="blue", color="red",
                          binwidth = 20)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados") +
  xlim(c(80,280))+
  theme(legend.position = "none")+
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


## VIDEO 19. EDA CON DATASET PROYECTO - HISTOGRAMAS - GGPLOT2

ggplot() + geom_histogram(data=orangeec,
                          aes(x=GDP.PC), fill="blue", color="red",
                          binwidth = 2000)+
  labs(x="PIB PER CÁPITA", y="CANTIDAD DE PAÍSES",
       title="PIB PER CÁPITA EN PAISES LATAM") +
  theme(legend.position = "none")+
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot() + geom_histogram(data=orangeec,
                          aes(x=Creat.Ind...GDP), fill="blue", color="red",
                          binwidth = 0.5)+
  labs(x="Aporte Economía naranja al PIB(%)", y="CANTIDAD DE PAÍSES",
       title="CONTRIBUCIÓN ECONOMÍA NARANJA AL PIB EN PAISES LATAM") +
  theme(legend.position = "none")+
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# OTRO EJEMPLO 

ggplot() + geom_histogram(data=orangeec,
                          aes(x=Internet.penetration...population), fill="red", color="yellow",
                          binwidth = 5)+
  labs(x="Penetración internet(%)población", y="CANTIDAD DE PAÍSES",
       title="PENETRACIÓN DE INTERNET EN PAISES LATAM") +
  scale_x_continuous(breaks = seq(40, max(100),5))+ # con esta línea coloco todos los datos en el eje X
  theme(legend.position = "none")+
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

## VIDEO 19. BOXPLOT

boxplot(mtcars$hp,
        ylab="Caballos de fuerza",
        main="Caballos de fuerza en carros mtcars")

ggplot(mtcars,aes(x=as.factor(cyl), y=hp,fill=cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x="Cilindros", y="Caballos de fuerza",
       title = "Caballos de fuerza según cilindros en mtcars")+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars,aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x="Tipo de Caja", y="millas por galón",
       tittle="Millas por galón según tipo de caja mtcars")+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# cambio de transmisión

mtcars$am <- factor(mtcars$am, levels=c(TRUE,FALSE),
                    labels = c("Manual","Automatico"))

## VIDEO 20

economy <- mean(orangeec$GDP.PC)
economy

orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                    "Por debajo del promedio PIB per cápita",
                    "Sobre el promedio PIB per cápita"))

#

ggplot(orangeec, aes(x=Strong_economy, y=Creat.Ind...GDP,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de país", y="Aporte economía naranja al PIB",
       title = "Aporte Economía Naranja en PIB paises LATAM 
       con alto y bajo PIB per Cápita")+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#

ggplot(orangeec, aes(x=Strong_economy, y=Internet.penetration...population,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de país", y="Penetración de Internet(%)",
       title = "Penetración de internet en paises LATAM 
       con alto y bajo PIB per Cápita")+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

## VIDEO 21. GRÁFICOS DE DISPERSIÓN

ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x="Caballos de fuerza", y="Millas por galón",
       title = "Relación caballos de fuerza y millas por galón")+
  scale_x_continuous(breaks = seq(50, max(400),50))+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x="Peso", y="Caballos de fuerza",
       title = "Relación peso y caballos de fuerza")+
  scale_x_continuous(breaks = seq(1, max(10),1))+
  theme(legend.position = "none")+ #esta parte quita el fondo gris
  theme(panel.background =  element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


# 4 variables relacionadas
ggplot(mtcars, aes(hp,qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(x= "Caballos de fuerza", y="Tiempo 1/4 milla",
       title="Caballos-velocidad según cilindraje y tipo caja")

## VIDEO 22. SCATTER PLOT MÁS DE 2 VARIABLES

ggplot(orangeec, aes(Internet.penetration...population,Creat.Ind...GDP))+
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(x= "Penetración Internet", y="Aporte Economía Naranja al PIB",
       title="Internet y aporte Economía Naranja según economía y crecimiento PIB")

# EJERCICIO

ggplot(orangeec, aes(Education.invest...GDP,Unemployment))+
  geom_point(aes(color=factor(Strong_economy), size=X..pop.below.poverty.line))+
  labs(x= "Inversión en Educación", y="Desempleo",
       title="Inversión Educación y Desempleto según economía y población debajo de la línea de pobreza")

#

my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP,label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetración Internet", y="Aporte Economía Naranja",
       title = "Penetración de Internet y Aporte Econ Naranja")

my_graph

p = ggplotly(my_graph)

p

my_graph2<-ggplot(orangeec,aes(Internet.penetration...population,
                               Creat.Ind...GDP,label=Country))+
  geom_point()+
  labs(x="Penetration Internet",y="Aporte economía naranja",
       title = "Penetración Internet y aporte economía naranja")

my_graph2

p1=ggplotly(my_graph2)
p1

## VIDEO 23 

## OTRO - VIDEO DE YOUTUBE https://www.youtube.com/watch?v=3nqkbJFGlkg

df <- mtcars%>%
  group_by(model)%>%
  summarise(Suma = sum(hp),
            Promedio = mean(hp),
            Mínimo = min(hp),
            Máximo = max(hp))


df

write.csv(df, "MedidasTC.csv")



datosCompleto %>%   filter(Colegio=="Privado") %>%   group_by(Sexo)  %>% 
  
  summarise(n = length(as.numeric(P3)),
            Promedio = mean(as.numeric(P3)),
            Desviacion = sd(as.numeric(P3)),
            Minimo = min(as.numeric(P3)),
            Maximo = max(as.numeric(P3))) 




library(agricolae)
tbFreqEdad=table.freq(mtcars(hp,plot=FALSE))
tbFreqEdad

## video 23

my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP,label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetracion internet", y="Aporte economia naranja",
       title="Penetración Internet y aporte economia naranja")

my_graph

p = ggplotly(my_graph) ##esta parte sirve para pasar el puntero sobre el gráfico y que te muestre información
p

## video 24. CORRELACIONES

pairs(mtcars[,2:6])

pairs(mtcars)

#
newdata <- subset(mtcars,select=c(2,7:8,11,12)) # el select selecciona las columnas necesarias
pairs(newdata)

#
pairs(mtcars[,-c(1,3,4,5,6,9,10)]) ##otra manera de elegir columnas
#
Eficientes <- filter(mtcars, mpg >=30)
Eficientes
#
pairs(Eficientes[,2:6])
#
merc <- mtcars %>%
  filter(str_detect(model,"Merc"))
merc
pairs(merc[,2:6]) ## dentro de los corchetes, la coma "," significa que queremos todos los registros y a la derecha de esta el número de columnas a analizar


## VIDEO 25. CORRELACIONES ESTADÍSTICAS
cor(mtcars[,2:6]) ## cor significa correlación
#
cor(newdata)
#
cor(merc[,2:6])

#
pairs(orangeec[,2:6])
#
pairs(orangeec[,5:10])

ggplot(orangeec, aes(x= GDP.PC, y= Median.age, colour="blue", label=Country))+
  geom_point() +geom_text(aes(label=Country),hjust=0, vjust=0)+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
newdata <- subset(orangeec,select=c(5,6,10,11,12,13))
newdata
pairs(newdata)

## VIDEO 26. CONFIRMANDO CORRELACIONES

cor(orangeec[,2:6])

#solucionar NA

cor(orangeec[,2:6],use="complete.obs") #la parte derecha del "use" indica que solo se toman valores numéricos
cor(orangeec[,5:10],use="complete.obs")
cor(newdata,use="complete.obs")

## VIDEO 27. DESVIACIÓN ESTÁNDAR

summary(mtcars)

sd(mtcars$mpg) #sd = standar division
desv <- sd(mtcars$mpg)
mean(mtcars$mpg)

#
prom <- mean(mtcars$mpg)
prom
#
CoefVar <- (desv/prom) * 100
CoefVar

## VIDEO 28.

sd(orangeec$Internet.penetration...population)
desv <- sd(orangeec$Internet.penetration...population)
desv

mean(orangeec$Internet.penetration...population)
prom <- mean(orangeec$Internet.penetration...population)
prom
#
coefVariacion <- (desv/prom) * 100
coefVariacion
#
mean(orangeec$Creat.Ind...GDP)
mean(orangeec$Creat.Ind...GDP, na.rm=TRUE)
prom <- mean(orangeec$Creat.Ind...GDP, na.rm=TRUE)

sd(orangeec$Creat.Ind...GDP)
sd(orangeec$Creat.Ind...GDP, na.rm=TRUE)
desv <- sd(orangeec$Creat.Ind...GDP, na.rm=TRUE)
#
CoefVar <-(desv/prom)*100
CoefVar

## VIDEO 29. PRESENTACIÓN DE RESULTADOS + ARTÍCULO
##https://soniaardila1.medium.com/c%C3%B3mo-escogemos-nuestra-nave-espacial-una-c%C3%B3smica-historia-de-mercadeo-e26f5599263d

## VIDEO 30. MEJORES VISUALIZACIONES
library(dplyr)
eficiente <- mean(mtcars$mpg)
eficiente

mtcars <- mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficiente,
                               "bajo promedio","en o sobre promedio"))  

Mas_veloces <- mtcars[mtcars$qsec<16,]
Mas_veloces

mtcars <- mtcars %>%
  mutate(Velocidad_Cuarto_milla=ifelse(qsec < 16,
                                        "Menos 16 segs",
                                        "Más 16 segs"))

mtcars <- mtcars %>%
  mutate(Peso_kilos=(wt/2)*1000)

mtcars <- mtcars %>%
  mutate(Peso = ifelse(Peso_kilos <= 1500,
         "Livianos","Pesados"))  

## VIDEO 31. MEJORES GRÁFICOS

library(dplyr)
orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5,
                                  "2.5% o más","Menos 2.5%"))  

orangeec <- orangeec %>%
  mutate(Anaranjados = ifelse(Creat.Ind...GDP >= 2.5, ## el mutate sirve para agregar columnas
                              "Más anaranjados", "Menos anaranjados"))

#ranking

orangeec %>%
  arrange(desc(Creat.Ind...GDP))

TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama","Argentina","Colombia","Brazil","Paraguay") )

TopNaranjas

#TOP
TopNaranjas %>%
  arrange(desc(Creat.Ind...GDP))

mtcars %>%
  arrange(desc(Peso_kilos))

Mas_pesados <- mtcars %>%
  filter(model %in% c("Lincoln Continental","Chrysler Imperial","Cadillac Fleetwood","Merc 450SE"))  #filter es para filas y select para columnas

Mas_pesados

#
ggplot(Mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model) #esta parte coloca un cuadrante para cada modelo
#
ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_kilos))+
  geom_point()+
  facet_wrap(~am)

## VIDEO 33. MÁS GRÁFICOS POR CUADRANTES

ggplot(TopNaranjas, aes(x=Internet.penetration...population,
                        y=Services...GDP,
                        size=GDP.PC)) +
  geom_point()+
  facet_wrap(~Country)

#
ggplot(TopNaranjas, aes(x=Education.invest...GDP,
                        y=Creat.Ind...GDP,
                        size=Unemployment)) +
  geom_point()+
  facet_wrap(~Country)

# COLOCAR COLORES

library(RColorBrewer)
myColors <- brewer.pal(9,"Reds")

ggplot(TopNaranjas, aes(x = Internet.penetration...population,
                        y = GDP.PC,
                        fill = Creat.Ind...GDP)) +
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors=myColors)

