"""
getfred_t10yr3m.py

This script should use requests package to get fred_t10yr3m.csv

Ref:
https://fred.stlouisfed.org/series/

Demo:
cd ~/forecast4/script/
~/anaconda3/bin/python getfred_t10yr3m.py
"""

import datetime
import requests
import time

# I should get today's date:
today_s = datetime.datetime.now().strftime("%Y-%m-%d")

# I should get this URL:
csv_s ='https://fred.stlouisfed.org/graph/fredgraph.csv?bgcolor=%23e1e9f0&chart_type=line&drp=0&fo=open%20sans&graph_bgcolor=%23ffffff&height=450&mode=fred&recession_bars=on&txtcolor=%23444444&ts=12&tts=12&width=1168&nt=0&thu=0&trc=0&show_legend=yes&show_axis_titles=yes&show_tooltip=yes&id=T10Y3M&scale=left&cosd=1982-01-04&coed=2019-01-14&line_color=%234572a7&link_values=false&line_style=solid&mark_type=none&mw=3&lw=2&ost=-99999&oet=99999&mma=0&fml=a&fq=Daily&fam=avg&fgst=lin&fgsnd=2009-06-01&line_index=1&transformation=lin&vintage_date='+today_s+'&revision_date='+today_s+'&nd=1982-01-04'

# Fred should think I'm a browser:
user_agent_s = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36'
headers_d    = {'User-Agent': user_agent_s}
# I should visit this URL:
# https://fred.stlouisfed.org/series/T10YR3M
url_s = 'https://fred.stlouisfed.org/series/T10YR3M'

with requests.Session() as ssn:
  fred_r  = ssn.get(url_s,headers=headers_d)
  html_s  = fred_r.content.decode("utf-8")
  htmlf_s = 'html/fred_t10yr3m.html'
  with open(htmlf_s, 'w') as fh:
    fh.write(html_s)
    print('I should now see: ', htmlf_s)
  time.sleep(3) # I should act human
  csv_r  = ssn.get(csv_s,headers=headers_d)
  csv_s  = csv_r.content.decode("utf-8")
  csvf_s = 'csv2/fred_t10yr3m.csv'
  with open( csvf_s,'w') as fh:
    fh.write(csv_s)
    print('I should now see: ', csvf_s)
        
'bye'
