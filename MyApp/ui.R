library(shiny)

shinyUI(fluidPage(
    titlePanel("Predict MPG of the cars"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderDISP", "What is the displacement of the car?", 70, 500, value=160),
            sliderInput("sliderHP", "What is the horsepower of the car?", 50, 350, value=110),
            sliderInput("sliderWT", "What is the weight of the car?", 1, 6, value=3)
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Prediction",
                         h2("Predicted MPG of the Car"),
                         textOutput("pred")
                         ),
                tabPanel("Documentation",
                         p(h3("Predict miles/(US) gallon using selected variables in the 'mtcars' dataset")),
                         helpText("This application predicts the mpg of the cars by using linear regression model which is fitted by the selected variables in the mtcars dataset."),
                         p(h4("Variables used in prediction")),
                         helpText("disp: displacement (cu.in.)"),
                         helpText("hp: gross horsepower"),
                         helpText("wt: weight (1000lbs)")
                         )
            )
            
        )
    )
))