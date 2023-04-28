
# Carga de librerías

library("readxl")


# Carga de datos

data <- read_xlsx("online_retail_II.xlsx")


# Análisis

str(data)

class(data)

summary(data)


# Calcular el número total de pedidos

nrow(data[!duplicated(data$Invoice),]) # Hay 28K pedidos diferentes
