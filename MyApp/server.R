library(shiny)

shinyServer(function(input, output) {
    model <- lm(mpg ~ disp + hp + wt, data = mtcars)
    
    modelPred <- reactive({
        dispInput <- input$sliderDISP
        hpInput <- input$sliderHP
        wtInput <- input$sliderWT
        predict(model, newdata = data.frame(disp = dispInput,
                                            hp = hpInput,
                                            wt = wtInput))
    })
    output$pred <- renderText({
        modelPred()
    })
})
