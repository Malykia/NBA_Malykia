#' A oldest_player Function
#'
#' This function allows you to find the player for a certain are the oldest.
#' @param year which year do you want to know the oldest player in.
#' @keywords oldest player
#' @export player the player for the year you are interested in who are the oldest.
#' @examples oldest_player(2008)
#' oldest_player_function()

oldest_player <- function(x){
  year <- filter(arrange(select(nbadata, Year, Player, Age), desc(Age)), Year == x)
  output <- year[1, 2]
  return(output)
}
