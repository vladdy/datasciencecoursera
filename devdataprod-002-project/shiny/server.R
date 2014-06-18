library(shiny)
library(MASS)

shinyServer(function(input, output,session) {
  
  slicedData <-reactive({Boston[, c(input$depvar, input$indepvar)]})
  formula<-reactive({paste(input$depvar, ".", sep="~")})
  model<-reactive({lm(formula(), slicedData())})
  
  output$summary <- renderPrint({
    if(is.null(input$indepvar)){"Please select independent variable(s)"}
    else if(is.null(formula)){"Error in the formula."}
    else if(is.null(model)){ "Error in the model." }
    else{ summary(model()) }
    
  })
  
  output$plot <- renderPlot({
    plot(slicedData(), main="Regression plot")  
  })
  
})