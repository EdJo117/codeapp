
source(file="C:/Users/edgar/Desktop/CodeApp/metadata.R")

link_path = "C:/Users/VC8GHA/Desktop/NewData/"

tableau <- function(perim) {

  x = paste0("data",perim,".Rda")

  dfES = readRDS(file=paste0(link_path,x))

  date = today()

  date2 = date %m-% years(2)
  
  datef = as.Date(as.yearqtr(date2))

  dfES2 = dfES %>%
  
    filter(time >= datef)
  
  meta = metadata %>%
    
    filter(perimetre = perim)

  dfES2 = meta %>% 
  
    left_join(dfES2)


  dfES2 = dfES2 %>% 
  
    select(name,time, value)


  dfES2 <- dfES2[-1,]

  dfES2 = dfES2 %>%
  
    distinct() %>%
  
    pivot_wider(., names_from = time, values_from = value) 
  
  return(dfES2)}











