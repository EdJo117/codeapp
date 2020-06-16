shinyServer(function(input,output,session) {


  observe({
    Print(input$select_title)
  })

  observe({
    Print(DT::renderDataTable({
                data = tableau(input$perim,link_path)
                DT::datatable({data})
              }))
  })

  # Filter data based on selections




  }
)

