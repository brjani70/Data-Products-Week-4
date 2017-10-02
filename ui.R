#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("'Women' Data - Regression analysis of various heights against weight in the base R 'Women' dataset"),
  
  sidebarLayout(
    sidebarPanel(
      
      sliderInput("Independent_Variable_Height", "Choose a height value to see the affect on weight for women",50, 80, value = 65),
      checkboxInput("showModel1", "Draw AB Line to see the relationship between height and weight for women", value = TRUE)
    ),
    
    mainPanel(
      plotOutput("New_Plot"),
      h3("Predicted Weight from Specified Height"),
      textOutput("pred1")
    )
  )
))