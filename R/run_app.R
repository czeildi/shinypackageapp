#' launch shiny app
#'
#' Launch main shiny app in package with usual params of \code{shiny::runApp}
#'
#' @param ... params are passed to shiny::runApp, e.g. port, launch.browser,
#'   etc.
#'
#' @return This function normally does not return; interrupt R to stop the
#'   application (usually by pressing Ctrl+C or Esc).
#'
#' @import shiny
#'
#' @examples \donttest{runShinyPackageApp(launch.browser = TRUE)}
#' @export
runShinyPackageApp <- function(...) {
    shiny::runApp(
        appDir = system.file(".", package = "shinypackageapp"),
        ...
    )
}
