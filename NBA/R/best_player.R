#' A best_player Function
#'
#' This function allows you to find the player for a certain year who scored the most points.
#' @param year which year do you want to know the best player in.
#' @keywords scored
#' @export 
#' @examples 
#' best_player_function()

best_player <- function(x){
  year <- dplyr::filter(dplyr::arrange(dplyr::select(nbadata, Year, Player, PTS), desc(PTS)), Year == x)
  output <- year[1, 2]
  return(output)
}
