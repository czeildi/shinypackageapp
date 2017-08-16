createFilteredDt <- function(min_year, max_year) {
    dplyr::filter(cleaned_birth_data, year >= min_year & year <= max_year)
}
