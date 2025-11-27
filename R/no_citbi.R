#' Always predict no ciTBI
#' 
#' @param data A data frame with one row per patient
#' @return A factor vector of predictions ("no_ciTBI")
#' @export
no_citbi <- function(data) {
  factor(
    rep("no_ciTBI", nrow(data)),
    levels = c("no_ciTBI", "ciTBI")
  )
}