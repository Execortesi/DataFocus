# Cuenta valores faltantes en cada columna de un data frame

df_count_na <- function(data) {
  na_counts <- sapply(data, function(x) sum(is.na(x)))
  return(na_counts)
}
