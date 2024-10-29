# Leer los datos
# Limpiar los datos
# Manipulación de datos
library(dplyr)

datos <- bind_rows(
  NH0472 %>% group_by(fecha) %>% summarize(promedio_horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0472"),
  NH0910 %>% group_by(fecha) %>% summarize(promedio_horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0910"),
  NH0046 %>% group_by(fecha) %>% summarize(promedio_horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0046"),
  NH0098 %>% group_by(fecha) %>% summarize(promedio_horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0098"),
  NH0437 %>% group_by(fecha) %>% summarize(promedio_horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0437")
)




