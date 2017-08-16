shinypackage_server <- function(input, output) {
    message(
        "contents of root folder to demonstrate access:\n",
        paste(list.files(include.dirs = TRUE), collapse = "\n")
    )

    file.create("shiny_temp.txt")

    message(readLines("global.R"))

    output$birth_dt <- renderDataTable(
        getDt()
    )

}
