########################################################
# Tutorial App 3
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
  titlePanel("Basic Widgets"),
  fluidRow(
    column(3,
      h3("Buttons"),
      actionButton("button1", "Press Me"),
      submitButton("Submit")
    ),
    column(3,
      h3("Single Checkbox"),
      checkboxInput("Check1", "Choice A", value=FALSE)
    ),
    column(3,
      checkboxGroupInput("CheckGroup1",
        h3("Multiple Checkboxes"),
        choices = list(
          "Choice A" = 1,
          "Choice B" = 2,
          "Choice C" = 3
        ),
        selected=c(1:3)
      )
    ),
    column(3,
      dateInput("dateFirst",
        h3("Pick a Date"),
        value="2018-01-01"
      )
    )
  ),
  fluidRow(
    column(3,
      dateRangeInput(
        "Date Range",
        h3("Pick a range of dates")
      )
    ),
    column(3,
      fileInput(
        "file1",
        h3("Pick a File")
      )
    ),
    column(3,
      helpText("Note: helpt text isn't technically a widget",
               "But it provides and easy way to add text to",
               "accompany other widgets")
    ),
    column(3,
      numericInput(
        "num1",
        h3("Pick a Number"),
        value=1
      )
    )
  ),
  fluidRow(
    column(3,
      radioButtons("radio1",
        h3("Radio Buttons"),
        choices = list("Choice 1"=1,
                       "Choice A" = 3,
                       "First Choice" =2
                       ),
        selected=2
      )
    ),
    column(
      3,
      selectInput(
        "select1",
        h3("Select box"),
        choices = list("Choice 1" = 1,
                       "Choice A" = 3,
                       "First Choice" = 2),
        selected = 2
      )
    ),
    column(3,
      sliderInput(
        "Slider1",
        h3("Sliders"),
        min = 0,
        max = 100,
        value = 42
      )
    ),
    column(
      3,
      textInput(
        "text1",
        h3("Input some text..."),
        value = "here"
      )
    )
  )
)

########################################################
# server
########################################################

server<-function(input, output){
  
}

########################################################
# App
########################################################

shinyApp(ui=ui, server=server)
