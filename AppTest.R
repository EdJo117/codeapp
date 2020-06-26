library(shinydashboard)
library(rhandsontable)

# source(file="C:/Users/VC8GHA/Desktop/CodeApp/code/Codeapp2.R")
source(file="C:/Users/edgar/Desktop/CodeApp/Codeapp2.R")



ui <- dashboardPage(
  dashboardHeader(title = "Tableaux de la conjoncture", titleWidth = 300 ), 
  dashboardSidebar(
    sidebarMenu(
      selectInput("tableChooser", "Choix de géographie", c("International", "France")),
      fluidRow(
        column(7, selectizeInput("perim", "Selectionner un périmètre", list('AL','BENL','CN',
                                                                            'DM','EM','ES','FI','FITAUX',
                                                                            'INV','IT','JP','OIL',
                                                                            'SYN','UK','US','ZE')))),
      fluidRow(column(7,downloadButton('downloadData', 'Download')))
      
    )
  ),
  dashboardBody(
    fluidRow(tabBox(
      title = "Tableaux",
      id = "tabset1", height = "500px", width = '100%',
      tabPanel("Standard", DT::dataTableOutput("tabletest")),
      tabPanel("Handsontable", rHandsontableOutput("hottest"))
    )
    )
    
  ))

server <- function(input, output, session) {
  
  observe({
    updateSelectizeInput(session, "perim", choices = listeapp(input$tableChooser), server = FALSE)
  })
  
  observe({
    data = loaddata(input$perim)
    
    data$value = as.numeric(as.character(data$value))
    
    data2 = data %>%
      distinct() %>%
      pivot_wider(., names_from = time, values_from = value)
    
    
    output$tabletest <- DT::renderDT({DT::datatable(data2,options = list(scrollX = TRUE))})
    
    output$hottest <- renderRHandsontable({
      
      rhandsontable(rhandsondata(data, data2), rowHeaders = NULL,
                    stretchH = "all" ) %>%
        hot_col("chart", renderer = htmlwidgets::JS("renderSparkline"))
      
    })
    
    output$downloadData <- downloadHandler(
      filename = function() {
        paste('data-', input$var, Sys.Date(), '.csv', sep='')
      },
      content = function(con) {
        write.csv(data2, con)
      }
    )
    
  }
  )}

shinyApp(ui, server)




