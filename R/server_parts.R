#' create filtered dt
#'
#' @param min_year min_year
#' @param max_year max_year
#'
#' @return filtered dt
#' @export
#'
#' @examples \donttest{createFilteredDt(2007, 2015)}
createFilteredDt <- function(min_year, max_year) {
    dplyr::filter(cleaned_birth_data, year >= min_year & year <= max_year)
}
