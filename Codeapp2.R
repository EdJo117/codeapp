
library(lubridate)
library(zoo)
library(tidyverse)

# source(file="C:/Users/VC8GHA/Desktop/CodeApp/data/metadata.R")

source(file="C:/Users/edgar/Desktop/CodeApp/metadata.R")

linkf <- function(perim) {
  if (perim %in% c("AL","BENL","CN","DM","EM","ES","FI","FItaux","INV","IT","JP","OIL","SYN","UK","US","ZE")){    #link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/Rdatainternationaux"
  
  link_data = "C:/Users/edgar/Desktop/chiffres/data/Rdata internationaux" 
  }
else {#link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/syntheseGFOU"

 link_data = "C:/Users/edgar/Desktop/chiffres/data/syntheseGFOU" 
}
  return(link_data)}


loaddata <- function(perim,date) {
  if (perim %in% c("AL","BENL","CN","DM","EM","ES","FI","FItaux","INV","IT","JP","OIL","SYN","UK","US","ZE")){
    
    #link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/Rdatainternationaux"
    
    link_data = "C:/Users/edgar/Desktop/chiffres/data/Rdata internationaux"  
    
    list_file = list.files(link_data)
    
    list_file_al = list_file[str_detect(list_file, paste0("^", perim))]
    
    list_path_file_al = file.path(link_data, list_file_al)
    
    test = file.info(list_path_file_al)
    
    if (date == today()) {result = test %>%
      filter(mtime == max(mtime))}
    else {result = test %>%
      filter(mtime == date)}
    
    if (nrow(result) == 0) {dataF_ <- data.frame(name = NA)}
    

    else {
    
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
    
    dataF_ <- data2}
    
  }else {
    
    #link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/syntheseGFOU"
    
     link_data = "C:/Users/edgar/Desktop/chiffres/data/syntheseGFOU"    
    
    list_file = list.files(link_data)
    
    list_path_file = file.path(link_data, list_file)
    
    test = file.info(list_path_file)
    
    if (date == today()) {result = test %>%
      filter(mtime == max(mtime))}
    else {result = test %>%
      filter(mtime == date)}
    
    if (nrow(result) == 0) {dataF_ <- data.frame(name = NA)}
    
    
    else {
      
    resultf = rownames(result)
    
    load(resultf)
    
    data1 = as.data.frame(table_noteRch)
    
    data1$id = row.names(data1)
    
    dataF = as.data.frame(t(data1))
    
    
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
    
  }}
  
  
  return(dataF_)
}

 
annee <- function (al) {
  
  
  al$time = format(al$time,"%Y")
  
  datest = data.frame(name = NA, time = NA, valeur = NA)
  
  L = as.vector((al %>%
                   select(name) %>%
                   distinct()))
  Lname <- c()
  for (i in 1:nrow(L)) {
    Lname[[i]] <- L[i,]
  }
  Lname = as.list(Lname)
  
  
  L0 = as.vector((al %>%
                    select(time) %>%
                    distinct()))
  Ltime <- c()
  for (i in 1:nrow(L0)) {
    Ltime[[i]] <- L0[i,]
  }
  Ltime = as.list(Ltime)
  
  Ltime = Ltime[!is.na(Ltime)]
  
  datest = data.frame(name = NA, time = NA, valeur = NA)
  for (i in Lname) { if (op(i) == "growth") {for (j in Ltime) {datest[nrow(datest)+1,] = c(i,j,sum((al %>% 
                                                                                                      subset(al$name == i & al$time == j))$value))}}
    else {for (j in  Ltime) {datest[nrow(datest)+1,] = c(i,j,mean((al %>% 
                                                                     subset(al$name == i & al$time == j))$value))}}}
  
  datest = datest %>% pivot_wider(names_from = time, values_from = valeur)
  
  datest = datest[-1,]
  datest = datest[,-2]
  return(datest)}


rhandsondata2 <- function (data,data2) { 
  
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
  
  data2 <- data2[, c("name", "chart",colnames(data2)[2:length(colnames(data2))-2])]
  
  return(data2)
}


rhandsondata1 <- function(data,i) {  
  
  meta = metadata %>%
    select(name,Operations) %>%
    distinct()
  
  data = data %>%
    left_join(meta)
  
  data = data %>%
    group_by(name) %>%
    mutate(Variations_trimestrielles = get(Operations)(value))
  
  data$Variations_trimestrielles = sapply(data$Variations_trimestrielles, function(x) signif(x, digits = i))
  
  
  data = data %>%
    select(name, time, Variations_trimestrielles) %>%
    distinct() %>%
    pivot_wider(names_from = time, values_from = Variations_trimestrielles)
  
  return(data)}


listeapp <- function(y) {if (y == "International") {L = c('AL','BENL','CN',
                                                          'DM','EM','ES','FI','FItaux',
                                                          'INV','IT','JP','OIL',
                                                          'SYN','UK','US','ZE')}
  else {L = c('COMEXT','CONSO',
              'EMPL','PIBFR','PROD',
              'REV')}
  return(L)}


comparedata <- function(dt1,dt2) {
  x = nrow(dt1)
  y = ncol(dt1)
  ltest <- c(NA)
  for (i in c(1:(x-1)))
  {ltest <- append(ltest, c(NA))}
  dt3 = data.frame(ltest)
  for (j in c(1:(y-1)))
  {dt3[,length(dt3[1,])+1] = ltest}
  colnames(dt3) = colnames(dt1)
  for (i in c(1:x)) {
    for (j in c(1:y)) {
      
      if (is.na(dt1[i,j]) && is.na(dt2[i,j])) {dt3[i,j] = NA}
      else if (is.na(dt1[i,j])) {dt3[i,j] = dt2[i,j]}
      else if (is.na(dt2[i,j])) {dt3[i,j] = dt1[i,j]}
      else if (dt1[i,j] != dt2[i,j]) {
        dt3[i,j] = paste(dt1[i,j] ," || ", dt2[i,j])
        }
      else {dt3[i,j] = dt1[i,j]
        }
       
    }
  }
  return(dt3)}

comparedataf <- function(dt1,dt2) {

  y1 = ncol(dt1)
  y2 = ncol(dt2)
  
  if (y1 > y2) {dtf = cbind(comparedata(dt2,dt1[,1:y2]),dt1[,(y2+1):y1])}
  else if (y2 > y1) {dtf = cbind(comparedata(dt1,dt2[,1:y1]),dt2[,(y1+1):y2])}
  else {dtf = comparedata(dt1,dt2)}

  return(dtf)}



fcomp <- function(perim)  {if (perim %in% c("AL","BENL","CN","DM","EM","ES","FI","FItaux","INV","IT","JP","OIL","SYN","UK","US","ZE")){
  
  #link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/Rdatainternationaux"
  
  link_data = "C:/Users/edgar/Desktop/chiffres/data/Rdata internationaux"
  
  list_file = list.files(link_data)
  
  list_file_al = list_file[str_detect(list_file, paste0("^", perim))]
}
  
  else {#link_data = "C:/Users/VC8GHA/Desktop/CodeApp/data/syntheseGFOU"
  
  link_data = "C:/Users/edgar/Desktop/chiffres/data/syntheseGFOU"    
  
  list_file_al = list.files(link_data)
  
  }
  
  return(c("Pas de comparaison",list_file_al)) }



