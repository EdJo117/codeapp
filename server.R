shinyServer(function(input,output,session) {

  observe({
    
    Print(input$tabs_menu)
  })
  
  observe({
    # Print(input$select_title)
    Print(input$tabs_menu)

  # Filter data based on selections
  output$table <- DT::renderDT({
      dataE <- loaddata("ES")
      
      dataE <- data %>%
        distinct() %>%
        pivot_wider(., names_from = time, values_from = value)
      
      
      DT::datatable({dataE})
    })
  
  })
  
  
  
  }
)
