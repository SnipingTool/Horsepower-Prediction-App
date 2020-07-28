library(shiny)
library(ggplot2)

shinyUI(fluidPage(

    titlePanel("Models for Car Horsepower Using Weight"),

    sidebarLayout(
        sidebarPanel(
            textInput("wt", "Enter new car weight (1000 lbs)", value = 4)
        ),

        mainPanel(
            uiOutput("doc"),
            plotOutput("plot", brush = brushOpts(id = "brush1")),
            h3("Predicted Horsepower from Linear Model"),
            textOutput("pred"),
            h3("95% Confidence Interval for Predicted Value"),
            textOutput("ci")
        )
    )
))
