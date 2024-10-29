#' Conjuntos de datos promedio de horas de frio por estación.
#'
#' Este conjunto de datos contiene el promedio de horas de frío diario para cada estación.
#'
#' @format Un data frame con las siguientes columnas:
#' \describe{
#'   \item{fecha}{Fecha en la que se calculó el promedio de horas de frío.}
#'   \item{promedio_horas_frio}{Promedio de horas de frío para cada estación en la fecha correspondiente.}
#'   \item{estacion}{Código de la estación meteorológica: NH0472, NH0910, NH0046, NH0098, o NH0437.}
#' }
#' @source Datos generados a partir de la combinación y resumen de datos de estaciones meteorológicas mediante funciones de R.
"datos"
