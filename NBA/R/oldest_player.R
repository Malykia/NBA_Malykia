#' A oldest_player Function
#'
#' This function allows you to find the player for a certain are the oldest.
#' @param year which year do you want to know the oldest player in.
#' @keywords oldest
#' @export 
#' @examples 
#' oldest_player_function()

oldest_player <- function(x){
  year <- dplyr::filter(arrange(select(nbadata, Year, Player, Age), desc(Age)), Year == x)
  output <- year[1, 2]
  return(output)
}
