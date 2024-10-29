#' Descarga y lee datos de estaciones
#'
#' Esta función descarga datos de una estación meteorlóguca especifica y los lee en un data frame.
#'
#' @param id_estacion Un identificador de estación meteorologica específica. Debe ser uno de los siguientes: "NH0472", "NH0910", "NH0046", "NH0098", "NH0437".
#' @param ruta_archivo Ruta de destino donde se guardara el archivo descargado.
#'
#'
#' @return
#' Un data frame que contiene los datos de estación meteorlógica seleccionada.
#'
#'
#' @examples
#' descargar_leer_datos_estacion("NH0472", "data/NH0472.csv")
#'
#'
#' @export

descargar_leer_datos_estacion <- function(id_estacion, ruta_archivo) {
  estaciones_urls <- list(
    NH0472 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  url_base <- estaciones_urls[[id_estacion]]

  download.file(url_base, ruta_archivo)

  datos_estacion <- read.csv(ruta_archivo)

  return(datos_estacion)
}

# Ejemplo de uso
# datos <- descargar_leer_datos_estacion("NH0472", "data/NH0472.csv")











