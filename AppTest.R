
rm(list = ls())

library(tis)

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
  DT::dataTableOutput("table"),
  
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
    
    dt =  DT::datatable({data2})
  
  output$table <- DT::renderDataTable(dt)
  
  output$hot <- renderRHandsontable({
    
    data = data %>% group_by(name) %>% mutate(Growth = (value - lag(value))/lag(value))
    
    data = data %>% select(name,time,Growth) %>% distinct() %>% pivot_wider(names_from = time, values_from = Growth)
    
    data2$chart = c(sapply(1:26,
                          function(x) jsonlite::toJSON(list(values= as.numeric(data[1,-1]),options = list(type = "line", width = 50, height = 50)))))
    rhandsontable(data2, rowHeaders = NULL, width = 500, height = 300) %>%
      hot_col("chart", renderer = htmlwidgets::JS("renderSparkline"))})
  
  })

  
  
  output$downloadData <- downloadHandler(
    filename = function() {
      paste('data_',  input$var, Sys.Date(), '.csv', sep='')
    },
    content = function(con) {
      write.csv(data, con)
    }
  )
  
}#server

# Run the app ----
shinyApp(ui = ui, server = server)