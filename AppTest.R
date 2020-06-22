
rm(list = ls())

library(tis)
library(rhandsontable)

# source(file="C:/Users/VC8GHA/Desktop/Codeapp2.R")

source(file="C:/Users/edgar/Desktop/CodeApp/Codeapp2.R")

Print = function(x){print(deparse(substitute(x)));print(x)}

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
                  selected = "ES"),
      
      downloadButton("downloadData", "Download")
    ),
    
    mainPanel(
      textOutput("selected_var")
    )
  ),
  DT::dataTableOutput("val"),
  
  rHandsontableOutput("hot")
)

server <- function(input, output) {
  
  output$selected_var <- renderText({ 
    paste("Vous avez selectionné", input$var)
  })
  
  observe({
    
    Print(input$var)
    data <- loaddata(input$var)
    
    data2 <- data %>%
      distinct() %>%
      pivot_wider(., names_from = time, values_from = value)
  
    RE <- reactiveVal({
      val =  DT::datatable({data2})
  })  
    
  output$val <- DT::renderDataTable({RE$val})
  
  output$hot <- renderRHandsontable({
    
    data = data %>%
      group_by(name) %>%
      mutate(Growth = 100*(value - dplyr::lag(value))/dplyr::lag(value))
    
    data = data %>%
      select(name, time, Growth) %>%
      distinct() %>%
      pivot_wider(names_from = time, values_from = Growth)
    
    # data[1,-1]
    
    # c(100,-100)
    data_chart = data[1,-1]
    data_chart = data_chart[!is.na(data_chart)]
    
    data2$chart = c(sapply(1:26,
                          function(x) jsonlite::toJSON(list(values= as.numeric(data_chart),
                                                            options = list(type = "bar", width = 200,
                                                                           height = 50)))))
    
    rhandsontable(data2, rowHeaders = NULL, width = 500, height = 300) %>%
      hot_col("chart", renderer = htmlwidgets::JS("renderSparkline"))
    })
  
  })

  
  
  output$downloadData <- downloadHandler(
    filename = function() {
      paste('data_',  input$var, Sys.Date(), '.csv', sep='')
    },
    content = function(file) {
      write.csv(RE$val, file, row.names = FALSE)
    }
  )
  
}#server

# Run the app ----
shinyApp(ui = ui, server = server)