#' A correlation_numeric Function
#'
#' This function allows you to calculate the correlation matrix for all numeric variables in the data for a year
#' @param year which year do you want to calculate the correlation matrix.
#' @keywords correlation matrix
#' @export matrix the correlation matrix for all numeric variables in the data for a year
#' @examples correlation_numeric(2008)
#' correlation_numeric_function

correlation_numeric <- function(x){
  year <- filter(nbadata, Year == x)
  continuous <- sapply(nbadata, is.numeric)
  data <- year[ , continuous, drop = FALSE]
  output <- cor(data)
  return(output)
}
