#Funcion que detcta los dias de lluvia intensa
detectar_dias_lluvia_intensa <-function(data,umbral){
  if(!"precipitacion_pluviometrica" %in% colnames(data)){
    stop("La columna 'precipitacion_pluviometrica' no existe en el dataset.")
  }

  dias_lluviosos<-subset(data,precipitacion_pluviometrica>umbral)

  return(dias_lluviosos)

}

dias_lluviosos<-detectar_dias_lluvia_intensa(datos,20)
