test_that("El gráfico es generado correctamente con datos válidos", {
  datos_prueba <- data.frame(
    id = rep(1:2, each = 6),
    fecha = rep(seq.Date(as.Date("2023-01-01"), by = "month", length.out = 6), 2),
    temperatura_abrigo_150cm = runif(12, min = 0, max = 30)
  )

  # Genera el gráfico con datos de prueba
  grafico <- grafico_temperatura_mensual(datos_prueba)

  # Verifica que el objeto es de clase ggplot
  expect_s3_class(grafico, "ggplot")

  # Verifica que el título coincide
  expect_equal(grafico$labels$title, "Temperatura")
})

test_that("La función lanza un error si falta la columna 'temperatura_abrigo_150cm'", {
  datos_prueba <- data.frame(
    id = rep(1:2, each = 6),
    fecha = rep(seq.Date(as.Date("2023-01-01"), by = "month", length.out = 6), 2)
  )

  expect_error(
    grafico_temperatura_mensual(datos_prueba),
    "object 'temperatura_abrigo_150cm' not found"
  )
})


