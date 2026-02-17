import pandas as pd
file_path = 'data/raw/yellow_tripdata_2025-03.parquet'

df = pd.read_parquet(file_path)

print(df.head())
print(df.columns)
print(df.info())
print(df.isnull().sum())
