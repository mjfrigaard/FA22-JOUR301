#=====================================================================#
# File name: app.R
# This is code to create: create BioMarin shiny app
# Authored by and feedback to: @mjfrigaard
# Last updated: 2020-12-13
# MIT License
# Version: 1.0
#=====================================================================#

# Load packages -----------------------------------------------------
library(shiny)
library(tidyverse)

# Load data ---------------------------------------------------------
BmrnGoogleIOT <- read_csv("data/2020-12-13-BmrnGoogleIOT.csv")


# Define UI ---------------------------------------------------------
ui <- fluidPage(
  titlePanel(title = "BioMarin Google Trends"),
  sidebarLayout(
    sidebarPanel(
      # Select trend term to plot
      selectInput(inputId = "key",
                  label = strong("Trend Term"),
                  choices = unique(BmrnGoogleIOT$keyword),
                  selected = "BioMarin"),
      # Select date range to be plotted
      dateRangeInput(inputId = "date", strong("Date range"),
                     start = "2019-12-15", end = "2020-12-06",
                     min = "2019-12-15", max = "2020-12-06"),
    ),
    mainPanel(
      plotOutput(outputId = "lineplot",
                 height = "300px"),

      tags$a(href = "https://www.google.com/",
             "Source: Google Trends",
             target = "_blank")
    )
  )
)

# Define server function --------------------------------------------
server <- function(input, output) {
  # filter data
  selected_trends <- reactive({
    req(input$date)
    validate(need(!is.na(input$date[1]) & !is.na(input$date[2]),
            "Error: Please provide both a start and an end date."))
    validate(need(input$date[1] < input$date[2],
             "Error: Start date should be earlier than end date."))
    BmrnGoogleIOT %>%
      filter(keyword == input$key,
        date > as.POSIXct(input$date[1]) &
          date < as.POSIXct(input$date[2]
          ))
  })

  output$lineplot <- renderPlot({
    selected_trends() %>%
      ggplot(aes(x = date, y = hits,
                 color = Location, group = keyword)) +
      geom_line(aes(group = Location),
                show.legend = FALSE) +
      facet_wrap(. ~ Location, nrow = 2) +
      theme_minimal() +
      labs(x = "Date", y = "Hits")
  })
}
# Create the Shiny app object ---------------------------------------
shinyApp(ui = ui, server = server)
