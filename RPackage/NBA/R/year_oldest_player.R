#' Oldest Player of the Year Function
#'
#' This function returns the oldest NBA player in the given year. If multiple players have the same age, the top name in alphabetical order will be returned.
#' @param Year
#' @keywords old, player
#' @export
#' @examples
#' year_oldest_player(1950)

year_oldest_player<-function(x){
  Yr<-tidyverse::filter(NBA, Year == x)
  old<-tidyverse::arrange(Yr, desc(Age),Player)
  old$Player[1]
}
