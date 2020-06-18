
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(shinyjs)

library(DT)

library(tidyverse)
library(lubridate)

library(rmarkdown)
library(plotly)
library(RColorBrewer)
library(ggthemes)


library(eurostat)
library(rsdmx)

Print = function(x){print(deparse(substitute(x)));print(x)}

# link_app =  "N:/GDCJ/N-GDCJ/Echanges.DCJ/DSC/Rshiny boite a outils"
# 
# if(file.exists(link_app)){
#   setwd(link_app)
# }

countries <- c("FR", "DE", "UK", "ES", "IT", "CN", "JP", "ZE", "US", "OIL", "FI", "COM", "INF")

# source()

