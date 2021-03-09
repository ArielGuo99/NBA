#' Best Point of the Year Function
#'
#' This function calculates the best points that an NBA player could get in the given year.
#' @param Year
#' @keywords points
#' @export
#' @examples
#' year_best_point(1950)

year_best_point<-function(x){
  Yr<-tidyverse::filter(NBA, Year == x)
  max(Yr$PTS)
}
