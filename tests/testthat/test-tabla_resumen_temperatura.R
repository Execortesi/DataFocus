test_that("La función devuelve un data frame con las columnas correctas", {
  datos_prueba <- data.frame(
    id = rep(c("NH0910", "NH0437"), each = 6),
    temperatura_abrigo_150cm = runif(12, min = -10, max = 35)
  )

  resultado <- tabla_resumen_temperatura(datos_prueba)
  expect_s3_class(resultado, "data.frame")
  expect_named(resultado, c("id", "min_temp", "max_temp", "mean_temp"))
})

test_that("La función calcula correctamente los valores mínimo, máximo y promedio", {
  datos_prueba <- data.frame(
    id = rep("NH0910", 6),
    temperatura_abrigo_150cm = c(5, 10, 15, 20, NA, 30)
  )

  resultado <- tabla_resumen_temperatura(datos_prueba)
  expect_equal(resultado$min_temp, 5)
  expect_equal(resultado$max_temp, 30)
  expect_equal(resultado$mean_temp, mean(c(5, 10, 15, 20, 30), na.rm = TRUE))
})


test_that("La función lanza un error si falta la columna 'temperatura_abrigo_150cm'", {
  datos_prueba <- data.frame(id = rep("NH0910", 6))
  expect_error(
    tabla_resumen_temperatura(datos_prueba),
    "object 'temperatura_abrigo_150cm' not found"
  )
})
