#' Always predict ciTBI
#' 
#' @param data A data frame with one row per patient
#' @return A factor vector of predictions ("ciTBI")
#' @export
all_citbi <- function(data) {
  factor(
    rep("ciTBI", nrow(data)),
    levels = c("no_ciTBI", "ciTBI")
  )
}