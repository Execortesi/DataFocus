utils::globalVariables(c("fecha", "mes", "temperatura_abrigo_150cm", "mean_temp"))

#' Genera un gráfico de temperatura promedio mensual
#'
#' @param datos Un data frame que contiene datos meteorlógicos. Debe incluir las columnas 'fecha', 'id' y 'temperatura_abrigo_150cm'.
#' @param colores Argumento para indicar que colores usamos oara el grafico.
#' @param titulo Titulo del grafico. El valor predeterminado es "Temperatura".
#'
#' @return Grafico que muestra el promedio mensual de la temperatura de abrigo.
#' @importFrom grDevices colors
#' @importFrom utils download.file read.csv
#'
#' @examples
#' grafico_temperatura_mensual(NH0437, colores = "red", titulo = "Temperatura Promedio Mensual")
#'
#'
#'
#' @export
grafico_temperatura_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {
  # Asegúrate de que la columna fecha esté en el formato correcto
  datos$fecha <- as.Date(datos$fecha)  # Ajusta esto según el formato de tus datos

  # Si no se especifica un color, se genera aleatoriamente
  if (is.null(colores)) {
    colores <- sample(colors(), 1)
  }

  # Crear gráfico sin lubridate, usando funciones base para extraer el mes
  grafico <- datos |>
    dplyr::mutate(mes = as.numeric(format(fecha, "%m"))) %>%
    dplyr::group_by(id, mes) %>%
    dplyr::summarise(mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = 'drop') %>%
    ggplot2::ggplot(ggplot2::aes(x = mes, y = mean_temp, color = id)) +
    ggplot2::geom_line(color = colores) +
    ggplot2::labs(title = titulo, x = "Mes", y = "Temperatura Promedio")

  return(grafico)
}

