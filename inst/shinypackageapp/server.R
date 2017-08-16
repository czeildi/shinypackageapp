library("ggplot2")

shinypackage_server <- function(input, output) {
    message(
        "contents of root folder to demonstrate access:\n",
        paste(list.files(include.dirs = TRUE), collapse = "\n")
    )

    getFilteredBirthDt <- function() {
        dplyr::filter(cleaned_birth_data, year >= input$period[1] & year <= input$period[2])
    }

    output$birth_dt <- renderDataTable(
        getFilteredBirthDt()
    )

    output$birth_summary_plot <- renderPlot({
        ggplot(getFilteredBirthDt(), aes(x = age, y = num_birth, fill = education_level)) +
            geom_col(position = 'dodge') +
            facet_grid(year ~ country) +
            theme(legend.position = 'bottom', legend.direction = 'vertical')
    })

}
