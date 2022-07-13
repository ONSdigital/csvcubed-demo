import pandas as pd 

df = pd.read_csv("raw.csv")

df = pd.melt(df, id_vars=['period-start'])
df.rename(columns={'period-start': 'Month',
                'variable': 'Geography',
                'value': 'Value'
                }, inplace=True)

df['Month'] = pd.to_datetime(df['Month'], dayfirst=True).dt.strftime('%Y-%m')

df.to_csv("monthly-avg-max-temp.csv", index=False)
