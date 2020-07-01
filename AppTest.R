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
      downloadButton('downloadData', 'Download'),
      tags$style(".skin-blue .sidebar a { color: #444; }")
    )
  ),
  dashboardBody(
    fluidRow(tabBox(
      title = "Tableaux",
      id = "tabset1", height = "500px", width = '100%',
      tabPanel("Standard", 
               DT::dataTableOutput("table1"),
               DT::dataTableOutput("table2")),
      tabPanel("Handsontable", rHandsontableOutput("hottest")),
      tabPanel("Variations trimestrielles", DT::dataTableOutput("trim")),
      tabPanel("Graphiques", div(style = 'overflow-x: scroll', plotOutput("plot", 
                                        height = "1400px",
                                        width = "1400px")))
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
    
    an = annee(data)
    
    meta = metadata %>%
      select(name,Tableau) %>%
      distinct()
    
    data2 = data %>%
      left_join(meta)
    
    an = an %>%
      left_join(meta)
    
    list_tableau = data2 %>%
      distinct(Tableau) %>% 
      pull(Tableau)
    

    
    for(tableau_id in list_tableau){

      data3 = data2 %>%
        filter(Tableau == tableau_id) %>%
        distinct() %>%
        pivot_wider(., names_from = time, values_from = value)

      data3 = data3 %>%
        left_join(an %>%
                    filter(Tableau == tableau_id))

      output[[paste0("table", tableau_id)]] <- DT::renderDT({DT::datatable(data3, extensions = 'FixedColumns', options = list(scrollX = TRUE,
                                                                                                                                                 fixedColumns = list(leftColumns = 2, rightColumns = 0)))})
    }

    data4 = data %>%
      distinct() %>%
      pivot_wider(., names_from = time, values_from = value)
    
    
    # output$tabletest <- DT::renderDT({DT::datatable(merge(data2,annee(input$perim),by="name"), extensions = 'FixedColumns', options = list(scrollX = TRUE,
    
    rhan1 = rhandsondata1(data)                                                                                                         # fixedColumns = list(leftColumns = 2, rightColumns = 0)))})
    rhan2 = rhandsondata2(rhan1, data4)
    
    output$trim <- DT::renderDT({DT::datatable(rhan1, extensions = 'FixedColumns', options = list(scrollX = TRUE,
                                                                                                                            fixedColumns = list(leftColumns = 2, rightColumns = 0)))})
    
    output$hottest <- renderRHandsontable({
      
      rhandsontable(rhan2, rowHeaders = NULL,
                    stretchH = "all" ) %>%
        hot_col("chart", renderer = htmlwidgets::JS("renderSparkline"))
      
    })
    
    
    output$plot <- renderPlot({

      dataplot = rhan1 %>%
        pivot_longer(-name, names_to = "time", values_to = "value")
      
      dataplot$value = as.numeric(as.character(dataplot$value))
      
      ggplot(data =dataplot, aes(time, value)) + 
        geom_point(size = 1.5) + theme_bw() + facet_wrap(~ name, scales = "free", ncol=4)
    })
    
    output$downloadData <- downloadHandler(
      filename = function() {
        paste('data-', input$var, Sys.Date(), '.csv', sep='')
      },
      content = function(con) {
        write.csv(data4, con)
      }
    )
    
  }
  )}

shinyApp(ui, server)




