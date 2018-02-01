########################################################
# Tutorial App 1
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
# Define UI


ui <- fluidPage(
  
# Create a title panel
  titlePanel("Main Title"),

# Create a sidebar 
# - Bold mainPanel
# - Practice: Multiple sidebarPanels, multiple sizes
sidebarLayout(
  position = "right",
  sidebarPanel(
    h6("Episode IV" , align="center"),
    h6("A NEW HOPE" , align="center"),
    h5("It is a period of civil war.", align="center"),
    h4("Rebel spacechis, striking" , align="center"),
    h3("from a hidden base, have won", align="center" ),
    h2("their first victory against the" , align="center" ),
    h1("evil Galactic Empire")
    ),
  mainPanel(
    p("p creates a paragraph of text"),
    p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph", style = "font-family:'times'; font-size: 24px"),
    strong("strong() makes text bold."),
    br(),
    em("em() makes text italicized."),
    br(),
    code("code displays your text similar to computer code. Also, br() adds a break."),
    div("div creates segments of text with a similar style. This dividison of text is all blue because I passed the argument 'style=color:blue' to div", style="color:blue"),
    br(),
    p("span does the same thing as div, but it works with", span(
      "groups of words", style = "color:blue"),
      "that appear inside a paragraph"
      ),
    p("Images (like below) can also be added, but must be placed in a specific place with a specific name (like below)"),
    img(src = "Directory_Directions.png"),
    p("Note that when adding an image, you must run the app from outside the app (i.e. from the 'runApp()' command in the 'witness' .r file, rather than from the 'shinyAp()' command down below. Otherwise the image won't appear. ")          
    )
  )
)

# Define Server logic

server <- function(input, output){
  
}

# Run the app
shinyApp(ui=ui, server=server)
