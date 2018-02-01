########################################################
# Tutorial App 2 - test
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

ui <- fluidPage(
  titlePanel("My Shiny App"),
  
  sidebarLayout(
    sidebarPanel(
      h1(strong("Installation")),
      p(h4("Shiny is available on Cran, so you can install it in the usual way from your R console:")),
      p(code('install.packages("shiny")')),
      br(),
      br(),
      img(src="rstudio.png", height=80, width=240),
      h4("Shiny is a product of", span("Rstudio", style="color:blue"))
    ),
    mainPanel(
      h1(strong("Introducing Shiny")),
      p(h4("Shiny is a new package from RStudio that makes it", span(em("incredibly easy")), "to build interactive web applications with R.")),
      br(),
      p(h4("For an introduction and live examples, visit the",a("Shiny homepage.", href = "http://shiny.rstudio.com"))),
      br(),
      p(h1(strong("Features"))),
      p(h4("- Build useful web applications with only a few lines of code - no JavaScript required")),
      p(h4("- Shiny applications are automatically 'live' in the same way that", span(strong("spreadsheets")), "are live. Outputs change instantly as users modify inpuets, without requiring a reload of the browser."))
    )
  )
)


########################################################
# Server
########################################################

server <- function(input, output){
  
}
  
########################################################
# Create app
########################################################
shinyApp(ui=ui, server=server)

