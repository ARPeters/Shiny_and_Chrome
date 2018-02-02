########################################################
# Tutorial App 4
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
      helpText("Create demographic mapes with information from the 2010 US Census"),
      
      selectInput(
        "demo1_inp",
        label = h3(strong("Choose a variable to display")),
        choices = list("Percent White",
                       "Percent Black",
                       "Percent Hispanic",
                       "Percent Asian"),
        selected = "Percent White"
      ),
      
      sliderInput(
        "range1_inp",
        h3(strong("Range of interest:")),
        min = 0,
        max = 100,
        value = c(0, 100)
      )
    ),
    mainPanel(
      textOutput("demo1_outp"),
      textOutput("range1_outp")
    )
  )
)


########################################################
# Server
########################################################
server<-function(input, output){
  output$demo1_outp <- renderText({
    paste("You have selected: ", input$demo1_inp)
  })
  
  output$range1_outp <- renderText({
    paste("You have chosen a range that goes from", input$range1_inp[1], "to", input$range1_inp[2])
  })
}


########################################################
# App
########################################################
shinyApp(ui=ui, server=server)
