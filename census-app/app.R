########################################################
# Tutorial App 4
# https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/
########################################################

########################################################
# Set up
########################################################
rm(list=ls(all=TRUE))

########################################################
# Setup
########################################################
library(shiny)
library(maps)
library(mapproj)

source("census-app/helpers.r")
ds<-readRDS("census-app/data/counties.rds")

percent_map(ds$white, "darkgreen", "% White")
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
      plotOutput("map")
    )
  )
)


########################################################
# Server
########################################################
server<-function(input, output){

  # #More understandable version
  # output$map <- renderPlot({
  #   data <- switch(
  #     input$demo1_inp,
  #     "Percent White" = ds$white,
  #     "Percent Black" = ds$black,
  #     "Percent Hispanic" = ds$hispanic,
  #     "Percent Asian" = ds$asian
  #   )
  # 
  #   data_cor<- switch(
  #     input$demo1_inp,
  #     "Percent White" = "darkgreen",
  #     "Percent Black" = "darkblue",
  #     "Percent Hispanic" = "darkorange",
  #     "Percent Asian" = "darkviolet"
  #   )
  # 
  #   data_legend<-switch(
  #     input$demo1_inp,
  #     "Percent White" = "% White",
  #     "Percent Black" = "% Black",
  #     "Percent Hispanic" = "% Hispanic",
  #     "Percent Asian" = "% Asian"
  #   )
  #   percent_map(var = data, color = data_cor, legend.title = data_legend, max = input$range1_inp[2], min =  input$range1_inp[1])
  # })

  
  # More Professional Version
  output$map <- renderPlot({
    args <- switch(
      input$demo1_inp,
      "Percent White" = list(ds$white, "darkgreen", "% White"),
      "Percent Black" = list(ds$black, "darkblue", "% Black"),
      "Percent Hispanic" = list(ds$hispanic, "red", "% Hispanic"),
      "Percent Asian" = list(ds$asian, "purple", "% Asian")
    )

    args$min <- input$range1_inp[1]
    args$max <- input$range1_inp[2]

    do.call(percent_map, args)
  })

}
########################################################
# App
########################################################
shinyApp(ui=ui, server=server)

