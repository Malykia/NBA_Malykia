#' A best_player Function
#'
#' This function allows you to find the player for a certain year who scored the most points.
#' @param year which year do you want to know the best player in.
#' @keywords scored the most point
#' @export player the player for the year you are interested in who scored the most points.
#' @examples best_player(2008)
#' best_player_function()

best_player <- function(x){
  year <- filter(arrange(select(nbadata, Year, Player, PTS), desc(PTS)), Year == x)
  output <- year[1, 2]
  return(output)
}
