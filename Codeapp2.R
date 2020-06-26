
library(lubridate)
library(zoo)
library(tidyverse)

# source(file="C:/Users/VC8GHA/Desktop/CodeApp/data/metadata.R")

source(file="C:/Users/edgar/Desktop/CodeApp/metadata.R")

loaddata <- function(perim) {
  if (perim %in% c("AL","BENL","CN","DM","EM","ES","FI","FItaux","INV","IT","JP","OIL","SYN","UK","US","ZE")){
    
    # link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/Rdatainternationaux"
    
    link_data = "C:/Users/edgar/Desktop/chiffres/data/Rdata internationaux"  
    
    list_file = list.files(link_data)
    
    list_file_al = list_file[str_detect(list_file, paste0("^", perim))]
    
    list_path_file_al = file.path(link_data, list_file_al)
    
    test = file.info(list_path_file_al)
    
    result = test %>%
      filter(mtime == max(mtime))
    
    resultf = rownames(result)
    
    load(resultf)
    list_df = list()
    
    n = length(series)
    for (i in seq(1:n)) {
      
      df = data.frame(time = as.Date(time(series[[i]])),
                      value = as.numeric(series[[i]]),
                      id = names(series)[i])
      
      list_df[[length(list_df)+1]] = df
      
    }
    
    data = bind_rows(list_df)
    
    date = today()
    
    date2 = date %m-% years(2)
    
    datef = as.Date(as.yearqtr(date2))
    
    data2 = data %>%
      filter(time >= datef)
    
    meta = metadata %>%
      filter(perimetre == perim)
    
    data2 = meta %>%
      left_join(data2)
    
    
    data2 = data2 %>%
      select(name, time, value)
    
    dataF_ <- data2
    
  }else {
    
    # link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/syntheseGFOU"
    
    link_data = "C:/Users/edgar/Desktop/chiffres/data/syntheseGFOU"    
    
    list_file = list.files(link_data)
    
    list_path_file = file.path(link_data, list_file)
    
    test = file.info(list_path_file)
    
    result = test %>% 
      filter(mtime == max(mtime)) 
    
    resultf = rownames(result)
    
    load(resultf)
    
    data1 = as.data.frame(table_noteRch)
    
    data1$id = row.names(data1)
    
    dataF = as.data.frame(t(data1))
    
    # names(dataF) <- data2$name
    
    # dataF = dataF[-1,]
    
    trimest <- function(x) {
      x = sub("T", "Q", x)
      y = as.Date(as.yearqtr(x))
      return (y) 
    }
    
    trimestF <- function(L) {
      n = length(L) 
      Lf = c(trimest(L[1]))
      for (i in seq(2,n)) {Lf = c(Lf, trimest(L[i]))} 
      return(Lf)
    }
    
    dataF$time = trimestF(as.list(row.names(dataF)))
    
    meta = metadata %>%
      filter(perimetre == perim)
    
    date = today()
    
    date2 = date %m-% years(2)
    
    datef = as.Date(as.yearqtr(date2))
    
    dataF_ = dataF %>% 
      pivot_longer(-time, names_to ="id", values_to = "value") %>% 
      drop_na() %>% 
      left_join(meta, by = "id") %>%
      drop_na() %>%
      arrange(name) %>%
      select(name, time, value) %>%
      filter(time >= datef)
    
    
    drop <- c("perimetre")
    dataF_ = dataF_[,!(names(dataF_) %in% drop)]
    
  }
  
  
  return(dataF_)
}

rhandsondata <- function (data,data2) { 
  
  meta = metadata %>%
    select(name,Operations) %>%
    distinct()
  
  data = data %>%
    left_join(meta)
  
  data = data %>%
    group_by(name) %>%
    mutate(Special = get(Operations)(value))
  
  data = data %>%
    select(name, time, Special) %>%
    distinct() %>%
    pivot_wider(names_from = time, values_from = Special)

# data[1,-1]

n = nrow(data2[,1])

data2$chart = sapply(1:n, function(x) jsonlite::toJSON(list(values=rnorm(10))))

for (i in c(1:n)) {
  data_chart = data[i, -1]
  data_chart = unlist(data_chart)
  data_chart = data_chart[!is.na(data_chart)]
  data2$chart[i] <-
    jsonlite::toJSON(list(
      values = as.numeric(data_chart),
      options = list(type = "bar"),
      na = "null"
    ))
}

return(data2)
}

listeapp <- function(y) {if (y == "International") {L = c('AL','BENL','CN',
                                                          'DM','EM','ES','FI','FItaux',
                                                          'INV','IT','JP','OIL',
                                                          'SYN','UK','US','ZE')}
  else {L = c('COMEXT','CONSO',
              'EMPL','PIBFR','PROD',
              'REV')}
  return(L)}




