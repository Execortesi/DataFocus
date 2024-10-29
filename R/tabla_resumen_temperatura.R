#' Tabla resumen
#'
#' Esta funcion devuelve una tabla resumen de la temperatura abrigo
#'
#' @param datos
#'
#' @return
#' (resumen)
#'
#' @examples
#'tabla_resumen_temperatura <- function(datos) {
#'  resumen <- datos %>%
#'    group_by(id) %>%
#'    summarise(
#'      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
#'      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
#'      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
#'    )
#'  return(resumen)
#'}



