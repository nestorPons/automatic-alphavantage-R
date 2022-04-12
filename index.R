library(httr)
library(jsonlite)

apykey = "N5X7I4BYX44WJJBI"

#simbolos que se desea descargar
symbols <- c('IBM', 'BBVA')
#1min, 5min, 15min, 30min,60min
intervals = c('5min', '15min')

for(symbol in symbols){
  for(interval in intervals){
    destfile <- sprintf('./%s%s.csv',symbol,interval)
    url <- sprintf("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=%s&interval=%s&apikey=%s&datatype=csv",symbol, interval, apykey)
    download.file(url, destfile)
    print(url)
  }
}