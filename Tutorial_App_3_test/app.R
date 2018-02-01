########################################################
# Tutorial App 3 - test
# https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/
########################################################


########################################################
# Set up
########################################################
rm(list=ls(all=TRUE))


########################################################
# Packages
########################################################
library(shiny)


########################################################
# UI
########################################################
ui<-fluidPage(
  titlePanel(h1(strong("censusVis"))),
  sidebarLayout(
   sidebarPanel(
     p(h3(div("Create demographics maps with information from the 2010 US Census"), style="color:grey")),
     
     selectInput(
       "select_var",
       h3(strong("Choose a variable to display")),
       choices = list("Percent White" = 1,
                      "Percent Black" = 2,
                      "Percent Hispanic" = 3,
                      "Percent Asian" = 4),
       selected = 1
     ),
     
     sliderInput(
       "Slider1",
       h3(strong("Range of interest:")),
       min = 0,
       max = 100,
       value = c(0, 100)
     )
   ),
   mainPanel()
  )
)


########################################################
# Server
########################################################
server<-function(input, output){
  
}


########################################################
# App
########################################################
shinyApp(ui=ui, server=server)
