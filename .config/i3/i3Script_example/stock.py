#!/usr/bin/python

import urllib2
import json

def read_stock(symbol):
  u = urllib2.urlopen("https://api.iextrading.com/1.0/stock/"+symbol+"/quote")
  query = u.read()
  a = json.loads(query)
  return(a['symbol']+": "+str(a['iexRealtimePrice'])+"$")

def currency(currency_src,currency_dst = "usd"):
  u = urllib2.urlopen("https://api.cryptonator.com/api/ticker/"+currency_src)
  query = u.read()
  a = json.loads(query)
  return(a['ticker']['base']+"/"+a['ticker']['target']+": "+("%.6f" % float(a['ticker']['price'])))
  

#Stocks can be provided with just the symbol (AAPL) or exchange:symbol (NASDAQ:AAPL)

stocks={"RHT"}
currencies={"USD-EUR"}

line = []
for i in stocks:
  line = line + [read_stock(i)]

#for i in currencies:
# line = line  + [currency(i)]

print " \n".join(line)
