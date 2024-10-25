#Funcion que detcta los dias de lluvia intensa
detectar_dias_lluvia_intensa <- function(datos, umbral) {
  dias_lluviosos <- subset(datos, precipitacion_pluviometrica > umbral)
  return(dias_lluviosos)
}

detectar_dias_lluvia_intensa(datos,20)
