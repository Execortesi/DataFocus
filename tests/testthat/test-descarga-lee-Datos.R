library(testthat)

test_that("descargar_leer_datos_estacion funciona correctamente", {

  id_estacion <- "NH0046" # Ajusta esto a un ID válido en el repositorio de ejemplo

  ruta_archivo <- paste0(tempdir(), "/", id_estacion, ".csv")

  if (file.exists(ruta_archivo)) {
    file.remove(ruta_archivo)
  }

  expect_message(
    datos <- descargar_leer_datos_estacion(id_estacion),
    "Descargando y leyendo el archivo de la estación"
  )

  expect_true(file.exists(ruta_archivo))

  expect_s3_class(datos, "data.frame")

  expect_true(nrow(datos) > 0)
  expect_true(ncol(datos) > 0)

  expect_message(
    datos <- descargar_leer_datos_estacion(id_estacion),
    "Lectura del archivo de la estación",
    fixed = TRUE
  )

  expect_s3_class(datos, "data.frame")
  expect_true(nrow(datos) > 0)
  expect_true(ncol(datos) > 0)
})

