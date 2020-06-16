library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(shinyjs)
library(plotly)
library(ggthemes)
library(eurostat)
library(rsdmx)



ui <- fluidPage(
  titlePanel("Tableau de la conjoncture"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Choisir un tableau selon le périmètre voulu"),
      
      selectInput("var", 
                  label = "Choisir un périmètre",
                  choices = c('AL','BENL','CN','COMEXT','CONSO',
                              'DM','EM','EMPL','ES','FI','FITAUX',
                              'INV','IT','JP','OIL','PIBFR','PROD',
                              'REV','SYN','UK','US','ZE'),
                  selected = 'AL'),
    
    
  ), mainPanel = mainPanel(textOutput("selected_var"))
)
)

server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)