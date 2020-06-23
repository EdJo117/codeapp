
library(shinydashboard)
library(rhandsontable)

# source(file="C:/Users/VC8GHA/Desktop/Codeapp2.R")

source(file="C:/Users/edgar/Desktop/CodeApp/Codeapp2.R")



ui <- dashboardPage(
  dashboardHeader(title = "Tableaux de la conjoncture", titleWidth = 300 ), 
  dashboardSidebar(
    sidebarMenu(
      
      menuItem("Perimètre", icon = icon("database"), tabName = "rdb", startExpanded = TRUE,
               
               menuSubItem(icon = NULL,
                           selectizeInput("var", "Perimètre",
                                          choices = list('AL','BENL','CN','COMEXT','CONSO',
                                                         'DM','EM','EMPL','ES','FI','FITAUX',
                                                         'INV','IT','JP','OIL','PIBFR','PROD',
                                                         'REV','SYN','UK','US','ZE'), multiple = F,
                                          width = '98%') )
      )
    )
  ),
  dashboardBody(
    fluidRow(tabBox(
      title = "Tableaux",
      id = "tabset1", height = "500px", width = 20,
      tabPanel("Standard", DT::dataTableOutput("tabletest"), downloadButton('downloadData', 'Download')),
      tabPanel("Handsontable", rHandsontableOutput("hottest"))
    )
    )
  )
)

server <- function(input, output, session) {
  observe({
    data = loaddata(input$var)
    
    data2 = data %>%
      distinct() %>%
      pivot_wider(., names_from = time, values_from = value)
    
    
    output$tabletest <- DT::renderDT({data2})
    
    output$hottest <- renderRHandsontable({rhandsontable(rhandsondata(data,data2), rowHeaders = NULL, width = 500, height = 300)%>%
        hot_col("chart", renderer = htmlwidgets::JS("renderSparkline"))})
    
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


