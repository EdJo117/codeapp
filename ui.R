

shinyUI(
  dashboardPagePlus(
    dashboardHeaderPlus(title = "DataViz",
                        
                        titleWidth = 285,
                        
                        enable_rightsidebar = F,
                        
                        left_menu = tagList(
                 
                          selectizeInput(
                            inputId = 'select_title', 
                            size = 30,
                            label = NULL,
                            width = "400px",
                            choices = c("toto1", "toto2"),
                            options = list(
                              placeholder = 'Sélectionner un titre',
                              onInitialize = I('function() { this.setValue(""); }')
                            )
                          )
                          
                        )
                        ),
    
    dashboardSidebar(width = 285,
                     sidebarMenu(id = "tabs_menu",
                                 menuItem("Graphiques",
                                          tabName = "8",
                                          icon = icon("fas fa-sitemap"),
                                          startExpanded = F),
                                 menuItem("Graphique",
                                          tabName = "9",
                                          icon = icon("fas fa-sitemap"),
                                          startExpanded = F)
                                 
                             
                     )
    ),
    ## Body content
    dashboardBody(
      tabItems(
        tabItem(tabName = "8",
             fluidRow(
            "toto"
               )
        ),
        tabItem(tabName = "9",
                fluidRow(
                  DT::dataTableOutput("table")
                )
        )
      )
    )
  ))


