link_data = "C:/Users/edgar/Desktop/chiffres/data/Rdata internationaux"
file_name = "FItaux2020-04-28_22h13.Rdata"
link_file = file.path(link_data,file_name)
link_file
load(link_file)


ts = time(series[["fitaux.de_gov3y"]])
data = window(ts, start = start(ts), frequency = frequency(ts))
as.Date(data)

df = data.frame(time = as.Date(data),
                value = as.numeric(series[["fitaux.de_gov3y"]]))

df






