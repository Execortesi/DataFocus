#' Descarga y lee datos de estaciones
#'
#' Esta función descarga datos de una estación meteorlógica especifica y los lee en un data frame.
#'
#' @param id_estacion Un identificador de estación meteorologica específica. Debe ser uno de los siguientes: "NH0472", "NH0910", "NH0046", "NH0098", "NH0437".
#'
#'
#' @return
#' Un data frame que contiene los datos de estación meteorlógica seleccionada.
#'
#'
#' @examples
#' descargar_leer_datos_estacion("NH0046")
#'
#'
#' @export

descargar_leer_datos_estacion <- function(id_estacion) {
  # Construir la URL con el ID de la estación
  estacion_url <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/", id_estacion, ".csv")
  # Generar la ruta temporal del archivo
  ruta_archivo <- paste0(tempdir(), "/", id_estacion, ".csv")

  # Verificar si el archivo ya existe en la ruta temporal
  if (file.exists(ruta_archivo)) {
    datos_estacion <- read.csv(ruta_archivo)
    cli::cli_inform("Lectura del archivo de la estación '{id_estacion}' desde el directorio temporal.")
  } else {
    # Intentar descargar y leer el archivo
    tryCatch({
      download.file(estacion_url, ruta_archivo)
      datos_estacion <- read.csv(ruta_archivo)
      cli::cli_inform("Descargando y leyendo el archivo de la estación '{id_estacion}' en el directorio temporal.")
    }, error = function(e) {
      stop("Error al descargar los datos: ", conditionMessage(e))
    })
  }

  return(datos_estacion)
}











