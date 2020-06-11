shinyServer(function(input,output,session) {
  
  
  observe({
    Print(input$select_title)
  })
  
  observe({
    Print(input$select_title2)
  })
  
  # Filter data based on selections
  output$table <-
    DT::renderDataTable({
      data = dfES2
      DT::datatable({data})
    })
  
  
  
  }
)
