source(file="C:/Users/edgar/Desktop/TestApp.R")

ui <- fluidPage(
  titlePanel("Tableau de la conjoncture"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Choisir un tableau selon le périmètre voulu"),
      
      selectInput("var", 
                  label = "Choisir un périmètre",
                  choices = list('AL','BENL','CN','COMEXT','CONSO',
                                  'DM','EM','EMPL','ES','FI','FITAUX',
                                  'INV','IT','JP','OIL','PIBFR','PROD',
                                  'REV','SYN','UK','US','ZE'),
                  selected = "AL"),
      
      downloadButton("downloadData", "Download")
    ),
    
    mainPanel(
      textOutput("selected_var")
    )
  ),
  DT::dataTableOutput("table")
)

server <- function(input, output) {
  
  output$selected_var <- renderText({ 
    paste("Vous avez selectionné", input$var)
  })
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- testableau(input$var)
    data 
  }))
  
  output$downloadData <- downloadHandler(
      filename = function() {
        paste('data_',  input$var, Sys.Date(), '.csv', sep='')
      },
      content = function(con) {
        write.csv(data, con)
      }
    )
  
}

# Run the app ----
shinyApp(ui = ui, server = server)