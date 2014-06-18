library(shiny)
library(MASS)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny Application"),
  p("This application demonstrates the nature of regression analysis by examining the linear relationship between variables. 
    For that, the application uses Boston dataset from MASS package with housing values in suburbs of Boston."),
 
  p("To explore the relationship between the variables just make a choice of dependent and independent variables on the sidebar panel below."),
  sidebarLayout(
    
    # Sidebar with controls
    sidebarPanel(
      selectInput("depvar", h4("Dependent variable:"), choices=names(Boston), selected="crim"),
      
      selectizeInput("indepvar", h4("Independent variable(s):"),
                     multiple=TRUE, choices=names(Boston), selected="indus"),
      
      div(HTML("Check out the <a href='https://github.com/vladdy/datasciencecoursera/devdataprod-002-project/shiny'>Github repo</a>"))
    ),
    
    # Showing output
    mainPanel( plotOutput("plot"), h4("summary() details"), verbatimTextOutput("summary"))
  )
))