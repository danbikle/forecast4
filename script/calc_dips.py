"""
calc_dips.py

This script should transform a series of GSPC prices into a series of dips.

Demo:
cd ~/forecast4/script/
~/anaconda3/bin/python calc_dips.py
"""

import pandas as pd

prices_df = pd.read_csv('prices/^GSPC.csv')[['Date','Close']]
prices_df.columns = ['cdate','cp']
duration_i = 10 # Days that I look back
# To look back, I shift prices in the positive direction:
lag_sr         = prices_df.cp.shift(duration_i)
pctlag_sr      = (100 * (prices_df.cp - lag_sr) / lag_sr).fillna(0)
dip_ornot_b_sr = pctlag_sr < -5.0 # s.b. a parameter not hardcoded.

prices_df['lagging_price'] = lag_sr
prices_df['pctlag']        = pctlag_sr
prices_df['dip_ornot']     = dip_ornot_b_sr

# I should write dips to CSV file to be used later:
prices_df.to_csv('csv2/dips.csv', float_format='%4.2f', index=False)

'under construction'
