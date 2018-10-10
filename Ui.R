#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


# Ui.R

library(shiny)

ui <- fluidPage(
  
  # App title ----
  
  titlePanel("Determine the Volume of the Tree based on Girth"),
  
  
  
  # Sidebar layout with input and output definitions ----
  
  sidebarLayout(
    
    
    
    # Sidebar panel for inputs ----
    
    sidebarPanel(
      
      
      
      # Input: Slider for the number of bins ----
      
      sliderInput(inputId = "Girth",
                  
                  label = "Slide the Girth value:",
                  
                  min = 8,
                  
                  max = 20.6,
                  
                  value = 10)
      
     ),
    
    # Main panel for displaying outputs 
    
    mainPanel(
      
      
 # Output: Histogram 
      
      plotOutput(outputId = "distPlot")
      
      
      
    )
    
  )
  
)
