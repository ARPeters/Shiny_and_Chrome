# Learning Shiny
# Tutorials taken from: https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/

########################################################
# Set up
########################################################
rm(list=ls(all=TRUE))


########################################################
# Packages
########################################################
library(shiny)


########################################################
# Tutorial 1
########################################################

runExample("01_hello")

#Have successfully recreated the above app:
runApp("Tutorial_App_1")

#NOte: runApp() function wants the name of of the FILE that contains the APP, not the app itself. Apparently. We'll see. 
