shinypackage_server <- function(input, output) {
    message(
        "contents of root folder to demonstrate access:\n",
        paste(list.files(include.dirs = TRUE), collapse = "\n")
    )

    output$birth_dt <- renderDataTable(
        getDt()
    )

}
