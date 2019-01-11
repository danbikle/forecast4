"""
getfred_tfaa.py

This script should use requests package to get fred_tfaabshno.csv
from https://fred.stlouisfed.org/graph

Demo:
~/anaconda3/bin/python getfred_tfaa.py
"""

import requests

# Fred should think I'm a browser:
user_agent_s = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36'
headers_d    = {'User-Agent': user_agent_s}
# I should visit this URL:
# https://fred.stlouisfed.org/series/TFAABSHNO
url_s = 'https://fred.stlouisfed.org/series/TFAABSHNO'
with requests.Session() as ssn:
  fred_r = ssn.get(url_s,headers=headers_d)
  html_s = fred_r.content.decode("utf-8")
  with open('html/fred_tfaa.html','w') as fh:
    fh.write(html_s)

'under development'
