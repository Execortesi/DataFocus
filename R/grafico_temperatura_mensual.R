# Generá una función grafico_temperatura_mensual que devuelva un gráfico que muestre el promedio mensual de la temperatura de abrigo
# Paquetes necesarios
library(ggplot2)
library(dplyr)

grafico_temperatura_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {
  # Asegúrate de que la columna fecha esté en el formato correcto
  datos$fecha <- as.Date(datos$fecha)  # Ajusta esto según el formato de tus datos

  # Si no se especifican colores, se generan aleatoriamente
  if (is.null(colores)) {
    colores <- sample(colors(), length(unique(datos$id)))
  }

  # Crear gráfico
  grafico <- datos |>
    mutate(mes = month(fecha)) |>
    group_by(id, mes) |>
    summarise(mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = 'drop') |>
    ggplot(aes(x = mes, y = mean_temp, color = id)) +
    geom_line() +
    scale_color_manual(values = colores) +
    labs(title = titulo, x = "Mes", y = "Temperatura Promedio")

  return(grafico)
}
