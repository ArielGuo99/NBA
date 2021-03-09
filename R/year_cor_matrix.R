#' Correlation Matrix of the Year Function
#'
#' This function returns the correlation matrix of all numeric variables in the given year.
#'
#' @param Year The chosen year to look at.
#' @keywords numeric, correlation matrix
#' @export
#' @examples
#' year_cor_matrix(1950)

year_cor_matrix<-function(x){
  Yr<-tidyverse::filter(NBA, Year == x)
  num<-tidyverse::select_if(Yr, is.numeric, na.rm=TRUE)
  cor(num)
}
