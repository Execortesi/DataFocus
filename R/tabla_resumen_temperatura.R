utils::globalVariables(c("fecha", "mes", "temperatura_abrigo_150cm", "mean_temp"))

#' Generar tabla resumen de temperatura para una o más estaciones.
#'
#' Esta función crea una tabla resumen de la temperatura registrada en la columna 'temperatura_abrigo_150cm' para una o más estaciones, mostrando los valores mínimos, máximos y el promedio.
#'
#' @param datos Un data frame que contiene datos meteológicos. Dene incluir las columnas 'id' y 'temperatura_abrigo_150cm'.
#' @import dplyr
#'
#' @return Un dataframe con el resumen de temperatura para cada estación, que incluye columnas para la temperatura mínima (`min_temp`), máxima (`max_temp`), y promedio (`mean_temp`).
#' @examples
#' datos <- descargar_leer_datos_estacion("NH0472")
#' tabla_resumen_temperatura(datos)
#'
#'
#' @export
tabla_resumen_temperatura <- function(datos) {
  resumen <- datos %>%
    group_by(id) %>%
    summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )
  return(resumen)
}
