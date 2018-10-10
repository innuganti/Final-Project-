# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


# Define server logic required to draw a histogram 
  
  # Define server logic required to draw a histogram

  # Histogram of the Trees Data 
  
  # with requested number to determine the Girth of the Tree
  
  # This expression that generates a histogram is wrapped in a call
  
  # to renderPlot to indicate that:
  
  #  It is "reactive" and therefore should be automatically
  
  #    re-executed when inputs (input$Girth) change


library(shiny)
library(rsconnect)

server <- function(input, output) {

  output$distPlot <- renderPlot({
    
    
    
    x    <- trees$Volume
    
    Girth <- seq(min(x), max(x), length.out = input$Girth + 1)
    
    
    
    hist(x, breaks = Girth, col = 'brown', border = "white",
         
         xlab = "Volume of the tree based on Girth ",
        
         main = "Histogram of the Volume of the Black Cherry Tree")
    
 })
  
}
