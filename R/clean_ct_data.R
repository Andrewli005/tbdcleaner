#' Clean CT data
#' 
#' This function cleans the citbi.csv data
#' 
#' @param df A data frame with ciTBI and predictors
#' @return A cleaned tibble
#' @export
#' 
clean_ct_data <- function(df) {
  df |>
    janitor::clean_names() |>
    mutate(
      ciTBI = factor(
        pos_int_final,
        levels = c(0, 1),
        labels = c("no_ciTBI", "ciTBI")
      )
    ) |> 
    tibble()
}