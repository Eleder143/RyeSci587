
# Carga de librerías

library("readxl")
library(tidyverse)

# Carga de datos

data <- read_xlsx("online_retail_II.xlsx")


# Análisis

str(data)

class(data)

summary(data)


# Calcular el número total de pedidos

nrow(data[!duplicated(data$Invoice),]) # Hay 28K pedidos diferentes


# Calcula precio medio por producto

data %>% group_by(Invoice) %>% summarise(mean(Price))

