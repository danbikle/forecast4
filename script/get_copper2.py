"""
get_copper2.py

Demo:
cd ~/forecast4/
. script/invusr.bash
python script/get_copper2.py
"""

import requests
import time

# They should think I'm a browser:
user_agent_s = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36'
headers_d    = {'User-Agent': user_agent_s}
# I should visit this URL:
url_s = 'https://www.investing.com/commodities/copper'

with requests.Session() as ssn:
  ssn_r  = ssn.get(url_s,headers=headers_d)
  html_s  = ssn_r.content.decode("utf-8")
  htmlf_s = 'html/copper.html'
  with open(htmlf_s, 'w') as fh:
    fh.write(html_s)
    print('I should now see: ', htmlf_s)
  time.sleep(3) # I should act human

'bye'
