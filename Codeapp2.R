
dfES = readRDS(file="C:/Users/VC8GHA/Desktop/NewData/dataES.Rda")


date = today()

date2 = date %m-% years(2)

datef = as.Date(as.yearqtr(date2))

dfES2 = dfES %>%
  filter(time >= datef)

dfES2 = df %>% 
  left_join(dfES2)

dfES2 = dfES2 %>% 
  select(name,time, value)

dfES2 <- dfES2[-1,]


dfES2 = dfES2 %>%
  distinct() %>%
  pivot_wider(., names_from = time, values_from = value)











