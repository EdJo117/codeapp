shinyServer(function(input,output,session) {
  
  
  observe({
    Print(input$select_title)
  

  
  # Filter data based on selections
  output$table <- DT::renderDataTable({
      dataE <- loaddata("ES")
      dataE <- data %>%
        distinct() %>%
        pivot_wider(., names_from = time, values_from = value)
      DT::datatable({dataE})
    })
  })
  
  
  
  }
)
