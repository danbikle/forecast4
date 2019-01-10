#!/bin/bash

# getfred_tfaa.bash

# This script should get FRED TFAABSHNO which is related to
# "US Household asset movement".

# Ref:
# https://www.google.com/search?q=FRED+TFAABSHNO+data
# https://fred.stlouisfed.org/series/TFAABSHNO

cd ~/forecast4/script/csv2/

echo I should call curl now to get fred_tfaabshno.csv

# This should work but it fails:

/usr/bin/curl -L https://fred.stlouisfed.org/graph/fredgraph.csv?bgcolor=%23e1e9f0&chart_type=line&drp=0&fo=open%20sans&graph_bgcolor=%23ffffff&height=450&mode=fred&recession_bars=on&txtcolor=%23444444&ts=12&tts=12&width=1168&nt=0&thu=0&trc=0&show_legend=yes&show_axis_titles=yes&show_tooltip=yes&id=TFAABSHNO&scale=left&cosd=1945-10-01&coed=2018-07-01&line_color=%234572a7&link_values=false&line_style=solid&mark_type=none&mw=3&lw=2&ost=-99999&oet=99999&mma=0&fml=a&fq=Quarterly%2C%20End%20of%20Period&fam=avg&fgst=lin&fgsnd=2009-06-01&line_index=1&transformation=lin&vintage_date=2019-01-10&revision_date=2019-01-10&nd=1945-10-01 > fred_tfaabshno.csv

echo I should now have a new csv file:

ls -la ~/forecast4/script/csv2/fred_tfaabshno.csv

exit
